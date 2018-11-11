# Julia wrapper for header: /usr/include/spinnaker/spinc/SpinnakerC.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function spinErrorGetLast(pError)
    ccall((:spinErrorGetLast, libSpinnaker_C), spinError, (Ptr{spinError},), pError)
end

function spinErrorGetLastMessage(pBuf, pBufLen)
    ccall((:spinErrorGetLastMessage, libSpinnaker_C), spinError, (Cstring, Ptr{Csize_t}), pBuf, pBufLen)
end

function spinErrorGetLastBuildDate(pBuf, pBufLen)
    ccall((:spinErrorGetLastBuildDate, libSpinnaker_C), spinError, (Cstring, Ptr{Csize_t}), pBuf, pBufLen)
end

function spinErrorGetLastBuildTime(pBuf, pBufLen)
    ccall((:spinErrorGetLastBuildTime, libSpinnaker_C), spinError, (Cstring, Ptr{Csize_t}), pBuf, pBufLen)
end

function spinErrorGetLastFileName(pBuf, pBufLen)
    ccall((:spinErrorGetLastFileName, libSpinnaker_C), spinError, (Cstring, Ptr{Csize_t}), pBuf, pBufLen)
end

function spinErrorGetLastFullMessage(pBuf, pBufLen)
    ccall((:spinErrorGetLastFullMessage, libSpinnaker_C), spinError, (Cstring, Ptr{Csize_t}), pBuf, pBufLen)
end

function spinErrorGetLastFunctionName(pBuf, pBufLen)
    ccall((:spinErrorGetLastFunctionName, libSpinnaker_C), spinError, (Cstring, Ptr{Csize_t}), pBuf, pBufLen)
end

function spinErrorGetLastLineNumber(pLineNum)
    ccall((:spinErrorGetLastLineNumber, libSpinnaker_C), spinError, (Ptr{Int64},), pLineNum)
end

function spinSystemGetInstance(phSystem)
    ccall((:spinSystemGetInstance, libSpinnaker_C), spinError, (Ptr{spinSystem},), phSystem)
end

function spinSystemReleaseInstance(hSystem::spinSystem)
    ccall((:spinSystemReleaseInstance, libSpinnaker_C), spinError, (spinSystem,), hSystem)
end

function spinSystemGetInterfaces(hSystem::spinSystem, hInterfaceList::spinInterfaceList)
    ccall((:spinSystemGetInterfaces, libSpinnaker_C), spinError, (spinSystem, spinInterfaceList), hSystem, hInterfaceList)
end

function spinSystemGetCameras(hSystem::spinSystem, hCameraList::spinCameraList)
    ccall((:spinSystemGetCameras, libSpinnaker_C), spinError, (spinSystem, spinCameraList), hSystem, hCameraList)
end

function spinSystemGetCamerasEx(hSystem::spinSystem, bUpdateInterfaces::bool8_t, bUpdateCameras::bool8_t, hCameraList::spinCameraList)
    ccall((:spinSystemGetCamerasEx, libSpinnaker_C), spinError, (spinSystem, bool8_t, bool8_t, spinCameraList), hSystem, bUpdateInterfaces, bUpdateCameras, hCameraList)
end

function spinSystemSetLoggingLevel(hSystem::spinSystem, logLevel::spinnakerLogLevel)
    ccall((:spinSystemSetLoggingLevel, libSpinnaker_C), spinError, (spinSystem, spinnakerLogLevel), hSystem, logLevel)
end

function spinSystemGetLoggingLevel(hSystem::spinSystem, pLogLevel)
    ccall((:spinSystemGetLoggingLevel, libSpinnaker_C), spinError, (spinSystem, Ptr{spinnakerLogLevel}), hSystem, pLogLevel)
end

function spinSystemRegisterLogEvent(hSystem::spinSystem, hLogEvent::spinLogEvent)
    ccall((:spinSystemRegisterLogEvent, libSpinnaker_C), spinError, (spinSystem, spinLogEvent), hSystem, hLogEvent)
end

function spinSystemUnregisterLogEvent(hSystem::spinSystem, hLogEvent::spinLogEvent)
    ccall((:spinSystemUnregisterLogEvent, libSpinnaker_C), spinError, (spinSystem, spinLogEvent), hSystem, hLogEvent)
end

function spinSystemUnregisterAllLogEvents(hSystem::spinSystem)
    ccall((:spinSystemUnregisterAllLogEvents, libSpinnaker_C), spinError, (spinSystem,), hSystem)
end

function spinSystemIsInUse(hSystem::spinSystem, pbIsInUse)
    ccall((:spinSystemIsInUse, libSpinnaker_C), spinError, (spinSystem, Ptr{bool8_t}), hSystem, pbIsInUse)
end

function spinSystemRegisterArrivalEvent(hSystem::spinSystem, hArrivalEvent::spinArrivalEvent)
    ccall((:spinSystemRegisterArrivalEvent, libSpinnaker_C), spinError, (spinSystem, spinArrivalEvent), hSystem, hArrivalEvent)
end

function spinSystemRegisterRemovalEvent(hSystem::spinSystem, hRemovalEvent::spinRemovalEvent)
    ccall((:spinSystemRegisterRemovalEvent, libSpinnaker_C), spinError, (spinSystem, spinRemovalEvent), hSystem, hRemovalEvent)
end

function spinSystemUnregisterArrivalEvent(hSystem::spinSystem, hArrivalEvent::spinArrivalEvent)
    ccall((:spinSystemUnregisterArrivalEvent, libSpinnaker_C), spinError, (spinSystem, spinArrivalEvent), hSystem, hArrivalEvent)
