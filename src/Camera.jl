# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# Camera.jl: interface to Camera objects
export serial, model, vendor, isrunning, start!, stop!, getimage, getimage!, saveimage,
       triggermode, triggermode!,
       triggersource, triggersource!,
       trigger!,
       exposure, exposure!, exposure_limits,
       framerate, framerate!, framerate_limits,
       gain, gain!, gain_limits,
       adcbits, adcbits!,
       gammaenable!,
       pixelformat, pixelformat!,
       acqusitionmode, acquisitionmode!,
       sensordims, imagedims, imagedims!, imagedims_limits, offsetdims, offsetdims!, offsetdims_limits,
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
    # Activate chunk mode
    set!(SpinBooleanNode(cam, "ChunkModeActive"), true)
    for chunkid in ["FrameID", "ExposureTime", "Timestamp"]
      try
        set!(SpinEnumNode(cam, "ChunkSelector"), chunkid)
        set!(SpinBooleanNode(cam, "ChunkEnable"), true)
      catch e
        @warn "Unable to enable $chunkid chunk, image metadata may be incorrect"
      end
    end
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
serial(cam::Camera) = get(SpinStringNode(cam, "DeviceSerialNumber", CameraTLDeviceNodeMap()))

"""
  vendor(::Camera) -> String

  Return vendor name of specified camera.
"""
vendor(cam::Camera) = get(SpinStringNode(cam, "DeviceVendorName", CameraTLDeviceNodeMap()))

"""
  model(::Camera) -> String

  Return model name of specified camera.
"""
model(cam::Camera) = get(SpinStringNode(cam, "DeviceModelName", CameraTLDeviceNodeMap()))

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
acquisitionmode(cam::Camera) = get(SpinEnumNode(cam, "AcquisitionMode"))

"""
  acquisitionmode!(::Camera, ::AbstractString) -> String

  Set camera acquistion mode, returns set mode.
"""
acquisitionmode!(cam::Camera, mode) = set!(SpinEnumNode(cam, "AcquisitionMode"), mode)


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

#
# Image retrieval -> SpinImage
#

"""
  getimage(::Camer; release=true) -> Image

  Copy the next image from the specified camera, blocking until available. If release
  is false, the image buffer is not released.
"""
getimage(cam::Camera; release=true) = getimage!(cam, SpinImage(), release=release)


"""
  getimage!(::Camera, ::SpinImage; release=true) -> Image

  Copy the next image from the specified camera, blocking until available, overwriting existing.
  If releaseis false, the image buffer is not released.
"""
function getimage!(cam::Camera, image::SpinImage; release=true)

  # Get image handle and check it's complete
  himage_ref = Ref(spinImage(C_NULL))
  spinCameraGetNextImage(cam, himage_ref);
  @assert _isimagecomplete(himage_ref)

  # Create output image, copy and release buffer
  spinImageDeepCopy(himage_ref[], image)
  if release
    spinImageRelease(himage_ref[])
  end

  return image

end


#
# Image retrieval -> CameraImage
#

"""
  getimage(::Camera, ::Type{T}; normalize=true; release=true) -> CameraImage

  Copy the next image from the specified camera, converting the image data to the specified array
  format, blocking until available. If release is false, the image buffer is not released.

  If `normalize == false`, the input data from the camera is interpreted as a number in the range of
  the underlying type, e.g., for a camera operating in Mono8 pixel format, a call
  `getimage!(cam, Float64, normalize=false)` will return an array of dobule precision numbers in
  the range [0, 255]. `If normalize == true` the input data is interpreted as an associated fixed point
  format, and thus the array will be in the range [0,1].

  To return images compatible with Images.jl, one can request a Gray value, e.g.,
  `getimage!(cam, Gray{N0f8}, normalize=true)`. 

  Function also returns image ID and timestamp metadata.
"""
function getimage(cam::Camera, ::Type{T}; normalize=true, release=true) where T

  himage_ref, width, height, id, timestamp, exposure = _pullim(cam)
  imdat = Array{T,2}(undef, (width,height))
  camim = CameraImage(imdat, id, timestamp, exposure)
  _copyimage!(himage_ref[], width, height, camim, normalize)
  if release
    spinImageRelease(himage_ref[])
  end
  return camim

