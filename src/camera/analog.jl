# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# camera/analog.jl: Camera object analog features

"""
  gain!(::Camera)

  Set automatic exposure gain on camera.
"""
gain!(cam::Camera) = IEnumNode!(cam, "GainAuto", "Continuous")

"""
  gain!(::Camera, ::Number) -> Float

  Set exposure gain on camera to specified number (dB). Gain is clamped to
  range supported by camera. This function disables automatic gain.
"""
function gain!(cam::Camera, g)
  IEnumNode!(cam, "GainAuto", "Off")
  IFloatNode!(cam, "Gain", g)
end


"""
  gammaenable(::Camera) -> Bool

  Return status of gamma correction
"""
gammaenable(cam::Camera) = IBooleanNode(cam, "GammaEnable")

"""
  gammaenable!(::Camera, ::Bool) -> Bool

  Enable or disable gamma correction on camera.
"""
gammaenable!(cam::Camera, en::Bool) = IBooleanNode(cam, "GammaEnable", en)