end

function spinSystemUnregisterRemovalEvent(hSystem::spinSystem, hRemovalEvent::spinRemovalEvent)
    ccall((:spinSystemUnregisterRemovalEvent, libSpinnaker_C), spinError, (spinSystem, spinRemovalEvent), hSystem, hRemovalEvent)
end

function spinSystemRegisterInterfaceEvent(hSystem::spinSystem, hInterfaceEvent::spinInterfaceEvent)
    ccall((:spinSystemRegisterInterfaceEvent, libSpinnaker_C), spinError, (spinSystem, spinInterfaceEvent), hSystem, hInterfaceEvent)
end

function spinSystemUnregisterInterfaceEvent(hSystem::spinSystem, hInterfaceEvent::spinInterfaceEvent)
    ccall((:spinSystemUnregisterInterfaceEvent, libSpinnaker_C), spinError, (spinSystem, spinInterfaceEvent), hSystem, hInterfaceEvent)
end

function spinSystemUpdateCameras(hSystem::spinSystem, pbChanged)
    ccall((:spinSystemUpdateCameras, libSpinnaker_C), spinError, (spinSystem, Ptr{bool8_t}), hSystem, pbChanged)
end

function spinSystemUpdateCamerasEx(hSystem::spinSystem, bUpdateInterfaces::bool8_t, pbChanged)
    ccall((:spinSystemUpdateCamerasEx, libSpinnaker_C), spinError, (spinSystem, bool8_t, Ptr{bool8_t}), hSystem, bUpdateInterfaces, pbChanged)
end

function spinSystemSendActionCommand(hSystem::spinSystem, iDeviceKey::Csize_t, iGroupKey::Csize_t, iGroupMask::Csize_t, iActionTime::Csize_t, piResultSize, results)
    ccall((:spinSystemSendActionCommand, libSpinnaker_C), spinError, (spinSystem, Csize_t, Csize_t, Csize_t, Csize_t, Ptr{Csize_t}, Ptr{actionCommandResult}), hSystem, iDeviceKey, iGroupKey, iGroupMask, iActionTime, piResultSize, results)
end

function spinSystemGetLibraryVersion(hSystem::spinSystem, hLibraryVersion)
    ccall((:spinSystemGetLibraryVersion, libSpinnaker_C), spinError, (spinSystem, Ptr{spinLibraryVersion}), hSystem, hLibraryVersion)
end

function spinInterfaceListCreateEmpty(phInterfaceList)
    ccall((:spinInterfaceListCreateEmpty, libSpinnaker_C), spinError, (Ptr{spinInterfaceList},), phInterfaceList)
end

function spinInterfaceListDestroy(hInterfaceList::spinInterfaceList)
    ccall((:spinInterfaceListDestroy, libSpinnaker_C), spinError, (spinInterfaceList,), hInterfaceList)
end

function spinInterfaceListGetSize(hInterfaceList::spinInterfaceList, pSize)
    ccall((:spinInterfaceListGetSize, libSpinnaker_C), spinError, (spinInterfaceList, Ptr{Csize_t}), hInterfaceList, pSize)
end

function spinInterfaceListGet(hInterfaceList::spinInterfaceList, index::Csize_t, phInterface)
    ccall((:spinInterfaceListGet, libSpinnaker_C), spinError, (spinInterfaceList, Csize_t, Ptr{spinInterface}), hInterfaceList, index, phInterface)
end

function spinInterfaceListClear(hInterfaceList::spinInterfaceList)
    ccall((:spinInterfaceListClear, libSpinnaker_C), spinError, (spinInterfaceList,), hInterfaceList)
end

function spinCameraListCreateEmpty(phCameraList)
    ccall((:spinCameraListCreateEmpty, libSpinnaker_C), spinError, (Ptr{spinCameraList},), phCameraList)
end

function spinCameraListDestroy(hCameraList::spinCameraList)
    ccall((:spinCameraListDestroy, libSpinnaker_C), spinError, (spinCameraList,), hCameraList)
end

function spinCameraListGetSize(hCameraList::spinCameraList, pSize)
    ccall((:spinCameraListGetSize, libSpinnaker_C), spinError, (spinCameraList, Ptr{Csize_t}), hCameraList, pSize)
end

function spinCameraListGet(hCameraList::spinCameraList, index::Csize_t, phCamera)
    ccall((:spinCameraListGet, libSpinnaker_C), spinError, (spinCameraList, Csize_t, Ptr{spinCamera}), hCameraList, index, phCamera)
end

function spinCameraListClear(hCameraList::spinCameraList)
    ccall((:spinCameraListClear, libSpinnaker_C), spinError, (spinCameraList,), hCameraList)
end

function spinCameraListRemove(hCameraList::spinCameraList, index::Csize_t)
    ccall((:spinCameraListRemove, libSpinnaker_C), spinError, (spinCameraList, Csize_t), hCameraList, index)
end

function spinCameraListAppend(hCameraListBase::spinCameraList, hCameraListToAppend::spinCameraList)
    ccall((:spinCameraListAppend, libSpinnaker_C), spinError, (spinCameraList, spinCameraList), hCameraListBase, hCameraListToAppend)
end

function spinCameraListGetBySerial(hCameraList::spinCameraList, pSerial, phCamera)
    ccall((:spinCameraListGetBySerial, libSpinnaker_C), spinError, (spinCameraList, Cstring, Ptr{spinCamera}), hCameraList, pSerial, phCamera)
