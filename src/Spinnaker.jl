# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

module Spinnaker

import Libdl
import Base: unsafe_convert, show, length, getindex, size, convert

export System, Camera, CameraList

# Include build configuration
try
  include(joinpath(@__DIR__, "..", "deps", "deps.jl"))
catch
  error("Package configuration file missing, run 'Pkg.build(\"Spinnaker\")' to configure.")
end

const MAX_BUFFER_LEN = Csize_t(255)

# include API wrapper
include("wrapper/CEnum.jl")
using .CEnum

include("wrapper/spin_common.jl")

function checkerror(err::spinError)
  err == spinError(0) ||  @error "Spinnaker SDK error: $err"
  return nothing
end

include("wrapper/spin_api.jl")

# export everything spin*
foreach(names(@__MODULE__, all=true)) do s
  if startswith(string(s), "spin")
    @eval export $s
  end
end

# Include interface
include("Image.jl")
include("System.jl")
include("Camera.jl")
include("CameraList.jl")
include("Nodes.jl")

# Create a System object at runtime
function __init__()
  global spinsys = System()
end

end # module
