# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

module Spinnaker

import Libdl
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
#include("wrapper/QuickSpinC.h.jl")
#include("wrapper/SpinVideoC.h.jl")

# export everything spin*
foreach(names(@__MODULE__, all=true)) do s
  if startswith(string(s), "spin")
    @eval export $s
  end
end

# Utility functions
function available(nodeName)
  pbAvailable = Ref(bool8_t(false))
  spinNodeIsAvailable(nodeName[], pbAvailable)
  return (pbAvailable[] == 1)
end

function readable(nodeName)
  if available(nodeName)
   pbReadable = Ref(bool8_t(false))
   spinNodeIsReadable(nodeName[], pbReadable)
   return (pbReadable[] == 1)
 else
   return false
 end
end

function writable(nodeName)
  if available(nodeName)
   pbWriteable = Ref(bool8_t(false))
   spinNodeIsReadable(nodeName[], pbWriteable)
   return (pbWriteable[] == 1)
 else
   return false
 end
end

# Include interface
include("Image.jl")
include("System.jl")
include("Camera.jl")
include("CameraList.jl")

# Create a System object at runtime
function __init__()
  global spinsys = System()
end

end # module