end

function spinCameraListRemoveBySerial(hCameraList::spinCameraList, pSerial)
    ccall((:spinCameraListRemoveBySerial, libSpinnaker_C), spinError, (spinCameraList, Cstring), hCameraList, pSerial)
end

function spinInterfaceUpdateCameras(hInterface::spinInterface, pbChanged)
    ccall((:spinInterfaceUpdateCameras, libSpinnaker_C), spinError, (spinInterface, Ptr{bool8_t}), hInterface, pbChanged)
end

function spinInterfaceGetCameras(hInterface::spinInterface, hCameraList::spinCameraList)
    ccall((:spinInterfaceGetCameras, libSpinnaker_C), spinError, (spinInterface, spinCameraList), hInterface, hCameraList)
end

function spinInterfaceGetCamerasEx(hInterface::spinInterface, bUpdateCameras::bool8_t, hCameraList::spinCameraList)
    ccall((:spinInterfaceGetCamerasEx, libSpinnaker_C), spinError, (spinInterface, bool8_t, spinCameraList), hInterface, bUpdateCameras, hCameraList)
end

function spinInterfaceGetTLNodeMap(hInterface::spinInterface, phNodeMap)
    ccall((:spinInterfaceGetTLNodeMap, libSpinnaker_C), spinError, (spinInterface, Ptr{spinNodeMapHandle}), hInterface, phNodeMap)
end

function spinInterfaceRegisterArrivalEvent(hInterface::spinInterface, hArrivalEvent::spinArrivalEvent)
    ccall((:spinInterfaceRegisterArrivalEvent, libSpinnaker_C), spinError, (spinInterface, spinArrivalEvent), hInterface, hArrivalEvent)
end

function spinInterfaceRegisterRemovalEvent(hInterface::spinInterface, hRemovalEvent::spinRemovalEvent)
    ccall((:spinInterfaceRegisterRemovalEvent, libSpinnaker_C), spinError, (spinInterface, spinRemovalEvent), hInterface, hRemovalEvent)
end

function spinInterfaceUnregisterArrivalEvent(hInterface::spinInterface, hArrivalEvent::spinArrivalEvent)
    ccall((:spinInterfaceUnregisterArrivalEvent, libSpinnaker_C), spinError, (spinInterface, spinArrivalEvent), hInterface, hArrivalEvent)
end

function spinInterfaceUnregisterRemovalEvent(hInterface::spinInterface, hRemovalEvent::spinRemovalEvent)
    ccall((:spinInterfaceUnregisterRemovalEvent, libSpinnaker_C), spinError, (spinInterface, spinRemovalEvent), hInterface, hRemovalEvent)
end

function spinInterfaceRegisterInterfaceEvent(hInterface::spinInterface, hInterfaceEvent::spinInterfaceEvent)
    ccall((:spinInterfaceRegisterInterfaceEvent, libSpinnaker_C), spinError, (spinInterface, spinInterfaceEvent), hInterface, hInterfaceEvent)
end

function spinInterfaceUnregisterInterfaceEvent(hInterface::spinInterface, hInterfaceEvent::spinInterfaceEvent)
    ccall((:spinInterfaceUnregisterInterfaceEvent, libSpinnaker_C), spinError, (spinInterface, spinInterfaceEvent), hInterface, hInterfaceEvent)
end

function spinInterfaceRelease(hInterface::spinInterface)
    ccall((:spinInterfaceRelease, libSpinnaker_C), spinError, (spinInterface,), hInterface)
end

function spinInterfaceIsInUse(hInterface::spinInterface, pbIsInUse)
    ccall((:spinInterfaceIsInUse, libSpinnaker_C), spinError, (spinInterface, Ptr{bool8_t}), hInterface, pbIsInUse)
end

function spinInterfaceSendActionCommand(hInterface::spinInterface, iDeviceKey::Csize_t, iGroupKey::Csize_t, iGroupMask::Csize_t, iActionTime::Csize_t, piResultSize, results)
    ccall((:spinInterfaceSendActionCommand, libSpinnaker_C), spinError, (spinInterface, Csize_t, Csize_t, Csize_t, Csize_t, Ptr{Csize_t}, Ptr{actionCommandResult}), hInterface, iDeviceKey, iGroupKey, iGroupMask, iActionTime, piResultSize, results)
end

function spinCameraInit(hCamera::spinCamera)
    ccall((:spinCameraInit, libSpinnaker_C), spinError, (spinCamera,), hCamera)
end

function spinCameraDeInit(hCamera::spinCamera)
    ccall((:spinCameraDeInit, libSpinnaker_C), spinError, (spinCamera,), hCamera)
end

function spinCameraGetNodeMap(hCamera::spinCamera, phNodeMap)
    ccall((:spinCameraGetNodeMap, libSpinnaker_C), spinError, (spinCamera, Ptr{spinNodeMapHandle}), hCamera, phNodeMap)
end

function spinCameraGetTLDeviceNodeMap(hCamera::spinCamera, phNodeMap)
    ccall((:spinCameraGetTLDeviceNodeMap, libSpinnaker_C), spinError, (spinCamera, Ptr{spinNodeMapHandle}), hCamera, phNodeMap)
end

function spinCameraGetTLStreamNodeMap(hCamera::spinCamera, phNodeMap)
    ccall((:spinCameraGetTLStreamNodeMap, libSpinnaker_C), spinError, (spinCamera, Ptr{spinNodeMapHandle}), hCamera, phNodeMap)
end

