# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# CameraList.jl: interface to CameraList objects
import Base: show, length, getindex

"""
  CameraList(::System)

  Spinnaker SDK Camera List object constructor. Returns new Camera List object which
  enumerates available devices.
"""
mutable struct CameraList
  sys::System
  handle::Ref{spinCameraList}

  function CameraList(sys::System)
    hCameraList = Ref(spinCameraList(C_NULL))
    nCameras = Ref(Csize_t(0))
    spinCameraListCreateEmpty(hCameraList)
    @assert hCameraList[] != C_NULL
    camlist = new(sys, hCameraList)
    _refresh!(camlist)
    finalizer(_release!, camlist)
    return camlist
  end

end

# Clear list and release handle
function _release!(camlist::CameraList)
  spinCameraListClear(camlist.handle[])
  spinCameraListDestroy(camlist.handle[])
  camlist.handle = C_NULL
  return nothing
end

# Clear the list and reload enumerated cameras
function _refresh!(camlist::CameraList)
  spinCameraListClear(camlist.handle[])
  spinSystemGetCameras(camlist.sys.handle[], camlist.handle[])
end

"""
  length(::CameraList) -> Int

  Refresh the CameraList object and return the number of enumerated devices.
"""
function length(camlist::CameraList)
  _refresh!(camlist)
  nc = Ref(Csize_t(0))
  spinCameraListGetSize(camlist.handle[], nc)
  return Int(nc[])
end

"""
  show(::IO, ::CameraList)

  Write list of enumerated devices to supplied IO.
"""
function show(io::IO, camlist::CameraList)
  nc = length(camlist)  # This call will refresh the list
  write(io, "CameraList with $(nc[]) enumerated devices:\n")
  write(io, "\tID \tDescription\n")
  for i in 0:nc-1
    cam = camlist[i]
    vendorname = vendor(cam)
    modelname = model(cam)
    write(io, "\t $i\t $vendorname $modelname")
  end

end

"""
  getindex(::CameraList, id) -> Camera

  Return camera by ID in specified CameraList. Note that IDs are zero-indexed.
"""
function getindex(camlist::CameraList, id)
  nc = length(camlist)
  if (id >= 0) && (id < nc)
    hCam = Ref(spinCamera(C_NULL))
    spinCameraListGet(camlist.handle[], id, hCam)
    return Camera(camlist.sys, hCam)
  else
    @error "Invalid camera index"
  end

end
