# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

module Spinnaker

using FixedPointNumbers

using Libdl
import Base: unsafe_convert, show, length, getindex, size, convert, range, showerror

export System, Camera, CameraList, SpinError

const libSpinnaker_C = Ref{String}("")
const libSpinVideo_C = Ref{String}("")

const MAX_BUFFER_LEN = Csize_t(1023)

# include API wrapper
include("wrapper/CEnum.jl")
using .CEnum

include("wrapper/spin_common.jl")

struct SpinError <: Exception
  val::spinError
end
showerror(io::IO, ex::SpinError) = print(io, "Spinnaker SDK error: ", ex.val)

function checkerror(err::spinError)
  if err != spinError(0)
    throw(SpinError(err))
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

get_bool_env(name::String; default::String="false") =
    lowercase(Base.get(ENV, name, default)) in ("t", "true", "y", "yes", "1")

const _system_initialized = Ref(false)
const _init_lock = ReentrantLock()

# Create a System object at runtime
function init()
  lock(_init_lock) do 
    if _system_initialized[]
      return
    end

    if haskey(ENV, "JULIA_SPINNAKER_MANUAL_INIT")
      @warn """
        The environment variable `JULIA_SPINNAKER_MANUAL_INIT` is deprecated.
        Spinnaker is initialized during first CameraList usage""" maxlog=1
    end
    @static if Sys.iswindows()
      paths = [joinpath(ENV["ProgramFiles"], "Point Grey Research", "Spinnaker", "bin", "vs2015")]
      libspinnaker = "SpinnakerC_v140.dll"
      libspinvideo = ""
    elseif Sys.islinux()
      paths = ["/usr/lib" "/opt/spinnaker/lib"]
      libspinnaker = "libSpinnaker_C.so"
      libspinvideo = "libSpinVideo_C.so"
    elseif Sys.isapple()
      paths = ["/usr/local/lib"]
      libspinnaker = "libSpinnaker_C.dylib"
      libspinvideo = "libSpinVideo_C.dylib"
    else
      error("Spinnaker SDK is only supported on Linux, Windows and MacOS platforms")
    end
    libSpinnaker_C_path = ""
    libSpinVideo_C_path = ""
    for path in paths
      libSpinnaker_C_path = joinpath(path, libspinnaker)
      libSpinVideo_C_path = joinpath(path, libspinvideo)
      if isfile(libSpinnaker_C_path) && isfile(libSpinVideo_C_path)
        libSpinnaker_C[] = libSpinnaker_C_path
        libSpinVideo_C[] = libSpinVideo_C_path
      end
    end
  
    if libSpinnaker_C[] == "" || libSpinVideo_C[] == ""
      error("Spinnaker SDK cannot be found.")
    end
    try
      libSpinnaker_C_handle = dlopen(libSpinnaker_C[])
      !Sys.iswindows() && (libSpinVideo_C_handle = dlopen(libSpinVideo_C[]))
    catch
      @error "Spinnaker SDK cannot be dlopen-ed"
      rethrow()
    end
    try
      global spinsys = System()
    catch
      bt = catch_backtrace()
      @error "Spinnaker SDK loaded but Spinnaker.jl failed to initialize"
      if !haskey(ENV, "FLIR_GENTL64_CTI")
        @warn "The environment is missing the variable `FLIR_GENTL64_CTI`, which may be the cause of this error. Check that it is set to the path to `FLIR_GenTL.cti` (e.g. `/opt/spinnaker/lib/flir-gentl/FLIR_GenTL.cti`)."
      elseif !endswith(ENV["FLIR_GENTL64_CTI"], "FLIR_GenTL.cti")
        @warn "The environment has the variable `FLIR_GENTL64_CTI`, but it does not point to `FLIR_GenTL.cti`, which may be the cause of this error. Check that it is set to the path to `FLIR_GenTL.cti` (e.g. `/opt/spinnaker/lib/flir-gentl/FLIR_GenTL.cti`)."
      end
      rethrow()
    end
    _system_initialized[] = true
  end
end

end # module
