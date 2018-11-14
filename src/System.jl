# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# System.jl: interface to Spinnaker system

"""
  Spinnaker SDK system object.

  System() returns new System object from which interfaces and devices can be discovered.
"""
mutable struct System
  handle::Ref{spinSystem}

  function System()
    hSystem = Ref(spinSystem(C_NULL))
    spinSystemGetInstance(hSystem)
    @assert hSystem[] != C_NULL
    sys = new(hSystem)
    finalizer(_release!, sys)
    return sys
  end
end

# Release handle to system
function _release!(sys::System)
  spinSystemReleaseInstance(sys.handle[])
  sys.handle[] = C_NULL
  return nothing
end

"""
  version(::System)-> version, build

  Query the version number of the Spinnaker library in use. Returns a VersionNumber object
  and seperate build number.
"""
function version(sys::System)
  hLibraryVersion = Ref(spinLibraryVersion(0,0,0,0))
  spinSystemGetLibraryVersion(sys.handle, hLibraryVersion)
  libver = VersionNumber(hLibraryVersion[].major, hLibraryVersion[].minor, hLibraryVersion[].type)
  return libver, hLibraryVersion.build
end
