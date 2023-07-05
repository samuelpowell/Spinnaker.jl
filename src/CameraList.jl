# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# CameraList.jl: interface to CameraList objects

export find_cam_with_serial

"""
  CameraList(::System)

  Spinnaker SDK Camera List object constructor. Returns new Camera List object which
  enumerates available devices.
"""
mutable struct CameraList
  handle::spinCameraList

  function CameraList()
    system_initialized || init()
    hcamlist_ref = Ref(spinCameraList(C_NULL))
    spinCameraListCreateEmpty(hcamlist_ref)
    @assert hcamlist_ref[] != C_NULL
    camlist = new(hcamlist_ref[])
    _refresh!(camlist)
    finalizer(_release!, camlist)
    return camlist
  end

end

"""
  find_cam_with_serial(camlist::CameraList, sn)

Finds and returns a camera with the given serial number, or returns nothing.
"""
function find_cam_with_serial(camlist::CameraList, sn)
  for i in 0:length(camlist)-1
    cam = camlist[i]
    if serial(cam) == sn
      return cam
    end
  end
  return nothing
end

unsafe_convert(::Type{spinCameraList}, camlist::CameraList) = camlist.handle
unsafe_convert(::Type{Ptr{spinCameraList}}, camlist::CameraList) = pointer_from_objref(camlist)

# Clear list and release handle
function _release!(camlist::CameraList)
  if camlist.handle != C_NULL
    spinCameraListClear(camlist)
    spinCameraListDestroy(camlist)
    camlist.handle = C_NULL
  end
  return nothing
end

# Clear the list and reload enumerated cameras
function _refresh!(camlist::CameraList)
  spinCameraListClear(camlist)
  spinSystemGetCameras(spinsys, camlist)
end

"""
  length(::CameraList) -> Int

  Refresh the CameraList object and return the number of enumerated devices.
"""
function length(camlist::CameraList)
  _refresh!(camlist)
  nc = Ref(Csize_t(0))
  spinCameraListGetSize(camlist, nc)
  return Int(nc[])
end

"""
  show(::IO, ::CameraList)

  Write list of enumerated devices to supplied IO.
"""
function show(io::IO, camlist::CameraList)
  nc = length(camlist)  # This call will refresh the list
  write(io, "CameraList with $(nc[]) enumerated devices:\n")
  write(io, "ID\tSerial No.\tDescription\n")
  for i in 0:nc-1
    cam = camlist[i]
    vendorname = vendor(cam)
    modelname = model(cam)
    serialno = serial(cam)
    write(io, "$i\t$serialno\t$vendorname $modelname")
    _release!(cam) # Make sure this is cleaned up immediately
  end

end

"""
  getindex(::CameraList, ::Int) -> Camera

  Return camera by ID in specified CameraList. Note that IDs are zero-indexed.
"""
function getindex(camlist::CameraList, id::Int)
  nc = length(camlist)
  if (id >= 0) && (id < nc)
    hcam_ref = Ref(spinCamera(C_NULL))
    spinCameraListGet(camlist, id, hcam_ref)
    return Camera(hcam_ref[])
  else
    @error "Invalid camera index"
  end

end