function spinCameraGetAccessMode(hCamera::spinCamera, pAccessMode)
    ccall((:spinCameraGetAccessMode, libSpinnaker_C), spinError, (spinCamera, Ptr{spinAccessMode}), hCamera, pAccessMode)
end

function spinCameraReadPort(hCamera::spinCamera, iAddress::UInt64, pBuffer, iSize::Csize_t)
    ccall((:spinCameraReadPort, libSpinnaker_C), spinError, (spinCamera, UInt64, Ptr{Cvoid}, Csize_t), hCamera, iAddress, pBuffer, iSize)
end

function spinCameraWritePort(hCamera::spinCamera, iAddress::UInt64, pBuffer, iSize::Csize_t)
    ccall((:spinCameraWritePort, libSpinnaker_C), spinError, (spinCamera, UInt64, Ptr{Cvoid}, Csize_t), hCamera, iAddress, pBuffer, iSize)
end

function spinCameraBeginAcquisition(hCamera::spinCamera)
    ccall((:spinCameraBeginAcquisition, libSpinnaker_C), spinError, (spinCamera,), hCamera)
end

function spinCameraEndAcquisition(hCamera::spinCamera)
    ccall((:spinCameraEndAcquisition, libSpinnaker_C), spinError, (spinCamera,), hCamera)
end

function spinCameraGetNextImage(hCamera::spinCamera, phImage)
    ccall((:spinCameraGetNextImage, libSpinnaker_C), spinError, (spinCamera, Ptr{spinImage}), hCamera, phImage)
end

function spinCameraGetNextImageEx(hCamera::spinCamera, grabTimeout::UInt64, phImage)
    ccall((:spinCameraGetNextImageEx, libSpinnaker_C), spinError, (spinCamera, UInt64, Ptr{spinImage}), hCamera, grabTimeout, phImage)
end

function spinCameraGetUniqueID(hCamera::spinCamera, pBuf, pBufLen)
    ccall((:spinCameraGetUniqueID, libSpinnaker_C), spinError, (spinCamera, Cstring, Ptr{Csize_t}), hCamera, pBuf, pBufLen)
end

function spinCameraIsStreaming(hCamera::spinCamera, pbIsStreaming)
    ccall((:spinCameraIsStreaming, libSpinnaker_C), spinError, (spinCamera, Ptr{bool8_t}), hCamera, pbIsStreaming)
end

function spinCameraGetGuiXml(hCamera::spinCamera, pBuf, pBufLen)
    ccall((:spinCameraGetGuiXml, libSpinnaker_C), spinError, (spinCamera, Cstring, Ptr{Csize_t}), hCamera, pBuf, pBufLen)
end

function spinCameraRegisterDeviceEvent(hCamera::spinCamera, hDeviceEvent::spinDeviceEvent)
    ccall((:spinCameraRegisterDeviceEvent, libSpinnaker_C), spinError, (spinCamera, spinDeviceEvent), hCamera, hDeviceEvent)
end

function spinCameraRegisterDeviceEventEx(hCamera::spinCamera, hDeviceEvent::spinDeviceEvent, pName)
    ccall((:spinCameraRegisterDeviceEventEx, libSpinnaker_C), spinError, (spinCamera, spinDeviceEvent, Cstring), hCamera, hDeviceEvent, pName)
end

function spinCameraUnregisterDeviceEvent(hCamera::spinCamera, hDeviceEvent::spinDeviceEvent)
    ccall((:spinCameraUnregisterDeviceEvent, libSpinnaker_C), spinError, (spinCamera, spinDeviceEvent), hCamera, hDeviceEvent)
end

function spinCameraRegisterImageEvent(hCamera::spinCamera, hImageEvent::spinImageEvent)
    ccall((:spinCameraRegisterImageEvent, libSpinnaker_C), spinError, (spinCamera, spinImageEvent), hCamera, hImageEvent)
end

function spinCameraUnregisterImageEvent(hCamera::spinCamera, hImageEvent::spinImageEvent)
    ccall((:spinCameraUnregisterImageEvent, libSpinnaker_C), spinError, (spinCamera, spinImageEvent), hCamera, hImageEvent)
end

function spinCameraRelease(hCamera::spinCamera)
    ccall((:spinCameraRelease, libSpinnaker_C), spinError, (spinCamera,), hCamera)
end

function spinCameraIsValid(hCamera::spinCamera, pbValid)
    ccall((:spinCameraIsValid, libSpinnaker_C), spinError, (spinCamera, Ptr{bool8_t}), hCamera, pbValid)
end

function spinCameraIsInitialized(hCamera::spinCamera, pbInit)
    ccall((:spinCameraIsInitialized, libSpinnaker_C), spinError, (spinCamera, Ptr{bool8_t}), hCamera, pbInit)
end

function spinCameraDiscoverMaxPacketSize(hCamera::spinCamera, pMaxPacketSize)
    ccall((:spinCameraDiscoverMaxPacketSize, libSpinnaker_C), spinError, (spinCamera, Ptr{UInt32}), hCamera, pMaxPacketSize)
end

function spinImageCreateEmpty(phImage)
    ccall((:spinImageCreateEmpty, libSpinnaker_C), spinError, (Ptr{spinImage},), phImage)
end

function spinImageCreate(hSrcImage::spinImage, phDestImage)
    ccall((:spinImageCreate, libSpinnaker_C), spinError, (spinImage, Ptr{spinImage}), hSrcImage, phDestImage)
end

