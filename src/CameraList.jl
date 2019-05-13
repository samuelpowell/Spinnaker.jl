# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# CameraList.jl: interface to CameraList objects
"""
  CameraList(::System)

  Spinnaker SDK Camera List object constructor. Returns new Camera List object which
  enumerates available devices.
"""
mutable struct CameraList
  handle::spinCameraList

  function CameraList()
    hcamlist_ref = Ref(spinCameraList(C_NULL))
    spinCameraListCreateEmpty(hcamlist_ref)
    @assert hcamlist_ref[] != C_NULL
    camlist = new(hcamlist_ref[])
    _refresh!(camlist)
    finalizer(_release!, camlist)
    return camlist
  end

end

unsafe_convert(::Type{spinCameraList}, camlist::CameraList) = camlist.handle
unsafe_convert(::Type{Ptr{spinCameraList}}, camlist::CameraList) = pointer_from_objref(camlist)

# Clear list and release handle
function _release!(camlist::CameraList)
  spinCameraListClear(camlist)
  spinCameraListDestroy(camlist)
  camlist.handle = C_NULL
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
  
  # List the cameras without initialising them
  for i in 0:nc-1

    
    hCam = Ref(spinCamera(C_NULL))
    spinCameraListGet(camlist, i, hCam);

    hNodeMapTLDevice = Ref(spinNodeMapHandle(C_NULL))
    spinCameraGetTLDeviceNodeMap(hCam[], hNodeMapTLDevice);

    #  Get camera vendor name
    hDeviceVendorName = Ref(spinNodeHandle(C_NULL))
    deviceVendorNameIsAvailable = Ref(bool8_t(false))
    deviceVendorNameIsReadable = Ref(bool8_t(false))
    spinNodeMapGetNode(hNodeMapTLDevice[], "DeviceVendorName", hDeviceVendorName)
    spinNodeIsAvailable(hDeviceVendorName[], deviceVendorNameIsAvailable)
    spinNodeIsReadable(hDeviceVendorName[], deviceVendorNameIsReadable)

    deviceVendorName = Vector{UInt8}(undef, MAX_BUFFER_LEN)
    lenDeviceVendorName = Ref(Csize_t(MAX_BUFFER_LEN))
    if (deviceVendorNameIsAvailable[] == true) && (deviceVendorNameIsReadable[] == true)
      spinStringGetValue(hDeviceVendorName[], deviceVendorName, lenDeviceVendorName);
      vendorname = unsafe_string(pointer(deviceVendorName))
    else
      vendorname =  "Unable to read vendor name"
    end

    # Get camera model name
    hDeviceModelName = Ref(spinNodeHandle(C_NULL))
    deviceModelNameIsAvailable = Ref(bool8_t(false))
    deviceModelNameIsReadable = Ref(bool8_t(false))
    spinNodeMapGetNode(hNodeMapTLDevice[], "DeviceModelName", hDeviceModelName);
    spinNodeIsAvailable(hDeviceModelName[], deviceModelNameIsAvailable);
    spinNodeIsReadable(hDeviceModelName[], deviceModelNameIsReadable);

    deviceModelName = Vector{UInt8}(undef, MAX_BUFFER_LEN)
    lenDeviceModelName = Ref(Csize_t(MAX_BUFFER_LEN))
    if (deviceModelNameIsAvailable[] == true) && (deviceModelNameIsReadable[] == true)
      spinStringGetValue(hDeviceModelName[], deviceModelName, lenDeviceModelName);
      modelname = unsafe_string(pointer(deviceModelName))
    else
      modelname = "Unable to read model name"
    end

    # Get camera serial number
    hDeviceSerialNo = Ref(spinNodeHandle(C_NULL))
    deviceSerialNoIsAvailable = Ref(bool8_t(false))
    deviceSerialNoIsReadable = Ref(bool8_t(false))
    spinNodeMapGetNode(hNodeMapTLDevice[], "DeviceSerialNumber", hDeviceSerialNo);
    spinNodeIsAvailable(hDeviceSerialNo[], deviceSerialNoIsAvailable);
    spinNodeIsReadable(hDeviceSerialNo[], deviceSerialNoIsReadable);

    deviceSerialNo = Vector{UInt8}(undef, MAX_BUFFER_LEN)
    lenDeviceSerialNo = Ref(Csize_t(MAX_BUFFER_LEN))
    if (deviceSerialNoIsAvailable[] == true) && (deviceSerialNoIsReadable[] == true)
      spinStringGetValue(hDeviceSerialNo[], deviceSerialNo, lenDeviceSerialNo);
      serialno = unsafe_string(pointer(deviceSerialNo))
    else
      modelname = "Unable to read serial number"
    end

    spinCameraRelease(hCam[]);
    write(io, "$i\t$serialno\t$vendorname $modelname")

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