end


"""
  getimage!(::Camera, ::CameraImage{T,2}; normalize=false; release=true)

  Copy the next iamge from the specified camera, converting to the format of, and overwriting the 
  provided CameraImage. If release is false, the image buffer is not released.
  
  If `normalize == false`, the input data from the camera is interpreted as a number in the range of
  the underlying type, e.g., for a camera operating in Mono8 pixel format, a call
  `getimage!(cam, Float64, normalize=false)` will return an array of dobule precision numbers in
  the range [0, 255]. `If normalize == true` the input data is interpreted as an associated fixed point
  format, and thus the array will be in the range [0,1].

  To return images compatible with Images.jl, one can request a Gray value, e.g.,
  `getimage!(cam, Gray{N0f8}, normalize=true)`. 
"""
function getimage!(cam::Camera, image::CameraImage{T,2}; normalize=true, release=true) where T
  
  himage_ref, width, height, id, timestamp, exposure = _pullim(cam)
  camim = CameraImage(image.data, id, timestamp, exposure)
  _copyimage!(himage_ref[], width, height, camim, normalize)
  if release
    spinImageRelease(himage_ref[])
  end
  return camim

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
  id = Ref(Int64(0))
  timestamp = Ref(Int64(0))
  exposure = Ref(Float64(0))
  spinImageGetWidth(himage_ref[], width)
  spinImageGetHeight(himage_ref[], height)
  spinImageChunkDataGetIntValue(himage_ref[], "ChunkFrameID", id);
  spinImageChunkDataGetFloatValue(himage_ref[], "ChunkExposureTime", exposure);
  spinImageChunkDataGetIntValue(himage_ref[], "ChunkTimestamp", timestamp)
  return himage_ref, Int(width[]), Int(height[]), id[], timestamp[], exposure[]

end


#
# Image retrieval -> Array
#

"""
  getimage!(::Camera, ::AbstractArray{T,2}; normalize=false, relase=true)

  Copy the next iamge from the specified camera, converting to the format of, and overwriting the 
  provided abstract array. If release is false, the image buffer is not released.
  
  If `normalize == false`, the input data from the camera is interpreted as a number in the range of
  the underlying type, e.g., for a camera operating in Mono8 pixel format, a call
  `getimage!(cam, Array{Float64}(undef, dims...), normalize=false)` will return an array of dobule
  precision numbers in the range [0, 255]. `If normalize == true` the input data is interpreted as
  an associated fixed point format, and thus the array will be in the range [0,1].
"""
function getimage!(cam::Camera, image::Array{T,2}; normalize=true, release=true) where T
  
  himage_ref, width, height, id, timestamp, exposure = _pullim(cam)
  _copyimage!(himage_ref[], width, height, image, normalize)
  if release
    spinImageRelease(himage_ref[])
  end
  return id, timestamp, exposure

end


#
# Image retrieval -> File
#

"""
    saveimage()::Camera, fn::AbstractString, ::spinImageFileFormat; release=true)

    Save the next image from the specified camera to file `fn`, blocking until
    available. If release is false, the image buffer is not released.
"""
function saveimage(cam::Camera, fn::AbstractString, fmt::spinImageFileFormat; relase=true)

    # Get image handle and check it's complete
    himage_ref = Ref(spinImage(C_NULL))
    spinCameraGetNextImage(cam, himage_ref);
    @assert _isimagecomplete(himage_ref)
    spinImageSave(himage_ref[], fn, fmt)
    if release
      spinImageRelease(himage_ref[])
    end

end