function spinImageCreateEx(phImage, width::Csize_t, height::Csize_t, offsetX::Csize_t, offsetY::Csize_t, pixelFormat::spinPixelFormatEnums, pData)
    ccall((:spinImageCreateEx, libSpinnaker_C), spinError, (Ptr{spinImage}, Csize_t, Csize_t, Csize_t, Csize_t, spinPixelFormatEnums, Ptr{Cvoid}), phImage, width, height, offsetX, offsetY, pixelFormat, pData)
end

function spinImageDestroy(hImage::spinImage)
    ccall((:spinImageDestroy, libSpinnaker_C), spinError, (spinImage,), hImage)
end

function spinImageSetDefaultColorProcessing(algorithm::spinColorProcessingAlgorithm)
    ccall((:spinImageSetDefaultColorProcessing, libSpinnaker_C), spinError, (spinColorProcessingAlgorithm,), algorithm)
end

function spinImageGetDefaultColorProcessing(pAlgorithm)
    ccall((:spinImageGetDefaultColorProcessing, libSpinnaker_C), spinError, (Ptr{spinColorProcessingAlgorithm},), pAlgorithm)
end

function spinImageGetColorProcessing(hImage::spinImage, pAlgorithm)
    ccall((:spinImageGetColorProcessing, libSpinnaker_C), spinError, (spinImage, Ptr{spinColorProcessingAlgorithm}), hImage, pAlgorithm)
end

function spinImageConvert(hSrcImage::spinImage, pixelFormat::spinPixelFormatEnums, hDestImage::spinImage)
    ccall((:spinImageConvert, libSpinnaker_C), spinError, (spinImage, spinPixelFormatEnums, spinImage), hSrcImage, pixelFormat, hDestImage)
end

function spinImageConvertEx(hSrcImage::spinImage, pixelFormat::spinPixelFormatEnums, algorithm::spinColorProcessingAlgorithm, hDestImage::spinImage)
    ccall((:spinImageConvertEx, libSpinnaker_C), spinError, (spinImage, spinPixelFormatEnums, spinColorProcessingAlgorithm, spinImage), hSrcImage, pixelFormat, algorithm, hDestImage)
end

function spinImageReset(hImage::spinImage, width::Csize_t, height::Csize_t, offsetX::Csize_t, offsetY::Csize_t, pixelFormat::spinPixelFormatEnums)
    ccall((:spinImageReset, libSpinnaker_C), spinError, (spinImage, Csize_t, Csize_t, Csize_t, Csize_t, spinPixelFormatEnums), hImage, width, height, offsetX, offsetY, pixelFormat)
end

function spinImageResetEx(hImage::spinImage, width::Csize_t, height::Csize_t, offsetX::Csize_t, offsetY::Csize_t, pixelFormat::spinPixelFormatEnums, pData)
    ccall((:spinImageResetEx, libSpinnaker_C), spinError, (spinImage, Csize_t, Csize_t, Csize_t, Csize_t, spinPixelFormatEnums, Ptr{Cvoid}), hImage, width, height, offsetX, offsetY, pixelFormat, pData)
end

