# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# camera/analog.jl: Camera object analog features

"""
  gain(::Camera) -> (Float,String)
  Camera exposure gain number (dB) and automatic gain mode.
"""
gain(cam::Camera) = (get(SpinFloatNode(cam, "Gain")), get(SpinEnumNode(cam, "GainAuto")))

"""
  gain!(::Camera)

  Set automatic exposure gain on camera.
"""
gain!(cam::Camera) = set!(SpinEnumNode(cam, "GainAuto"), "Continuous")

"""
  gain!(::Camera, ::Number) -> Float

  Set exposure gain on camera to specified number (dB). Gain is clamped to
  range supported by camera. This function disables automatic gain.
"""
function gain!(cam::Camera, g)
  set!(SpinEnumNode(cam, "GainAuto"), "Off")
  set!(SpinFloatNode(cam, "Gain"), g)
end

"""
  gain_limits(::Camera) -> (Float, Float)

  Camera gain limits in dB.
"""
gain_limits(cam::Camera) = range(SpinFloatNode(cam,"Gain"))


"""
  gammaenable(::Camera) -> Bool

  Return status of gamma correction
"""
gammaenable(cam::Camera) = get(SpinBooleanNode(cam, "GammaEnable"))

"""
  gammaenable!(::Camera, ::Bool) -> Bool

  Enable or disable gamma correction on camera.
"""
gammaenable!(cam::Camera, en::Bool) = set!(SpinBooleanNode(cam, "GammaEnable"), en)
