# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# examples/exposure.jl: example to configure manual exposure
using Spinnaker

camlist = CameraList()
cam = camlist[0]
triggersource!(cam, "Software")
triggermode!(cam, "On")
exposure!(cam, 2e6)
start!(cam)
trigger!(cam)
saveimage(cam, joinpath(@__DIR__, "exposure.png"), spinImageFileFormat(6))
stop!(cam)
