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
    sleep(0.5)
    spinCameraInit(handle)
    sleep(0.5)
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
  spinCameraDeInit(cam)
  spinCameraRelease(cam)
  cam.handle = C_NULL
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
function getimage(cam::Camera)

  # Get image handle and check it's complete
  himage_ref = Ref(spinImage(C_NULL))
  spinCameraGetNextImage(cam, himage_ref);
  @assert _isimagecomplete(himage_ref)

  # Create output image, copy and release buffer
  image = Image()
  spinImageDeepCopy(himage_ref[], image)
  spinImageRelease(himage_ref[])

  return image

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
