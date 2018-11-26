# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# camera/analog.jl: Camera object analog features

"""
  gain!(::Camera)

  Set automatic exposure gain on camera.
"""
gain!(cam::Camera) = IEnumNode!(cam, "ExposureAuto", "On")

"""
  gain!(::Camera, ::Number) -> Float

  Set exposure gain on camera to specified number (dB). Gain is clamped to
  range supported by camera. This function disables automatic gain.
"""
function gain!(cam::Camera, g)
  IEnumNode!(cam, "ExposureAuto", "Off")
  IFloatNode!(cam, "Gain", g)
end
