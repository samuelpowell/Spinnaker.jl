# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# Camera.jl: interface to Camera objects

"""
 Spinnaker SDK Camera object

 Create a camera object by referencing a CameraList, e.g.,
 `sys = System()
  cl = CameraList(sys)
  cam = cl[0]`

  The camera is initialised when created and deinitialised when garbage collected.
"""
mutable struct Camera
  sys::System
  handle::Ref{spinCamera}

  function Camera(sys, handle)
    @assert sys.handle[] != C_NULL
    @assert handle != C_NULL
    spinCameraInit(handle[])
    cam = new(sys, handle)
    finalizer(_release!, cam)
    return cam
  end
end

# Release handle to system
function _release!(cam::Camera)
  spinCameraDeInit(cam.handle[])
  spinCameraRelease(cam.handle[])
  cam.handle[] = C_NULL
  return nothing
end

"""
  serial(::Camera) -> String

  Return camera serial number (string)
"""
function serial(cam::Camera)
  hNodeMapTLDevice = Ref(spinNodeMapHandle(C_NULL))
  hDeviceSerialNumber = Ref(spinNodeHandle(C_NULL))
  deviceSerialNumber = Vector{UInt8}(undef, MAX_BUFFER_LEN)
  lenDeviceSerialNumber = Ref(Csize_t(MAX_BUFFER_LEN))
  spinCameraGetTLDeviceNodeMap(cam.handle[], hNodeMapTLDevice)
  spinNodeMapGetNode(hNodeMapTLDevice[], "DeviceSerialNumber", hDeviceSerialNumber)
  if readable(hDeviceSerialNumber[], "DeviceSerialNumber")
    spinStringGetValue(hDeviceSerialNumber[], deviceSerialNumber, lenDeviceSerialNumber)
    serialno = unsafe_string(pointer(deviceSerialNumber))
  else
    @warn "Cannot retrieve camera serial number"
    serialno = ""
  end
  return serialno
end

"""
  vendor(::Camera)

  Return vendor name for specified camera.
"""
function vendor(cam::Camera)

  hNodeMapTLDevice = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetTLDeviceNodeMap(cam.handle[], hNodeMapTLDevice);

  #  Get camera vendor name
  hDeviceVendorName = Ref(spinNodeHandle(C_NULL))
  spinNodeMapGetNode(hNodeMapTLDevice[], "DeviceVendorName", hDeviceVendorName)
  deviceVendorName = Vector{UInt8}(undef, MAX_BUFFER_LEN)
  lenDeviceVendorName = Ref(Csize_t(MAX_BUFFER_LEN))
  if readable(hDeviceVendorName)
    spinStringGetValue(hDeviceVendorName[], deviceVendorName, lenDeviceVendorName);
    vendor = unsafe_string(pointer(deviceVendorName))
  else
    @warn "Could not retrieve vendor name"
    vendor = "-"
  end

  return vendor

end

"""
  model(::Camera)

  Return model name for specified camera.
"""
function model(cam::Camera)

  hNodeMapTLDevice = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetTLDeviceNodeMap(cam.handle[], hNodeMapTLDevice);

  # Get camera model name
  hDeviceModelName = Ref(spinNodeHandle(C_NULL))
  spinNodeMapGetNode(hNodeMapTLDevice[], "DeviceModelName", hDeviceModelName);
  deviceModelName = Vector{UInt8}(undef, MAX_BUFFER_LEN)
  lenDeviceModelName = Ref(Csize_t(MAX_BUFFER_LEN))
  if readable(hDeviceModelName)
    spinStringGetValue(hDeviceModelName[], deviceModelName, lenDeviceModelName);
    model = unsafe_string(pointer(deviceModelName))
  else
    @warn "Could not retrieve model name"
    model = "model name not readable"
  end

  return model

end

"""
  start!(::Camera)

  Start acquistion on specified camera.
"""
function start!(cam::Camera)
  spinCameraBeginAcquisition(cam.handle[])
  return nothing
end

"""
  stop!(::Camera)

  Cease acquistion on specified camera.
"""
function stop!(cam::Camera)
  spinCameraEndAcquisition(cam.handle[])
  return nothing
end

"""
  isrunning(::Camera) -> Bool

  Determine if the camera is currently acquiring images.
"""
function isrunning(cam::Camera)
  pbIsStreaming = Ref(bool8_t(false))
  spinCameraIsStreaming(cam.handle[], pbIsStreaming)
  return (pbIsStreaming == true)
end
