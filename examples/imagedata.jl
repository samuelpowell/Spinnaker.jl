# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# examples/imagedata.jl: example to extract image data to AbstractArray
using Spinnaker

camlist = CameraList()
cam = camlist[0]
gammenset = gammaenable!(cam, false)
@assert gammenset == false
adcbits!(cam, "Bit12")
adcbits(cam)
pixelformat(cam)
pixelformat!(cam, "Mono16")
@assert pixelformat(cam) == "Mono16"
triggersource!(cam, "Software")
triggermode!(cam, "On")
acquisitionmode!(cam, "Continuous")
gain!(cam, 12.0)
exposure!(cam, 1e6)
start!(cam)
trigger!(cam)
image = getimage(cam)
stop!(cam)
arr = CameraImage(image, Float64)
