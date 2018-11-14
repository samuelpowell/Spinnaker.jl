using Spinnaker
import Spinnaker: bool8_t, MAX_BUFFER_LEN

# Get system interface and library version
hSystem = Ref(spinSystem(C_NULL))
spinSystemGetInstance(hSystem)

hLibraryVersion = Ref(spinLibraryVersion(0,0,0,0))
spinSystemGetLibraryVersion(hSystem[], hLibraryVersion)

libver = VersionNumber(hLibraryVersion[].major, hLibraryVersion[].minor, hLibraryVersion[].type)
@info "Spinnaker library version: $libver, build $(hLibraryVersion[].build)"

# Retrieve list of interfaces
hInterfaceList = Ref(spinInterfaceList(C_NULL))
nInterfaces = Ref(Csize_t(0))
spinInterfaceListCreateEmpty(hInterfaceList)
spinSystemGetInterfaces(hSystem[], hInterfaceList[])
spinInterfaceListGetSize(hInterfaceList[], nInterfaces)

@info "Discovered $(nInterfaces[]) interfaces"

# Retrieve camera list (from system object)
hCameraList = Ref(spinCameraList(C_NULL))
nCameras = Ref(Csize_t(0))
spinCameraListCreateEmpty(hCameraList)
spinSystemGetCameras(hSystem[], hCameraList[])
spinCameraListGetSize(hCameraList[], nCameras)

@info "Discovered $(nCameras[]) cameras"

# Examine a given interface
function query_interface(hInterface)

  # Get interface and print details
  hNodeMapInterface = Ref(spinNodeMapHandle(C_NULL))
  hInterfaceDisplayName = Ref(spinNodeHandle(C_NULL))
  interfaceDisplayNameIsAvailable = Ref(bool8_t(false))
  interfaceDisplayNameIsReadable = Ref(bool8_t(false))
  spinInterfaceGetTLNodeMap(hInterface, hNodeMapInterface);
  spinNodeMapGetNode(hNodeMapInterface[], "InterfaceDisplayName", hInterfaceDisplayName);
  spinNodeIsAvailable(hInterfaceDisplayName[], interfaceDisplayNameIsAvailable);
  spinNodeIsReadable(hInterfaceDisplayName[], interfaceDisplayNameIsReadable);

  interfaceDisplayName = Vector{UInt8}(undef, MAX_BUFFER_LEN)
  lenInterfaceDisplayName = Ref(Csize_t(MAX_BUFFER_LEN))
  if (interfaceDisplayNameIsAvailable[] == true) && (interfaceDisplayNameIsReadable[] == true)
    spinStringGetValue(hInterfaceDisplayName[], interfaceDisplayName, lenInterfaceDisplayName);
    @info "$(unsafe_string(pointer(interfaceDisplayName)))"
  else
    @info "Interface display name not readable"
  end

  hCameraList = Ref(spinCameraList(C_NULL))
  nCameras = Ref(Csize_t(0))
  spinCameraListCreateEmpty(hCameraList)
  spinInterfaceGetCameras(hInterface, hCameraList[]);
  spinCameraListGetSize(hCameraList[], nCameras);

  # Get cameras on interface nd print details
  if nCameras[] > 0

    for i in 0:nCameras[]-1

      hCam = Ref(spinCamera(C_NULL))
      spinCameraListGet(hCameraList[], i, hCam);

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
        @info "$(unsafe_string(pointer(deviceVendorName)))"
      else
        @info "Camera vendor name not readable"
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
        @info "$(unsafe_string(pointer(deviceModelName)))"
      else
        @info "Camera model name not readable"
      end

      spinCameraRelease(hCam);

    end
  else
    @info "No cameras detected"
  end

  spinCameraListClear(hCameraList);
  spinCameraListDestroy(hCameraList);
  return nothing

end

# Examine cameras on each interface
if nCameras[] > 0
  for i in 0:nInterfaces[]-1
    hInterface = Ref(spinInterface(C_NULL))
    spinInterfaceListGet(hInterfaceList[], i, hInterface)
    query_interface(hInterface[])
    spinInterfaceRelease(hInterface[])
  end
else
  # Finish if there are no cameras
  @info "No cameras, finishing"
end

# Cleanup
spinCameraListClear(hCameraList[])
spinCameraListDestroy(hCameraList[])
spinInterfaceListClear(hInterfaceList[])
spinInterfaceListDestroy(hInterfaceList[])
spinSystemReleaseInstance(hSystem[])
