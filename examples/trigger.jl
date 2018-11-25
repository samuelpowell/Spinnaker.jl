# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# examples/trigger.jl: example to configure manual trigger
using Spinnaker

camlist = CameraList()
cam = camlist[0]
triggersource!(cam, "Software")
triggermode!(cam, "On")
start!(cam)
trigger!(cam)
saveimage(joinpath(@__DIR__, "trigger.png", spinImageFileFormat(6)))
stop!(cam)
