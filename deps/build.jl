# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# build.jl: locate library and write file
using Libdl

function find_spinnaker()

  if Sys.iswindows()
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

  return path, libspinnaker, libspinvideo

end

function configure()

  path, libspinnaker, libspinvideo = find_spinnaker()
  libSpinnaker_C = find_library(libspinnaker,[path])
  libSpinVideo_C = find_library(libspinvideo,[path])

  libSpinnaker_C != "" || @error "Spinnaker SDK cannot be found"

  open(joinpath(@__DIR__, "deps.jl"), "w") do f
    write(f, """
      const libSpinnaker_C = \"$(libSpinnaker_C)\"
      const libSpinVideo_C = \"$(libSpinVideo_C)\"
    """)
  end

end

configure()
