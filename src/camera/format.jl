# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# camera/format.jl: Camera object image format features

"""
  adcbits(::Camera) -> String

  Return ADC bit depth.
"""
adcbits(cam::Camera) = IEnumNode(cam, "AdcBitDepth")

"""
  adcbits!(::Camera, ::AbstractString) -> String

  Set ADC bit depth, returns set depth.
"""
adcbits!(cam::Camera, bits) = IEnumNode!(cam, "AdcBitDepth", bits)

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

"""
  pixelformat(::Camera) -> String

  Return camera pixel format.
"""
pixelformat(cam::Camera) = IEnumNode(cam, "PixelFormat")

"""
  pixelformat!(::Camera, ::AbstractString) -> String

  Set camera pixel format, returns set format.
"""
pixelformat!(cam::Camera, fmt) = IEnumNode!(cam, "PixelFormat", fmt)
