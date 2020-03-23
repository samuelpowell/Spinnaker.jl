# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

module Spinnaker

using FixedPointNumbers

using Libdl
import Base: unsafe_convert, show, length, getindex, size, convert, range

export System, Camera, CameraList

@static if Sys.iswindows()
  path = joinpath(ENV["ProgramFiles"], "Point Grey Research", "Spinnaker", "bin", "vs2015")
  libspinnaker = "SpinnakerC_v140.dll"
  libspinvideo = ""
elseif Sys.islinux()
  path = "/usr/lib"
  libspinnaker = "libSpinnaker_C.so"
  libspinvideo = "libSpinVideo_C.so"
elseif Sys.isapple()
  path = "/usr/local/lib"
  libspinnaker = "libSpinnaker_C.dylib"
  libspinvideo = "libSpinVideo_C.dylib"
else
  @error "Spinnaker SDK only supported on Linux, Windows and MacOS platforms"
end
const libSpinnaker_C = joinpath(path, libspinnaker)
const libSpinVideo_C = joinpath(path, libspinvideo)

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
  libSpinnaker_C_handle = dlopen(libSpinnaker_C)
  libSpinVideo_C_handle = dlopen(libSpinVideo_C)

  if libSpinnaker_C_handle == C_NULL || libSpinVideo_C_handle == C_NULL
    @error "Spinnaker SDK cannot be found. This package can be loaded, but will not be functional."
  end
  
  try
    global spinsys = System()
  catch ex
    bt = catch_backtrace()
    # don't actually fail to keep the package loadable
    @error "Spinnaker.jl failed to initialize"
    showerror(stderr, ex, bt)
  end
end

end # module
