# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# System.jl: interface to Spinnaker system

"""
  Spinnaker SDK system object.

  System() returns new System object from which interfaces and devices can be discovered.
"""
mutable struct System
  handle::spinSystem

  function System()
    hsystem_ref = Ref(spinSystem(C_NULL))
    spinSystemGetInstance(hsystem_ref)
    @assert hsystem_ref[] != C_NULL
    sys = new(hsystem_ref[])
    finalizer(_release!, sys)
    return sys
  end
end

unsafe_convert(::Type{spinSystem}, sys::System) = sys.handle
unsafe_convert(::Type{Ptr{spinSystem}}, sys::System) = pointer_from_objref(sys)

# Release handle to system
function _release!(sys::System)
  spinSystemReleaseInstance(sys)
  sys.handle = C_NULL
  return nothing
end

"""
  version(::System)-> version, build

  Query the version number of the Spinnaker library in use. Returns a VersionNumber object
  and seperate build number.
"""
function version(sys::System)
  hlibver_ref = Ref(spinLibraryVersion(0,0,0,0))
  spinSystemGetLibraryVersion(sys, hlibver_ref)
  libver = VersionNumber(hlibver_ref[].major, hlibver_ref[].minor, hlibver_ref[].type)
  return libver, hlibver_ref[].build
end
