# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

module Spinnaker

import Libdl

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

end # module