function spinImageGetID(hImage::spinImage, pId)
    ccall((:spinImageGetID, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pId)
end

function spinImageGetData(hImage::spinImage, ppData)
    ccall((:spinImageGetData, libSpinnaker_C), spinError, (spinImage, Ptr{Ptr{Cvoid}}), hImage, ppData)
end

function spinImageGetPrivateData(hImage::spinImage, ppData)
    ccall((:spinImageGetPrivateData, libSpinnaker_C), spinError, (spinImage, Ptr{Ptr{Cvoid}}), hImage, ppData)
end

function spinImageGetBufferSize(hImage::spinImage, pSize)
    ccall((:spinImageGetBufferSize, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pSize)
end

function spinImageDeepCopy(hSrcImage::spinImage, hDestImage::spinImage)
    ccall((:spinImageDeepCopy, libSpinnaker_C), spinError, (spinImage, spinImage), hSrcImage, hDestImage)
end

function spinImageGetWidth(hImage::spinImage, pWidth)
    ccall((:spinImageGetWidth, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pWidth)
end

function spinImageGetHeight(hImage::spinImage, pHeight)
    ccall((:spinImageGetHeight, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pHeight)
end

function spinImageGetOffsetX(hImage::spinImage, pOffsetX)
    ccall((:spinImageGetOffsetX, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pOffsetX)
end

function spinImageGetOffsetY(hImage::spinImage, pOffsetY)
    ccall((:spinImageGetOffsetY, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pOffsetY)
end

function spinImageGetPaddingX(hImage::spinImage, pPaddingX)
    ccall((:spinImageGetPaddingX, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pPaddingX)
end

function spinImageGetPaddingY(hImage::spinImage, pPaddingY)
    ccall((:spinImageGetPaddingY, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pPaddingY)
end

function spinImageGetFrameID(hImage::spinImage, pFrameID)
    ccall((:spinImageGetFrameID, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pFrameID)
end

function spinImageGetTimeStamp(hImage::spinImage, pTimeStamp)
    ccall((:spinImageGetTimeStamp, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pTimeStamp)
end

function spinImageGetPayloadType(hImage::spinImage, pPayloadType)
    ccall((:spinImageGetPayloadType, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pPayloadType)
end

function spinImageGetTLPayloadType(hImage::spinImage, pPayloadType)
    ccall((:spinImageGetTLPayloadType, libSpinnaker_C), spinError, (spinImage, Ptr{spinPayloadTypeInfoIDs}), hImage, pPayloadType)
end

function spinImageGetPixelFormat(hImage::spinImage, pPixelFormat)
    ccall((:spinImageGetPixelFormat, libSpinnaker_C), spinError, (spinImage, Ptr{spinPixelFormatEnums}), hImage, pPixelFormat)
end

function spinImageGetTLPixelFormat(hImage::spinImage, pPixelFormat)
    ccall((:spinImageGetTLPixelFormat, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pPixelFormat)
end

function spinImageGetTLPixelFormatNamespace(hImage::spinImage, pPixelFormatNamespace)
    ccall((:spinImageGetTLPixelFormatNamespace, libSpinnaker_C), spinError, (spinImage, Ptr{spinPixelFormatNamespaceID}), hImage, pPixelFormatNamespace)
end

function spinImageGetPixelFormatName(hImage::spinImage, pBuf, pBufLen)
    ccall((:spinImageGetPixelFormatName, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{Csize_t}), hImage, pBuf, pBufLen)
end

function spinImageIsIncomplete(hImage::spinImage, pbIsIncomplete)
    ccall((:spinImageIsIncomplete, libSpinnaker_C), spinError, (spinImage, Ptr{bool8_t}), hImage, pbIsIncomplete)
end

function spinImageGetValidPayloadSize(hImage::spinImage, pSize)
    ccall((:spinImageGetValidPayloadSize, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pSize)
end

function spinImageSave(hImage::spinImage, pFilename, format::spinImageFileFormat)
    ccall((:spinImageSave, libSpinnaker_C), spinError, (spinImage, Cstring, spinImageFileFormat), hImage, pFilename, format)
end

function spinImageSaveFromExt(hImage::spinImage, pFilename)
    ccall((:spinImageSaveFromExt, libSpinnaker_C), spinError, (spinImage, Cstring), hImage, pFilename)
end

function spinImageSavePng(hImage::spinImage, pFilename, pOption)
    ccall((:spinImageSavePng, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinPNGOption}), hImage, pFilename, pOption)
end

function spinImageSavePpm(hImage::spinImage, pFilename, pOption)
    ccall((:spinImageSavePpm, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinPPMOption}), hImage, pFilename, pOption)
end

function spinImageSavePgm(hImage::spinImage, pFilename, pOption)
    ccall((:spinImageSavePgm, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinPGMOption}), hImage, pFilename, pOption)
end

function spinImageSaveTiff(hImage::spinImage, pFilename, pOption)
    ccall((:spinImageSaveTiff, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinTIFFOption}), hImage, pFilename, pOption)
end

function spinImageSaveJpeg(hImage::spinImage, pFilename, pOption)
    ccall((:spinImageSaveJpeg, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinJPEGOption}), hImage, pFilename, pOption)
end

function spinImageSaveJpg2(hImage::spinImage, pFilename, pOption)
    ccall((:spinImageSaveJpg2, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinJPG2Option}), hImage, pFilename, pOption)
end

function spinImageSaveBmp(hImage::spinImage, pFilename, pOption)
    ccall((:spinImageSaveBmp, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinBMPOption}), hImage, pFilename, pOption)
end

function spinImageGetChunkLayoutID(hImage::spinImage, pId)
    ccall((:spinImageGetChunkLayoutID, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pId)
end

function spinImageCalculateStatistics(hImage::spinImage, hStatistics::spinImageStatistics)
    ccall((:spinImageCalculateStatistics, libSpinnaker_C), spinError, (spinImage, spinImageStatistics), hImage, hStatistics)
end

function spinImageGetStatus(hImage::spinImage, pStatus)
    ccall((:spinImageGetStatus, libSpinnaker_C), spinError, (spinImage, Ptr{spinImageStatus}), hImage, pStatus)
end

function spinImageGetStatusDescription(status::spinImageStatus, pBuf, pBufLen)
    ccall((:spinImageGetStatusDescription, libSpinnaker_C), spinError, (spinImageStatus, Cstring, Ptr{Csize_t}), status, pBuf, pBufLen)
end

function spinImageRelease(hImage::spinImage)
    ccall((:spinImageRelease, libSpinnaker_C), spinError, (spinImage,), hImage)
end

function spinImageHasCRC(hImage::spinImage, pbHasCRC)
    ccall((:spinImageHasCRC, libSpinnaker_C), spinError, (spinImage, Ptr{bool8_t}), hImage, pbHasCRC)
end

function spinImageCheckCRC(hImage::spinImage, pbCheckCRC)
    ccall((:spinImageCheckCRC, libSpinnaker_C), spinError, (spinImage, Ptr{bool8_t}), hImage, pbCheckCRC)
end

function spinImageGetBitsPerPixel(hImage::spinImage, pBitsPerPixel)
    ccall((:spinImageGetBitsPerPixel, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pBitsPerPixel)
end

function spinImageGetSize(hImage::spinImage, pImageSize)
    ccall((:spinImageGetSize, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pImageSize)
end

function spinImageGetStride(hImage::spinImage, pStride)
    ccall((:spinImageGetStride, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pStride)
end

function spinDeviceEventCreate(phDeviceEvent, pFunction::spinDeviceEventFunction, pUserData)
    ccall((:spinDeviceEventCreate, libSpinnaker_C), spinError, (Ptr{spinDeviceEvent}, spinDeviceEventFunction, Ptr{Cvoid}), phDeviceEvent, pFunction, pUserData)
end

function spinDeviceEventDestroy(hDeviceEvent::spinDeviceEvent)
    ccall((:spinDeviceEventDestroy, libSpinnaker_C), spinError, (spinDeviceEvent,), hDeviceEvent)
end

function spinImageEventCreate(phImageEvent, pFunction::spinImageEventFunction, pUserData)
    ccall((:spinImageEventCreate, libSpinnaker_C), spinError, (Ptr{spinImageEvent}, spinImageEventFunction, Ptr{Cvoid}), phImageEvent, pFunction, pUserData)
end

function spinImageEventDestroy(hImageEvent::spinImageEvent)
    ccall((:spinImageEventDestroy, libSpinnaker_C), spinError, (spinImageEvent,), hImageEvent)
end

function spinArrivalEventCreate(phArrivalEvent, pFunction::spinArrivalEventFunction, pUserData)
    ccall((:spinArrivalEventCreate, libSpinnaker_C), spinError, (Ptr{spinArrivalEvent}, spinArrivalEventFunction, Ptr{Cvoid}), phArrivalEvent, pFunction, pUserData)
end

function spinArrivalEventDestroy(hArrivalEvent::spinArrivalEvent)
    ccall((:spinArrivalEventDestroy, libSpinnaker_C), spinError, (spinArrivalEvent,), hArrivalEvent)
end

function spinRemovalEventCreate(phRemovalEvent, pFunction::spinRemovalEventFunction, pUserData)
    ccall((:spinRemovalEventCreate, libSpinnaker_C), spinError, (Ptr{spinRemovalEvent}, spinRemovalEventFunction, Ptr{Cvoid}), phRemovalEvent, pFunction, pUserData)
end

function spinRemovalEventDestroy(hRemovalEvent::spinRemovalEvent)
    ccall((:spinRemovalEventDestroy, libSpinnaker_C), spinError, (spinRemovalEvent,), hRemovalEvent)
end

function spinInterfaceEventCreate(phInterfaceEvent, pArrivalFunction::spinArrivalEventFunction, pRemovalFunction::spinRemovalEventFunction, pUserData)
    ccall((:spinInterfaceEventCreate, libSpinnaker_C), spinError, (Ptr{spinInterfaceEvent}, spinArrivalEventFunction, spinRemovalEventFunction, Ptr{Cvoid}), phInterfaceEvent, pArrivalFunction, pRemovalFunction, pUserData)
end

function spinInterfaceEventDestroy(hInterfaceEvent::spinInterfaceEvent)
    ccall((:spinInterfaceEventDestroy, libSpinnaker_C), spinError, (spinInterfaceEvent,), hInterfaceEvent)
end

function spinLogEventCreate(phLogEvent, pFunction::spinLogEventFunction, pUserData)
    ccall((:spinLogEventCreate, libSpinnaker_C), spinError, (Ptr{spinLogEvent}, spinLogEventFunction, Ptr{Cvoid}), phLogEvent, pFunction, pUserData)
end

function spinLogEventDestroy(hLogEvent::spinLogEvent)
    ccall((:spinLogEventDestroy, libSpinnaker_C), spinError, (spinLogEvent,), hLogEvent)
end

function spinImageStatisticsCreate(phStatistics)
    ccall((:spinImageStatisticsCreate, libSpinnaker_C), spinError, (Ptr{spinImageStatistics},), phStatistics)
end

function spinImageStatisticsDestroy(hStatistics::spinImageStatistics)
    ccall((:spinImageStatisticsDestroy, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics)
end

function spinImageStatisticsEnableAll(hStatistics::spinImageStatistics)
    ccall((:spinImageStatisticsEnableAll, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics)
end

function spinImageStatisticsDisableAll(hStatistics::spinImageStatistics)
    ccall((:spinImageStatisticsDisableAll, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics)
end

function spinImageStatisticsEnableGreyOnly(hStatistics::spinImageStatistics)
    ccall((:spinImageStatisticsEnableGreyOnly, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics)
end

function spinImageStatisticsEnableRgbOnly(hStatistics::spinImageStatistics)
    ccall((:spinImageStatisticsEnableRgbOnly, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics)
end

function spinImageStatisticsEnableHslOnly(hStatistics::spinImageStatistics)
    ccall((:spinImageStatisticsEnableHslOnly, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics)
end

function spinImageStatisticsGetChannelStatus(hStatistics::spinImageStatistics, channel::spinStatisticsChannel, pbEnabled)
    ccall((:spinImageStatisticsGetChannelStatus, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{bool8_t}), hStatistics, channel, pbEnabled)
end

function spinImageStatisticsSetChannelStatus(hStatistics::spinImageStatistics, channel::spinStatisticsChannel, bEnable::bool8_t)
    ccall((:spinImageStatisticsSetChannelStatus, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, bool8_t), hStatistics, channel, bEnable)
end

function spinImageStatisticsGetRange(hStatistics::spinImageStatistics, channel::spinStatisticsChannel, pMin, pMax)
    ccall((:spinImageStatisticsGetRange, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{UInt32}, Ptr{UInt32}), hStatistics, channel, pMin, pMax)
end

function spinImageStatisticsGetPixelValueRange(hStatistics::spinImageStatistics, channel::spinStatisticsChannel, pMin, pMax)
    ccall((:spinImageStatisticsGetPixelValueRange, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{UInt32}, Ptr{UInt32}), hStatistics, channel, pMin, pMax)
end

function spinImageStatisticsGetNumPixelValues(hStatistics::spinImageStatistics, channel::spinStatisticsChannel, pNumValues)
    ccall((:spinImageStatisticsGetNumPixelValues, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{UInt32}), hStatistics, channel, pNumValues)
end

function spinImageStatisticsGetMean(hStatistics::spinImageStatistics, channel::spinStatisticsChannel, pMean)
    ccall((:spinImageStatisticsGetMean, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{Cfloat}), hStatistics, channel, pMean)
end

function spinImageStatisticsGetHistogram(hStatistics::spinImageStatistics, channel::spinStatisticsChannel, ppHistogram)
    ccall((:spinImageStatisticsGetHistogram, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{Ptr{Cint}}), hStatistics, channel, ppHistogram)
end

function spinImageStatisticsGetAll(hStatistics::spinImageStatistics, channel::spinStatisticsChannel, pRangeMin, pRangeMax, pPixelValueMin, pPixelValueMax, pNumPixelValues, pPixelValueMean, ppHistogram)
    ccall((:spinImageStatisticsGetAll, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{Cfloat}, Ptr{Ptr{Cint}}), hStatistics, channel, pRangeMin, pRangeMax, pPixelValueMin, pPixelValueMax, pNumPixelValues, pPixelValueMean, ppHistogram)
end

function spinLogDataGetCategoryName(hLogEventData::spinLogEventData, pBuf, pBufLen)
    ccall((:spinLogDataGetCategoryName, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen)
end

function spinLogDataGetPriority(hLogEventData::spinLogEventData, pValue)
    ccall((:spinLogDataGetPriority, libSpinnaker_C), spinError, (spinLogEventData, Ptr{Int64}), hLogEventData, pValue)
end

function spinLogDataGetPriorityName(hLogEventData::spinLogEventData, pBuf, pBufLen)
    ccall((:spinLogDataGetPriorityName, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen)
end

function spinLogDataGetTimestamp(hLogEventData::spinLogEventData, pBuf, pBufLen)
    ccall((:spinLogDataGetTimestamp, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen)
end

function spinLogDataGetNDC(hLogEventData::spinLogEventData, pBuf, pBufLen)
    ccall((:spinLogDataGetNDC, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen)
end

function spinLogDataGetThreadName(hLogEventData::spinLogEventData, pBuf, pBufLen)
    ccall((:spinLogDataGetThreadName, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen)
end

function spinLogDataGetLogMessage(hLogEventData::spinLogEventData, pBuf, pBufLen)
    ccall((:spinLogDataGetLogMessage, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen)
end

function spinDeviceEventGetId(hDeviceEventData::spinDeviceEventData, pEventId)
    ccall((:spinDeviceEventGetId, libSpinnaker_C), spinError, (spinDeviceEventData, Ptr{UInt64}), hDeviceEventData, pEventId)
end

function spinDeviceEventGetPayloadData(hDeviceEventData::spinDeviceEventData, pBuf, pBufSize)
    ccall((:spinDeviceEventGetPayloadData, libSpinnaker_C), spinError, (spinDeviceEventData, Ptr{UInt8}, Ptr{Csize_t}), hDeviceEventData, pBuf, pBufSize)
end

function spinDeviceEventGetPayloadDataSize(hDeviceEventData::spinDeviceEventData, pBufSize)
    ccall((:spinDeviceEventGetPayloadDataSize, libSpinnaker_C), spinError, (spinDeviceEventData, Ptr{Csize_t}), hDeviceEventData, pBufSize)
end

function spinDeviceEventGetName(hDeviceEventData::spinDeviceEventData, pBuf, pBufLen)
    ccall((:spinDeviceEventGetName, libSpinnaker_C), spinError, (spinDeviceEventData, Cstring, Ptr{Csize_t}), hDeviceEventData, pBuf, pBufLen)
end

function spinAVIRecorderOpenUncompressed(phRecorder, pName, option::spinAVIOption)
    ccall((:spinAVIRecorderOpenUncompressed, libSpinnaker_C), spinError, (Ptr{spinAVIRecorder}, Cstring, spinAVIOption), phRecorder, pName, option)
end

function spinAVIRecorderOpenMJPG(phRecorder, pName, option::spinMJPGOption)
    ccall((:spinAVIRecorderOpenMJPG, libSpinnaker_C), spinError, (Ptr{spinAVIRecorder}, Cstring, spinMJPGOption), phRecorder, pName, option)
end

function spinAVIRecorderOpenH264(phRecorder, pName, option::spinH264Option)
    ccall((:spinAVIRecorderOpenH264, libSpinnaker_C), spinError, (Ptr{spinAVIRecorder}, Cstring, spinH264Option), phRecorder, pName, option)
end

function spinAVIRecorderAppend(hRecorder::spinAVIRecorder, hImage::spinImage)
    ccall((:spinAVIRecorderAppend, libSpinnaker_C), spinError, (spinAVIRecorder, spinImage), hRecorder, hImage)
end

function spinAVISetMaximumSize(hRecorder::spinAVIRecorder, size::UInt32)
    ccall((:spinAVISetMaximumSize, libSpinnaker_C), spinError, (spinAVIRecorder, UInt32), hRecorder, size)
end

function spinAVIRecorderClose(hRecorder::spinAVIRecorder)
    ccall((:spinAVIRecorderClose, libSpinnaker_C), spinError, (spinAVIRecorder,), hRecorder)
end

function spinImageChunkDataGetIntValue(hImage::spinImage, pName, pValue)
    ccall((:spinImageChunkDataGetIntValue, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{Int64}), hImage, pName, pValue)
end

function spinImageChunkDataGetFloatValue(hImage::spinImage, pName, pValue)
    ccall((:spinImageChunkDataGetFloatValue, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{Cdouble}), hImage, pName, pValue)
end
