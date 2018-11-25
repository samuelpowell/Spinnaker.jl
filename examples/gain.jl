# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# examples/gain.jl: example to configure manual gain
using Spinnaker

camlist = CameraList()
cam = camlist[0]
triggersource!(cam, "Software")
triggermode!(cam, "On")
exposure!(cam, 1e6)
start!(cam)
for gainval in 0:2:48
    gain!(cam, gainval)
    @info "Gain set to $(gainval)dB"
    trigger!(cam)
    saveimage(cam, joinpath(@__DIR__, "gain_$(gainval)dB.png"), spinImageFileFormat(6))
    @info "Image saved"
end
stop!(cam)
