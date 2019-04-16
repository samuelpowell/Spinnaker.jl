# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# acquistion.jl: replicate Acquisition_C Spinnaker SDK example with low-level library
using Spinnaker

outpath = joinpath(@__DIR__, "output")
mkpath(outpath)

using Spinnaker
import Spinnaker: bool8_t, MAX_BUFFER_LEN

# Get system interface and library version
hSystem = Ref(spinSystem(C_NULL))
spinSystemGetInstance(hSystem)

hLibraryVersion = Ref(spinLibraryVersion(0,0,0,0))
spinSystemGetLibraryVersion(hSystem[], hLibraryVersion)

libver = VersionNumber(hLibraryVersion[].major, hLibraryVersion[].minor, hLibraryVersion[].type)
@info "Spinnaker library version: $libver, build $(hLibraryVersion[].build)"

# Retrieve camera list (from system object)
hCameraList = Ref(spinCameraList(C_NULL))
nCameras = Ref(Csize_t(0))
spinCameraListCreateEmpty(hCameraList)
spinSystemGetCameras(hSystem[], hCameraList[])
spinCameraListGetSize(hCameraList[], nCameras)

@info "Discovered $(nCameras[]) cameras"

function readable(hNode, nodeName)
   pbAvailable = Ref(bool8_t(false))
   pbReadable = Ref(bool8_t(false))
   spinNodeIsAvailable(hNode, pbAvailable)
   spinNodeIsReadable(hNode, pbReadable)
   return (pbReadable[] == 1) && (pbAvailable[] == 1)
end

function writable(hNode, nodeName)
  pbAvailable = Ref(bool8_t(false))
  pbReadable = Ref(bool8_t(false))
  spinNodeIsAvailable(hNode, pbAvailable)
  spinNodeIsWritable(hNode, pbReadable)
  return (pbReadable[] == 1) && (pbAvailable[] == 1)
end


function acquire_images(hCam, hNodeMap, hNodeMapTLDevice)

  # Set acquisition mode
  hAcquisitionMode = Ref(spinNodeHandle(C_NULL))
  hAcquisitionModeContinuous = Ref(spinNodeHandle(C_NULL))
  acquisitionModeContinuous = Ref(Int64(0))

  spinNodeMapGetNode(hNodeMap[], "AcquisitionMode", hAcquisitionMode)
  if readable(hAcquisitionMode[], "AcquisitionMode")
    spinEnumerationGetEntryByName(hAcquisitionMode[], "Continuous", hAcquisitionModeContinuous)
  else
    @error "Unable to retrieve acquistion mode enumeration"
  end

  if readable(hAcquisitionModeContinuous[], "AcquisitionModeContinuous")
    spinEnumerationEntryGetIntValue(hAcquisitionModeContinuous[], acquisitionModeContinuous);
  else
    @error "Unable to retrieve continuous acquistion enumeration"
  end

  if writable(hAcquisitionMode[], "AcquisitionMode")
      spinEnumerationSetIntValue(hAcquisitionMode[], acquisitionModeContinuous[])
  else
      @info "Unable to set continuous acquistion mode"
  end

  @info "Acquistion mode set to continuous"

  # Begin acquistion
  spinCameraBeginAcquisition(hCam[])
  @info "Started camera acquistion"

  # Get serial number
  hDeviceSerialNumber = Ref(spinNodeHandle(C_NULL))
  deviceSerialNumber = Vector{UInt8}(undef, MAX_BUFFER_LEN)
  lenDeviceSerialNumber = Ref(Csize_t(MAX_BUFFER_LEN))

   spinNodeMapGetNode(hNodeMapTLDevice[], "DeviceSerialNumber", hDeviceSerialNumber)
   if readable(hDeviceSerialNumber[], "DeviceSerialNumber")
     spinStringGetValue(hDeviceSerialNumber[], deviceSerialNumber, lenDeviceSerialNumber)
   else
     @info "Cannot receive camera serial number"
   end

   @info "Camera serial number: $(unsafe_string(pointer(deviceSerialNumber)))"

   # Retrieve, convert, and save images
   for imageCnt in 1:10

    hResultImage = Ref(spinImage(C_NULL))
    spinCameraGetNextImage(hCam[], hResultImage);

    isIncomplete = Ref(bool8_t(false))
    hasFailed = Ref(bool8_t(false))

    spinImageIsIncomplete(hResultImage[], isIncomplete);

    if (isIncomplete == true)
      imageStatus = Ref(spinImageStatus(IMAGE_NO_ERROR))
      spinImageGetStatus(hResultImage[], imageStatus)
      @info "Image incomplete with error $(imageStatus)"
      hasFailed = true
    end

    if (hasFailed == true)
      spinImageRelease(hResultImage[]);
    end

    # Get image dimensions
    width = Ref(Csize_t(0))
    height = Ref(Csize_t(0))
    spinImageGetWidth(hResultImage[], width);
    spinImageGetHeight(hResultImage[], height);
    @info "Grabbed image $imageCnt, width: $(width[]), height: $(height[])"

    # Convert image to MONO8
    hConvertedImage = Ref(spinImage(C_NULL))
    spinImageCreateEmpty(hConvertedImage);
    spinImageConvert(hResultImage[], Spinnaker.PixelFormat_Mono8, hConvertedImage[]);
    @info "Converted image to MONO 8"

    # Save to disc
    filename = joinpath(outpath, "acquistion_" * unsafe_string(pointer(deviceSerialNumber)) * string(imageCnt) * ".jpg")
    spinImageSave(hConvertedImage[], filename, Spinnaker.JPEG);
    @info "Image Saved to $filename"

    # Destroy converted image and release camera image
    spinImageDestroy(hConvertedImage[]);
    spinImageRelease(hResultImage[]);

  end

  spinCameraEndAcquisition(hCam[])
  @info "Stopped camera acquistion"

  return nothing
end

function run_camera(hCam)
  hNodeMapTLDevice = Ref(spinNodeMapHandle(C_NULL))
  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetTLDeviceNodeMap(hCam[], hNodeMapTLDevice);
  spinCameraInit(hCam[]);
  spinCameraGetNodeMap(hCam[], hNodeMap);
  acquire_images(hCam, hNodeMap, hNodeMapTLDevice);
  spinCameraDeInit(hCam[]);
  return nothing
end

if nCameras[] > 0
  hCam = Ref(spinCamera(C_NULL))
  for i in 0:nCameras[]-1
    spinCameraListGet(hCameraList[], i, hCam);
    run_camera(hCam)
    spinCameraRelease(hCam[])
  end
else
  # Finish if there are no cameras
  @info "No cameras, finishing"
end

spinCameraListClear(hCameraList[])
spinCameraListDestroy(hCameraList[])
spinSystemReleaseInstance(hSystem[])
