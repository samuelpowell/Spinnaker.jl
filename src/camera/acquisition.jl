# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# camera/acquisition.jl: Camera object acquistion features

"""
  isrunning(::Camera) -> Bool

  Determine if the camera is currently acquiring images.
"""
function isrunning(cam::Camera)
  pbIsStreaming = Ref(bool8_t(false))
  spinCameraIsStreaming(cam, pbIsStreaming)
  return (pbIsStreaming == 0x01)
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
  triggermode(::Camera) -> String

  Camera trigger mode.
"""
triggermode(cam::Camera) = get(SpinEnumNode(cam, "TriggerMode"))

"""
  triggermode!(::Camera, ::String) -> String

  Set camera trigger mode, returns set mode.
"""
triggermode!(cam::Camera, mode) = set!(SpinEnumNode(cam, "TriggerMode"), mode)

"""
  triggersource!(::Camera, ::AbstractString) -> String

  Set camera to use specified trigger source. Trigger mode is disabled during
  update and restored after new source is set. Method returns set trigger source.
"""
function triggersource!(cam::Camera, src)
  initmode = triggermode(cam)   # Save current trigger mode
  setsrc = set!(SpinEnumNode(cam, "TriggerSource"), src)
  triggermode!(cam, initmode)   # Restore initial trigger mode
  return setsrc
end

"""
  triggersource(::Camera) -> String

  Return current camera trigger source.
"""
triggersource(cam::Camera) = get(SpinEnumNode(cam, "TriggerSource"))

"""
  trigger!(::Camera)

  Emit software trigger to specified camera.
"""
function trigger!(cam::Camera)

  if triggersource(cam) != "Software"
    @error "Camera is not set to software trigger source"
  end

  if triggermode(cam) != "On"
    @error "Camera is not set to trigger mode"
  end

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetNodeMap(cam, hNodeMap)

  hTriggerSoftware = Ref(spinNodeHandle(C_NULL))
  spinNodeMapGetNode(hNodeMap[], "TriggerSoftware", hTriggerSoftware);
  spinCommandExecute(hTriggerSoftware[])

end


"""
  exposure(::Camera)

  Camera exposure mode.
"""
exposure(cam::Camera) = (get(SpinFloatNode(cam, "ExposureTime")), get(SpinEnumNode(cam, "ExposureAuto")))


"""
  exposure!(::Camera)

  Activate (continuous) automatic exposure control on specified camera.
"""
exposure!(cam::Camera) = set!(SpinEnumNode(cam, "ExposureAuto"), "Continuous")

"""
  exposure!(::Camera, ::Number) -> Float

  Set exposure time on camera to specified number of microseconds. The requested
  value is clamped to range supported by the camera, and the actual set value
  is returned. This function disables automatic exposure.
"""
function exposure!(cam::Camera, t)
  set!(SpinEnumNode(cam, "ExposureAuto"), "Off")
  set!(SpinFloatNode(cam, "ExposureTime"), t)
end


"""
  framerate(::Camera) -> Float

  Camera frame rate.
"""
function framerate(cam::Camera)
  get(SpinFloatNode(cam, "AcquisitionFrameRate"))
end


"""
  framerate!(::Camera, ::Number) -> Float

  Set framerate on camera to specified number of frames per second. The requested
  value is clamped to range supported by the camera, and the actual set value
  is returned.
"""
function framerate!(cam::Camera, fps)
  set!(SpinFloatNode(cam, "AcquisitionFrameRate"), fps)
end
