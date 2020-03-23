# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

module Spinnaker

using FixedPointNumbers

using Libdl
import Base: unsafe_convert, show, length, getindex, size, convert, range

export System, Camera, CameraList

# Include build configuration
const depsfile = joinpath(@__DIR__, "..", "deps", "deps.jl")
isfile(depsfile) && include(depsfile)

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
  if (!@isdefined libSpinnaker_C) || (!@isdefined libSpinVideo_C) 
    @error "Spinnaker build configuration not found. Try to rebuild with `]build Spinnaker`"
    return
  end
  if !isfile(libSpinnaker_C) || !isfile(libSpinVideo_C)
    @error "Spinnaker SDK cannot be found. This package can be loaded, but will not be functional."
    return 
  end
  try
    usb = dlopen("/usr/local/lib/libusb-1.0.0.dylib")
    libSpinnaker_C_handle = dlopen(libSpinnaker_C)
    libSpinVideo_C_handle = dlopen(libSpinVideo_C)
  catch err
    @error "Spinnaker SDK cannot be dlopen-ed. This package can be loaded, but will not be functional."
    return
  end
  try
    global spinsys = System()
  catch ex
    bt = catch_backtrace()
    @error "Spinnaker.jl failed to initialize" # don't actually fail to keep the package loadable
    showerror(stderr, ex, bt)
  end
end

end # module
