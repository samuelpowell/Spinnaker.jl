# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# examples/exposure.jl: example to configure manual exposure
using Spinnaker

camlist = CameraList()
cam = camlist[0]
triggersource!(cam, "Software")
triggermode!(cam, "On")
gain!(cam, 0)
acquisitionmode!(cam, "Continuous")
start!(cam)
for expval in 0:1e5:2e6
    expact = exposure!(cam, expval)
    @info "Exposure set to $(expact/1e6)s"
    trigger!(cam)
    saveimage(cam, joinpath(@__DIR__, "exposure_$(expval/1e6)s.png"), spinImageFileFormat(6))
    @info "Image saved"
end
stop!(cam)
