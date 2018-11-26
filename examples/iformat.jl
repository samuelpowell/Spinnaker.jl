# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# examples/iformat.jl: example to configure advanced image format controls
using Spinnaker

camlist = CameraList()
cam = camlist[0]
gammenset = gammaenable!(cam, false)
@assert !gammenset
adcbits!(cam, Spinnaker.ADCBITS_Bit12)

pixelformat(cam)
pixelformat!(cam, Spinnaker.PIXELFORMAT_Mono12p)
@assert pixelformat(cam) == "Mono12p"

triggersource!(cam, "Software")
triggermode!(cam, "On")
gain!(cam, 12)
start!(cam)
for expval in 0:1e5:2e6
    expact = exposure!(cam, expval)
    @info "Exposure set to $(expact/1e6)s"
    trigger!(cam)
    saveimage(cam, joinpath(@__DIR__, "exposure_$(expval/1e6)s.png"), spinImageFileFormat(6))
    @info "Image saved"
end
stop!(cam)
