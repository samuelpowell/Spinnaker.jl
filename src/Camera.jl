# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# Camera.jl: interface to Camera objects
export serial, model, vendor, isrunning, start!, stop!, getimage, saveimage,
       triggermode, triggermode!,
       triggersource, triggersource!,
       trigger!,
       exposure!,
       gain!,
       adcbits, adcbits!,
       gammaenable!,
       pixelformat, pixelformat!,
       acqusitionmode, acquisitionmode!

"""
 Spinnaker SDK Camera object

 Create a camera object by referencing a CameraList, e.g.,
 `cl = CameraList()
  cam = cl[0]`

  The camera is initialised when created and deinitialised when garbage collected.
"""
mutable struct Camera
  handle::spinCamera

  function Camera(handle)
    @assert spinsys.handle != C_NULL
    @assert handle != C_NULL
    spinCameraDeInit(handle)
    spinCameraInit(handle)
    cam = new(handle)
    finalizer(_release!, cam)
    return cam
  end
end

unsafe_convert(::Type{spinCamera}, cam::Camera) = cam.handle
unsafe_convert(::Type{Ptr{spinCamera}}, cam::Camera) = pointer_from_objref(cam)

function _reinit(cam::Camera)
  spinCameraDeInit(cam)
  spinCameraInit(cam)
  return cam
end

# Release handle to system
function _release!(cam::Camera)
  if cam.handle != C_NULL
    stop!(cam)
    spinCameraDeInit(cam)
    spinCameraRelease(cam)
    cam.handle = C_NULL
  end
  return nothing
end

# Include subfiles
include(joinpath("camera", "acquisition.jl"))
include(joinpath("camera", "analog.jl"))
include(joinpath("camera", "format.jl"))

#
# Device metadata
#

"""
  serial(::Camera) -> String

  Return camera serial number (string)
"""
serial(cam::Camera) = _getTLNodeString(cam, "DeviceSerialNumber")

"""
  vendor(::Camera) -> String

  Return vendor name of specified camera.
"""
vendor(cam::Camera) = _getTLNodeString(cam, "DeviceVendorName")

"""
  model(::Camera) -> String

  Return model name of specified camera.
"""
model(cam::Camera) = _getTLNodeString(cam, "DeviceModelName")

"""
  show(::IO, ::Camera)

  Write details of camera to supplied IO.
"""
function show(io::IO, cam::Camera)
  vendorname = vendor(cam)
  modelname = model(cam)
  serialno = serial(cam)
  write(io, "$vendorname $modelname ($serialno)")
end

#
# Image acquistion
#

"""
  acquisitionmode(::Camera) -> String

  Return camera acquistion mode.
"""
acquisitionmode(cam::Camera) = IEnumNode(cam, "AcquisitionMode")

"""
  acquisitionmode!(::Camera, ::AbstractString) -> String

  Set camera acquistion mode, returns set mode.
"""
acquisitionmode!(cam::Camera, mode) = IEnumNode!(cam, "AcquisitionMode", mode)


function _isimagecomplete(himage_ref)
  isIncomplete = Ref(bool8_t(false))
  spinImageIsIncomplete(himage_ref[], isIncomplete);
  if isIncomplete == true
    imageStatus = Ref(spinImageStatus(IMAGE_NO_ERROR))
    spinImageGetStatus(himage_ref[], imageStatus)
    spinImageRelease(himage_ref[])
    @warn "Image incomplete with error $(imageStatus)"
    return false
  else
    return true
  end
end

"""
  getimage(::Camera) -> Image

  Copy the next image from the specified camera, blocking until available.
"""
getimage(cam::Camera) = getimage(cam, Image())


"""
  getimage!(::Camera, ::Image) -> Image

  Copy the next image from the specified camera, blocking until available, overwriting existing.
"""
function getimage!(cam::Camera, image::Image)

  # Get image handle and check it's complete
  himage_ref = Ref(spinImage(C_NULL))
  spinCameraGetNextImage(cam, himage_ref);
  @assert _isimagecomplete(himage_ref)

  # Create output image, copy and release buffer
  spinImageDeepCopy(himage_ref[], image)
  spinImageRelease(himage_ref[])

  return image

end


const raw_fmtmap = Dict(PixelFormat_Mono8  => UInt8,
                        PixelFormat_Mono10 => UInt16,
                        PixelFormat_Mono12 => UInt16,
                        PixelFormat_Mono14 => UInt16,
                        PixelFormat_Mono16 => UInt16)

const nrm_fmtmap =  Dict(PixelFormat_Mono8  => N0f8,
                         PixelFormat_Mono10 => N6f10,
                         PixelFormat_Mono12 => N4f12,
                         PixelFormat_Mono14 => N2f14,
                         PixelFormat_Mono16 => N0f16)


                     
