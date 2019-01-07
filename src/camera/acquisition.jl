# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

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
  streambufferhandlingmode(::Camera) -> String

  Return stream buffer handling mode from selection of:
    OldestFirst
    OldestFirstOverwrite
    NewestFirst
    NewestFirstOverwrite
    NewestOnly
"""
streambufferhandlingmode(cam::Camera) = IEnumNode(cam, "StreamBufferHandlingMode")

"""
  streambufferhandlingmode!(::Camera, ::String) -> String

  Set stream buffer handling mode from selection of:
    OldestFirst
    OldestFirstOverwrite
    NewestFirst
    NewestFirstOverwrite
    NewestOnly
"""
streambufferhandlingmode!(cam::Camera, mode) = IEnumNode!(cam, "StreamBufferHandlingMode", mode)

"""
  triggermode(::Camera) -> String

  Return if camera trigger mode.
"""
triggermode(cam::Camera) = IEnumNode(cam, "TriggerMode")

"""
  triggermode!(::Camera, ::String) -> String

  Set camera trigger mode, returns set mode.
"""
triggermode!(cam::Camera, mode) = IEnumNode!(cam, "TriggerMode", mode)

"""
  triggersource!(::Camera, ::AbstractString) -> String

  Set camera to use specified trigger source. Trigger mode is disabled during
  update and restored after new source is set. Method returns set trigger source.
"""
function triggersource!(cam::Camera, src)
  initmode = triggermode(cam)   # Save current trigger mode
  setsrc = IEnumNode!(cam, "TriggerSource", src)
  triggermode!(cam, initmode)   # Restore initial trigger mode
  return setsrc
end

"""
  triggersource(::Camera) -> String

  Return current camera trigger source.
"""
triggersource(cam::Camera) = IEnumNode(cam, "TriggerSource")

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
  exposure!(::Camera)

  Activate (continuous) automatic exposure control on specified camera.
"""
exposure!(cam::Camera) = IEnumNode!(cam, "ExposureAuto", "Continuous")

"""
  exposure!(::Camera, ::Number) -> Float

  Set exposure time on camera to specified number of microseconds. The requested
  value is clamped to range supported by the camera, and the actual set value
  is returned. This function disables automatic exposure.
"""
function exposure!(cam::Camera, t)
  IEnumNode!(cam, "ExposureAuto", "Off")
  IFloatNode!(cam, "ExposureTime", t)
end


"""
  framerate!(::Camera, ::Number) -> Float

  Set framerate on camera to specified number of frames per second. The requested
  value is clamped to range supported by the camera, and the actual set value
  is returned.
"""
function framerate!(cam::Camera, fps)
  IFloatNode!(cam, "AcquisitionFrameRate", fps)
end
