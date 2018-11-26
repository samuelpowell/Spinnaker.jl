# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# examples/format.jl: example to configure advanced image format controls
using Spinnaker

camlist = CameraList()
cam = camlist[0]
gammenset = gammaenable!(cam, false)
@assert gammenset == false
adcbits!(cam, "Bit12")
adcbits(cam)
pixelformat(cam)
pixelformat!(cam, "Mono12p")
@assert pixelformat(cam) == "Mono12p"
triggersource!(cam, "Software")
triggermode!(cam, "On")
acquisitionmode!(cam, "Continuous")
gain!(cam, 12)
exposure!(cam, 1e6)
start!(cam)
trigger!(cam)
saveimage(cam, joinpath(@__DIR__, "iformat.png"), spinImageFileFormat(6))
stop!(cam)
