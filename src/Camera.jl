# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# Camera.jl: interface to Camera objects
export serial, model, vendor, isrunning, start!, stop!, getimage

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
    spinCameraInit(handle)
    cam = new(handle)
    finalizer(_release!, cam)
    return cam
  end
end

unsafe_convert(::Type{spinCamera}, cam::Camera) = cam.handle
unsafe_convert(::Type{Ptr{spinCamera}}, cam::Camera) = pointer_from_objref(cam)

# Release handle to system
function _release!(cam::Camera)
  spinCameraDeInit(cam)
  spinCameraRelease(cam)
  cam.handle = C_NULL
  return nothing
end

function _getTLNodeString(cam::Camera, nodename::AbstractString)
  hNodeMapTLDevice = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetTLDeviceNodeMap(cam, hNodeMapTLDevice);

  #  Get camera vendor name
  hNode = Ref(spinNodeHandle(C_NULL))
  spinNodeMapGetNode(hNodeMapTLDevice[], nodename, hNode)
  nodestringbuf = Vector{UInt8}(undef, MAX_BUFFER_LEN)
  nodestringlen = Ref(Csize_t(MAX_BUFFER_LEN))
  if readable(hNode)
    spinStringGetValue(hNode[], nodestringbuf, nodestringlen);
    nodestring = unsafe_string(pointer(nodestringbuf))
  else
    @warn "Could not retrieve transport layer note $node"
    nodestring = "-"
  end

  return nodestring
end

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

"""
  isrunning(::Camera) -> Bool

  Determine if the camera is currently acquiring images.
"""
function isrunning(cam::Camera)
  pbIsStreaming = Ref(bool8_t(false))
  spinCameraIsStreaming(cam, pbIsStreaming)
  return (pbIsStreaming == true)
end

"""
  start!(::Camera)

  Start acquistion on specified camera.
"""
function start!(cam::Camera)
  spinCameraBeginAcquisition(cam)
  return cam
end

"""
  stop!(::Camera)

  Stop acquistion on specified camera.
"""
function stop!(cam::Camera)
  spinCameraEndAcquisition(cam)
  return cam
end

"""
  getimage(::Camera, fmt::spinPixelFormatEnums = PixelFormat_Mono8)

  Get the next image from the specified camera, blocking until available. The image
  buffer converted to the desired output format and returned.
"""
function getimage(cam::Camera, fmt::spinPixelFormatEnums = PixelFormat_Mono8)

  imhandle = Ref(spinImage(C_NULL))
  spinCameraGetNextImage(cam, imhandle);

  isIncomplete = Ref(bool8_t(false))

  spinImageIsIncomplete(imhandle[], isIncomplete);

  if (isIncomplete == true)
    imageStatus = Ref(spinImageStatus(IMAGE_NO_ERROR))
    spinImageGetStatus(imhandle[], imageStatus)
    spinImageRelease(imhandle[])
    @error "Image incomplete with error $(imageStatus)"
  end

  # Create output image, convert if required
  image = Image()

  infmt = Ref(spinPixelFormatEnums(0))
  spinImageGetPixelFormat(imhandle[], infmt)

  if infmt == fmt
    spinImageDeepCopy(imhandle[], image)
  else
    spinImageConvert(imhandle[], fmt, image)
  end

  # Release buffer
  spinImageRelease(imhandle[])

  return image

end
