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
  pixelformat(::Camera) -> String

  Return camera pixel format.
"""
pixelformat(cam::Camera) = IEnumNode(cam, "PixelFormat")

"""
  pixelformat!(::Camera, ::AbstractString) -> String

  Set camera pixel format, returns set format.
"""
pixelformat!(cam::Camera, fmt) = IEnumNode!(cam, "PixelFormat", fmt)

"""
  sensordims(::Camera) -> (Int, Int)

  Return the width and height of the sensor.
"""
sensordims(cam::Camera) = (IIntegerNode(cam, "SensorWidth"), IIntegerNode(cam, "SensorWidth"))


"""
  imagedims(::Camera) -> (Int, Int)

  Return the width and height of the image.
"""
imagedims(cam::Camera) = (IIntegerNode(cam, "Width"), IIntegerNode(cam, "Height"))
  

"""
  imagedims!(::Camera, (width, height)) -> (Int, Int)

  Set the width and height of the image, return the set values.
"""
function imagedims!(cam::Camera, dims)
  IIntegerNode!(cam, "Width", dims[1])
  IIntegerNode!(cam, "Height", dims[2])
  imagedims(cam)
end

"""
  offsetdims(::Camera) -> (Int, Int)

  Return the offset in x and y of the image.
"""
offsetdims(cam::Camera) = (IIntegerNode(cam, "OffsetX"), IIntegerNode(cam, "OffsetY"))
  
"""
  offsetdims!(::Camera, (X,Y)) -> (Int, Int)

  Set the image offset in x and y, return the set values.
"""
function offsetdims!(cam::Camera, dims)
  IIntegerNode!(cam, "OffsetX", dims[1])
  IIntegerNode!(cam, "OffsetY", dims[2])
  offsetdims(cam)
end
  