function _getim(cam::Camera)


    # Get image handle and check it's complete
    himage_ref = Ref(spinImage(C_NULL))
    spinCameraGetNextImage(cam, himage_ref);
    if !_isimagecomplete(himage_ref)
      spinImageRelease(himage_ref[])
      throw(ErrorException("Image not complete"))
    end

    # Get image dimensions, ID and timestamp
    width = Ref(Csize_t(0))
    height = Ref(Csize_t(0))
    id = Ref(UInt64(0))
    timestamp = Ref(UInt64(0))
    spinImageGetWidth(himage_ref[], width)
    spinImageGetHeight(himage_ref[], height)
    spinImageGetID(himage_ref[], id)
    spinImageGetTimeStamp(himage_ref[], id)
    return himage_ref, Int(width[]), Int(height[]), id[], timestamp[]

end


function _copyimage!(himage_ref, width, height, image::AbstractArray{T,2}, normalize) where T
 
  @assert prod(size(image)) == width*height
  hpixfmt = Ref(spinPixelFormatEnums(0))
  spinImageGetPixelFormat(himage_ref[], hpixfmt)   
  
  # Map the pixel format to a native integer format. For un-normalized output this is 
  # just an unsigned integer of the correct size. For a normalized output a number type
  # from FixedPointNumbers is used to maintain normalisation.
  Ti = UInt8
  if(normalize)
    try
      Ti = nrm_fmtmap[hpixfmt[]]
    catch e
      spinImageRelease(himage_ref[])
      throw(e)
    end
  else
    try
      Ti = raw_fmtmap[hpixfmt[]]
    catch e
      spinImageRelease(himage_ref[])
      throw(e)
    end
  end

  # Make sure this is a good idea
  @assert (sizeof(Ti)*width*height) <= _buffersize(himage_ref[])

  # Wrap the image data in an array of the correct pointer type
  rawptr = Ref(Ptr{Cvoid}(0))
  spinImageGetData(himage_ref[], rawptr)
  data = unsafe_wrap(Array,  Ptr{Ti}(rawptr), (width, height));
  
  # Convert and copy data from buffer
  image .= T.(data)
  return image

end


"""
  getimage(::Camera, ::Type{T}; normalize=false) -> Array{T,2}, timestamp, id

  Copy the next iamge from the specified camera, converting the image data to the specified array
  format, blocking until available.

  If `normalize == false`, the input data from the camera is interpreted as a number in the range of
  the underlying type, e.g., for a camera operating in Mono8 pixel format, a call
  `getimage!(cam, Float64, normalize=false)` will return an array of dobule precision numbers in
  the range [0, 255]. `If normalize == true` the input data is interpreted as an associated fixed point
  format, and thus the array will be in the range [0,1].

  To return images compatible with Images.jl, one can request a Gray value, e.g.,
  `getimage!(cam, Gray{N0f8}, normalize=true)`. 

  Function also returns image ID and timestamp metadata.
"""
function getimage(cam::Camera, ::Type{T}; normalize=true) where T

  himage_ref, width, height, id, timestamp = _getim(cam)
  image = Array{T,2}(undef, (width,height))
  _copyimage!(himage_ref, width, height, image, normalize)
  spinImageRelease(himage_ref[])
  return image, timestamp, id

end


"""
  getimage!(::Camera, ::Array{T,2}; normalize=false) -> Array{T,2}, timestamp, id

  Copy the next iamge from the specified camera, converting to the format of, and overwriting the 
  provided array.
  
  If `normalize == false`, the input data from the camera is interpreted as a number in the range of
  the underlying type, e.g., for a camera operating in Mono8 pixel format, a call
  `getimage!(cam, Float64, normalize=false)` will return an array of dobule precision numbers in
  the range [0, 255]. `If normalize == true` the input data is interpreted as an associated fixed point
  format, and thus the array will be in the range [0,1].

  To return images compatible with Images.jl, one can request a Gray value, e.g.,
  `getimage!(cam, Gray{N0f8}, normalize=true)`. 
"""
function getimage!(cam::Camera, image::AbstractArray{T,2}; normalize=true) where T
  
  himage_ref, width, height, id, timestamp = _getim(cam)
  _copyimage!(himage_ref, width, height, image, normalize)
  spinImageRelease(himage_ref[])
  return image, timestamp, id

end



"""
    saveimage(fn::AbstractString, ::Image, ::spinImageFileFormat)

    Save the next image from the specified camera to file `fn`, blocking until
    available.
"""
function saveimage(cam::Camera, fn::AbstractString, fmt::spinImageFileFormat)

    # Get image handle and check it's complete
    himage_ref = Ref(spinImage(C_NULL))
    spinCameraGetNextImage(cam, himage_ref);
    @assert _isimagecomplete(himage_ref)
    spinImageSave(himage_ref[], fn, fmt)
    spinImageRelease(himage_ref[])

end

"""
  getbufferimage(::Camera) -> Image

  Get the next image from the specified camera, blocking until available. The
  returned image is held in the image buffer, and must be released to enable
  continuing capture by calling `release(::Image)`.
"""
function getbufferimage(cam::Camera)
  @error "Not implemented"
end
