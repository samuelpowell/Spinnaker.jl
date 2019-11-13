# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

module Spinnaker

using FixedPointNumbers

import Libdl
import Base: unsafe_convert, show, length, getindex, size, convert, range

export System, Camera, CameraList

# Include build configuration
try
  include(joinpath(@__DIR__, "..", "deps", "deps.jl"))
catch
  @error "Package configuration file missing, run 'Pkg.build(\"Spinnaker\")' to configure."
end

const MAX_BUFFER_LEN = Csize_t(1023)

# include API wrapper
include("wrapper/CEnum.jl")
using .CEnum

include("wrapper/spin_common.jl")

function checkerror(err::spinError)
  if err != spinError(0)
    throw(ErrorException("Spinnaker SDK error: $err"))
  end
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
include("SpinImage.jl")
include("CameraImage.jl")
include("System.jl")
include("Camera.jl")
include("CameraList.jl")
include("NodeMap.jl")
include("Nodes.jl")

# Create a System object at runtime
function __init__()
  try
    global spinsys = System()
  catch ex
    # don't actually fail to keep the package loadable
    @error "Spinnaker.jl failed to initialize" exception=(ex, catch_backtrace())
  end
end

end # module
