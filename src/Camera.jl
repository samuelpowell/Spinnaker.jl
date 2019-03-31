# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# Camera.jl: interface to Camera objects
export serial, model, vendor, isrunning, start!, stop!, getimage, getimage!, saveimage,
       triggermode, triggermode!,
       triggersource, triggersource!,
       trigger!,
       exposure!,
       framerate!,
       gain!,
       adcbits, adcbits!,
       gammaenable!,
       pixelformat, pixelformat!,
       acqusitionmode, acquisitionmode!,
       sensordims, imagedims, imagedims!, offsetdims, offsetdims!,
       buffercount, buffercount!, buffermode, buffermode!, bufferunderrun, bufferfailed

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
    try
      stop!(cam)
    catch e
    end
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
include(joinpath("camera", "stream.jl"))

#
# Device metadata
#

"""
  serial(::Camera) -> String

  Return camera serial number (string)
"""
serial(cam::Camera) = GetStringNode(cam, "DeviceSerialNumber", nodemap=CameraTLDeviceNodeMap())

"""
  vendor(::Camera) -> String

  Return vendor name of specified camera.
"""
vendor(cam::Camera) = GetStringNode(cam, "DeviceVendorName", nodemap=CameraTLDeviceNodeMap())

"""
  model(::Camera) -> String

  Return model name of specified camera.
"""
model(cam::Camera) = GetStringNode(cam, "DeviceModelName", nodemap=CameraTLDeviceNodeMap())

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
getimage(cam::Camera) = getimage!(cam, SpinImage())


"""
  getimage!(::Camera, ::Image) -> Image

  Copy the next image from the specified camera, blocking until available, overwriting existing.
"""
function getimage!(cam::Camera, image::SpinImage)

  # Get image handle and check it's complete
  himage_ref = Ref(spinImage(C_NULL))
  spinCameraGetNextImage(cam, himage_ref);
  @assert _isimagecomplete(himage_ref)

  # Create output image, copy and release buffer
  spinImageDeepCopy(himage_ref[], image)
  spinImageRelease(himage_ref[])

  return image

end
                     
function _pullim(cam::Camera)

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
    spinImageGetTimeStamp(himage_ref[], timestamp)
    return himage_ref, Int(width[]), Int(height[]), id[], timestamp[]

end

"""
  getimage(::Camera, ::Type{T}; normalize=false) -> CameraImage

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

  himage_ref, width, height, id, timestamp = _pullim(cam)
  imdat = Array{T,2}(undef, (width,height))
  camim = CameraImage(imdat, id, timestamp)
  _copyimage!(himage_ref[], width, height, camim, normalize)
  spinImageRelease(himage_ref[])
  return camim

end


"""
  getimage!(::Camera, ::CameraImage{T,2}; normalize=false) 

  Copy the next iamge from the specified camera, converting to the format of, and overwriting the 
  provided CamerImage.
  
  If `normalize == false`, the input data from the camera is interpreted as a number in the range of
  the underlying type, e.g., for a camera operating in Mono8 pixel format, a call
  `getimage!(cam, Float64, normalize=false)` will return an array of dobule precision numbers in
  the range [0, 255]. `If normalize == true` the input data is interpreted as an associated fixed point
  format, and thus the array will be in the range [0,1].

  To return images compatible with Images.jl, one can request a Gray value, e.g.,
  `getimage!(cam, Gray{N0f8}, normalize=true)`. 
"""
function getimage!(cam::Camera, image::CameraImage{T,2}; normalize=true) where T
  
  himage_ref, width, height, id, timestamp = _pullim(cam)
  camim = CameraImage(image.data, id, timestamp)
  _copyimage!(himage_ref[], width, height, camim, normalize)
  spinImageRelease(himage_ref[])
  return camim

end


"""
  getimage!(::Camera, ::AbstractArray{T,2}; normalize=false)

  Copy the next iamge from the specified camera, converting to the format of, and overwriting the 
  provided CamerImage.
  
  If `normalize == false`, the input data from the camera is interpreted as a number in the range of
  the underlying type, e.g., for a camera operating in Mono8 pixel format, a call
  `getimage!(cam, Float64, normalize=false)` will return an array of dobule precision numbers in
  the range [0, 255]. `If normalize == true` the input data is interpreted as an associated fixed point
  format, and thus the array will be in the range [0,1].

  To return images compatible with Images.jl, one can request a Gray value, e.g.,
  `getimage!(cam, Gray{N0f8}, normalize=true)`. 
"""
function getimage!(cam::Camera, image::Array{T,2}; normalize=true) where T
  
  himage_ref, width, height, id, timestamp = _pullim(cam)
  _copyimage!(himage_ref[], width, height, image, normalize)
  spinImageRelease(himage_ref[])
  return image

end

"""
    saveimage()::Camera, fn::AbstractString, ::spinImageFileFormat)

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
