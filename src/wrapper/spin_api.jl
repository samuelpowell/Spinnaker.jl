# Julia wrapper for header: /usr/include/spinnaker/spinc/CameraDefsC.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /usr/include/spinnaker/spinc/ChunkDataDefC.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /usr/include/spinnaker/spinc/QuickSpinC.h
# Automatically generated using Clang.jl wrap_c


function quickSpinInit(hCamera, pQuickSpin)
    ccall((:quickSpinInit, libSpinnaker_C), spinError, (spinCamera, Ptr{quickSpin}), hCamera, pQuickSpin)
end

function quickSpinInitEx(hCamera, pQuickSpin, pQuickSpinTLDevice, pQuickSpinTLStream)
    ccall((:quickSpinInitEx, libSpinnaker_C), spinError, (spinCamera, Ptr{quickSpin}, Ptr{quickSpinTLDevice}, Ptr{quickSpinTLStream}), hCamera, pQuickSpin, pQuickSpinTLDevice, pQuickSpinTLStream)
end

function quickSpinTLDeviceInit(hCamera, pQuickSpinTLDevice)
    ccall((:quickSpinTLDeviceInit, libSpinnaker_C), spinError, (spinCamera, Ptr{quickSpinTLDevice}), hCamera, pQuickSpinTLDevice)
end

function quickSpinTLStreamInit(hCamera, pQuickSpinTLStream)
    ccall((:quickSpinTLStreamInit, libSpinnaker_C), spinError, (spinCamera, Ptr{quickSpinTLStream}), hCamera, pQuickSpinTLStream)
end

function quickSpinTLInterfaceInit(hInterface, pQuickSpinTLInterface)
    ccall((:quickSpinTLInterfaceInit, libSpinnaker_C), spinError, (spinInterface, Ptr{quickSpinTLInterface}), hInterface, pQuickSpinTLInterface)
end
# Julia wrapper for header: /usr/include/spinnaker/spinc/QuickSpinDefsC.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /usr/include/spinnaker/spinc/SpinVideoC.h
# Automatically generated using Clang.jl wrap_c


function spinVideoOpenUncompressed(phSpinVideo, pName, option)
    ccall((:spinVideoOpenUncompressed, libSpinVideo_C), spinError, (Ptr{spinVideo}, Cstring, spinAVIOption), phSpinVideo, pName, option)
end

function spinVideoOpenMJPG(phSpinVideo, pName, option)
    ccall((:spinVideoOpenMJPG, libSpinVideo_C), spinError, (Ptr{spinVideo}, Cstring, spinMJPGOption), phSpinVideo, pName, option)
end

function spinVideoOpenH264(phSpinVideo, pName, option)
    ccall((:spinVideoOpenH264, libSpinVideo_C), spinError, (Ptr{spinVideo}, Cstring, spinH264Option), phSpinVideo, pName, option)
end

function spinVideoAppend(hSpinVideo, hImage)
    ccall((:spinVideoAppend, libSpinVideo_C), spinError, (spinVideo, spinImage), hSpinVideo, hImage)
end

function spinVideoSetMaximumFileSize(hSpinVideo, size)
    ccall((:spinVideoSetMaximumFileSize, libSpinVideo_C), spinError, (spinVideo, UInt32), hSpinVideo, size)
end

function spinVideoClose(hSpinVideo)
    ccall((:spinVideoClose, libSpinVideo_C), spinError, (spinVideo,), hSpinVideo)
end
# Julia wrapper for header: /usr/include/spinnaker/spinc/SpinnakerC.h
# Automatically generated using Clang.jl wrap_c


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

function spinSystemReleaseInstance(hSystem)
    ccall((:spinSystemReleaseInstance, libSpinnaker_C), spinError, (spinSystem,), hSystem)
end

function spinSystemGetInterfaces(hSystem, hInterfaceList)
    ccall((:spinSystemGetInterfaces, libSpinnaker_C), spinError, (spinSystem, spinInterfaceList), hSystem, hInterfaceList)
end

function spinSystemGetCameras(hSystem, hCameraList)
    ccall((:spinSystemGetCameras, libSpinnaker_C), spinError, (spinSystem, spinCameraList), hSystem, hCameraList)
end

function spinSystemGetCamerasEx(hSystem, bUpdateInterfaces, bUpdateCameras, hCameraList)
    ccall((:spinSystemGetCamerasEx, libSpinnaker_C), spinError, (spinSystem, bool8_t, bool8_t, spinCameraList), hSystem, bUpdateInterfaces, bUpdateCameras, hCameraList)
end

function spinSystemSetLoggingLevel(hSystem, logLevel)
    ccall((:spinSystemSetLoggingLevel, libSpinnaker_C), spinError, (spinSystem, spinnakerLogLevel), hSystem, logLevel)
end

function spinSystemGetLoggingLevel(hSystem, pLogLevel)
    ccall((:spinSystemGetLoggingLevel, libSpinnaker_C), spinError, (spinSystem, Ptr{spinnakerLogLevel}), hSystem, pLogLevel)
end

function spinSystemRegisterLogEvent(hSystem, hLogEvent)
    ccall((:spinSystemRegisterLogEvent, libSpinnaker_C), spinError, (spinSystem, spinLogEvent), hSystem, hLogEvent)
end

function spinSystemUnregisterLogEvent(hSystem, hLogEvent)
    ccall((:spinSystemUnregisterLogEvent, libSpinnaker_C), spinError, (spinSystem, spinLogEvent), hSystem, hLogEvent)
end

function spinSystemUnregisterAllLogEvents(hSystem)
    ccall((:spinSystemUnregisterAllLogEvents, libSpinnaker_C), spinError, (spinSystem,), hSystem)
end

function spinSystemIsInUse(hSystem, pbIsInUse)
    ccall((:spinSystemIsInUse, libSpinnaker_C), spinError, (spinSystem, Ptr{bool8_t}), hSystem, pbIsInUse)
end

function spinSystemRegisterArrivalEvent(hSystem, hArrivalEvent)
    ccall((:spinSystemRegisterArrivalEvent, libSpinnaker_C), spinError, (spinSystem, spinArrivalEvent), hSystem, hArrivalEvent)
end

function spinSystemRegisterRemovalEvent(hSystem, hRemovalEvent)
    ccall((:spinSystemRegisterRemovalEvent, libSpinnaker_C), spinError, (spinSystem, spinRemovalEvent), hSystem, hRemovalEvent)
end

function spinSystemUnregisterArrivalEvent(hSystem, hArrivalEvent)
    ccall((:spinSystemUnregisterArrivalEvent, libSpinnaker_C), spinError, (spinSystem, spinArrivalEvent), hSystem, hArrivalEvent)
end

function spinSystemUnregisterRemovalEvent(hSystem, hRemovalEvent)
    ccall((:spinSystemUnregisterRemovalEvent, libSpinnaker_C), spinError, (spinSystem, spinRemovalEvent), hSystem, hRemovalEvent)
end

function spinSystemRegisterInterfaceEvent(hSystem, hInterfaceEvent)
    ccall((:spinSystemRegisterInterfaceEvent, libSpinnaker_C), spinError, (spinSystem, spinInterfaceEvent), hSystem, hInterfaceEvent)
end

function spinSystemUnregisterInterfaceEvent(hSystem, hInterfaceEvent)
    ccall((:spinSystemUnregisterInterfaceEvent, libSpinnaker_C), spinError, (spinSystem, spinInterfaceEvent), hSystem, hInterfaceEvent)
end

function spinSystemUpdateCameras(hSystem, pbChanged)
    ccall((:spinSystemUpdateCameras, libSpinnaker_C), spinError, (spinSystem, Ptr{bool8_t}), hSystem, pbChanged)
end

function spinSystemUpdateCamerasEx(hSystem, bUpdateInterfaces, pbChanged)
    ccall((:spinSystemUpdateCamerasEx, libSpinnaker_C), spinError, (spinSystem, bool8_t, Ptr{bool8_t}), hSystem, bUpdateInterfaces, pbChanged)
end

function spinSystemSendActionCommand(hSystem, iDeviceKey, iGroupKey, iGroupMask, iActionTime, piResultSize, results)
    ccall((:spinSystemSendActionCommand, libSpinnaker_C), spinError, (spinSystem, Csize_t, Csize_t, Csize_t, Csize_t, Ptr{Csize_t}, Ptr{actionCommandResult}), hSystem, iDeviceKey, iGroupKey, iGroupMask, iActionTime, piResultSize, results)
end

function spinSystemGetLibraryVersion(hSystem, hLibraryVersion)
    ccall((:spinSystemGetLibraryVersion, libSpinnaker_C), spinError, (spinSystem, Ptr{spinLibraryVersion}), hSystem, hLibraryVersion)
end

function spinInterfaceListCreateEmpty(phInterfaceList)
    ccall((:spinInterfaceListCreateEmpty, libSpinnaker_C), spinError, (Ptr{spinInterfaceList},), phInterfaceList)
end

function spinInterfaceListDestroy(hInterfaceList)
    ccall((:spinInterfaceListDestroy, libSpinnaker_C), spinError, (spinInterfaceList,), hInterfaceList)
end

function spinInterfaceListGetSize(hInterfaceList, pSize)
    ccall((:spinInterfaceListGetSize, libSpinnaker_C), spinError, (spinInterfaceList, Ptr{Csize_t}), hInterfaceList, pSize)
end

function spinInterfaceListGet(hInterfaceList, index, phInterface)
    ccall((:spinInterfaceListGet, libSpinnaker_C), spinError, (spinInterfaceList, Csize_t, Ptr{spinInterface}), hInterfaceList, index, phInterface)
end

function spinInterfaceListClear(hInterfaceList)
    ccall((:spinInterfaceListClear, libSpinnaker_C), spinError, (spinInterfaceList,), hInterfaceList)
end

function spinCameraListCreateEmpty(phCameraList)
    ccall((:spinCameraListCreateEmpty, libSpinnaker_C), spinError, (Ptr{spinCameraList},), phCameraList)
end

function spinCameraListDestroy(hCameraList)
    ccall((:spinCameraListDestroy, libSpinnaker_C), spinError, (spinCameraList,), hCameraList)
end

function spinCameraListGetSize(hCameraList, pSize)
    ccall((:spinCameraListGetSize, libSpinnaker_C), spinError, (spinCameraList, Ptr{Csize_t}), hCameraList, pSize)
end

function spinCameraListGet(hCameraList, index, phCamera)
    ccall((:spinCameraListGet, libSpinnaker_C), spinError, (spinCameraList, Csize_t, Ptr{spinCamera}), hCameraList, index, phCamera)
end

function spinCameraListClear(hCameraList)
    ccall((:spinCameraListClear, libSpinnaker_C), spinError, (spinCameraList,), hCameraList)
end

function spinCameraListRemove(hCameraList, index)
    ccall((:spinCameraListRemove, libSpinnaker_C), spinError, (spinCameraList, Csize_t), hCameraList, index)
end

function spinCameraListAppend(hCameraListBase, hCameraListToAppend)
    ccall((:spinCameraListAppend, libSpinnaker_C), spinError, (spinCameraList, spinCameraList), hCameraListBase, hCameraListToAppend)
end

function spinCameraListGetBySerial(hCameraList, pSerial, phCamera)
    ccall((:spinCameraListGetBySerial, libSpinnaker_C), spinError, (spinCameraList, Cstring, Ptr{spinCamera}), hCameraList, pSerial, phCamera)
end

function spinCameraListRemoveBySerial(hCameraList, pSerial)
    ccall((:spinCameraListRemoveBySerial, libSpinnaker_C), spinError, (spinCameraList, Cstring), hCameraList, pSerial)
end

function spinInterfaceUpdateCameras(hInterface, pbChanged)
    ccall((:spinInterfaceUpdateCameras, libSpinnaker_C), spinError, (spinInterface, Ptr{bool8_t}), hInterface, pbChanged)
end

function spinInterfaceGetCameras(hInterface, hCameraList)
    ccall((:spinInterfaceGetCameras, libSpinnaker_C), spinError, (spinInterface, spinCameraList), hInterface, hCameraList)
end

function spinInterfaceGetCamerasEx(hInterface, bUpdateCameras, hCameraList)
    ccall((:spinInterfaceGetCamerasEx, libSpinnaker_C), spinError, (spinInterface, bool8_t, spinCameraList), hInterface, bUpdateCameras, hCameraList)
end

function spinInterfaceGetTLNodeMap(hInterface, phNodeMap)
    ccall((:spinInterfaceGetTLNodeMap, libSpinnaker_C), spinError, (spinInterface, Ptr{spinNodeMapHandle}), hInterface, phNodeMap)
end

function spinInterfaceRegisterArrivalEvent(hInterface, hArrivalEvent)
    ccall((:spinInterfaceRegisterArrivalEvent, libSpinnaker_C), spinError, (spinInterface, spinArrivalEvent), hInterface, hArrivalEvent)
end

function spinInterfaceRegisterRemovalEvent(hInterface, hRemovalEvent)
    ccall((:spinInterfaceRegisterRemovalEvent, libSpinnaker_C), spinError, (spinInterface, spinRemovalEvent), hInterface, hRemovalEvent)
end

function spinInterfaceUnregisterArrivalEvent(hInterface, hArrivalEvent)
    ccall((:spinInterfaceUnregisterArrivalEvent, libSpinnaker_C), spinError, (spinInterface, spinArrivalEvent), hInterface, hArrivalEvent)
end

function spinInterfaceUnregisterRemovalEvent(hInterface, hRemovalEvent)
    ccall((:spinInterfaceUnregisterRemovalEvent, libSpinnaker_C), spinError, (spinInterface, spinRemovalEvent), hInterface, hRemovalEvent)
end

function spinInterfaceRegisterInterfaceEvent(hInterface, hInterfaceEvent)
    ccall((:spinInterfaceRegisterInterfaceEvent, libSpinnaker_C), spinError, (spinInterface, spinInterfaceEvent), hInterface, hInterfaceEvent)
end

function spinInterfaceUnregisterInterfaceEvent(hInterface, hInterfaceEvent)
    ccall((:spinInterfaceUnregisterInterfaceEvent, libSpinnaker_C), spinError, (spinInterface, spinInterfaceEvent), hInterface, hInterfaceEvent)
end

function spinInterfaceRelease(hInterface)
    ccall((:spinInterfaceRelease, libSpinnaker_C), spinError, (spinInterface,), hInterface)
end

function spinInterfaceIsInUse(hInterface, pbIsInUse)
    ccall((:spinInterfaceIsInUse, libSpinnaker_C), spinError, (spinInterface, Ptr{bool8_t}), hInterface, pbIsInUse)
end

function spinInterfaceSendActionCommand(hInterface, iDeviceKey, iGroupKey, iGroupMask, iActionTime, piResultSize, results)
    ccall((:spinInterfaceSendActionCommand, libSpinnaker_C), spinError, (spinInterface, Csize_t, Csize_t, Csize_t, Csize_t, Ptr{Csize_t}, Ptr{actionCommandResult}), hInterface, iDeviceKey, iGroupKey, iGroupMask, iActionTime, piResultSize, results)
end

function spinCameraInit(hCamera)
    ccall((:spinCameraInit, libSpinnaker_C), spinError, (spinCamera,), hCamera)
end

function spinCameraDeInit(hCamera)
    ccall((:spinCameraDeInit, libSpinnaker_C), spinError, (spinCamera,), hCamera)
end

function spinCameraGetNodeMap(hCamera, phNodeMap)
    ccall((:spinCameraGetNodeMap, libSpinnaker_C), spinError, (spinCamera, Ptr{spinNodeMapHandle}), hCamera, phNodeMap)
end

function spinCameraGetTLDeviceNodeMap(hCamera, phNodeMap)
    ccall((:spinCameraGetTLDeviceNodeMap, libSpinnaker_C), spinError, (spinCamera, Ptr{spinNodeMapHandle}), hCamera, phNodeMap)
end

function spinCameraGetTLStreamNodeMap(hCamera, phNodeMap)
    ccall((:spinCameraGetTLStreamNodeMap, libSpinnaker_C), spinError, (spinCamera, Ptr{spinNodeMapHandle}), hCamera, phNodeMap)
end

function spinCameraGetAccessMode(hCamera, pAccessMode)
    ccall((:spinCameraGetAccessMode, libSpinnaker_C), spinError, (spinCamera, Ptr{spinAccessMode}), hCamera, pAccessMode)
end

function spinCameraReadPort(hCamera, iAddress, pBuffer, iSize)
    ccall((:spinCameraReadPort, libSpinnaker_C), spinError, (spinCamera, UInt64, Ptr{Cvoid}, Csize_t), hCamera, iAddress, pBuffer, iSize)
end

function spinCameraWritePort(hCamera, iAddress, pBuffer, iSize)
    ccall((:spinCameraWritePort, libSpinnaker_C), spinError, (spinCamera, UInt64, Ptr{Cvoid}, Csize_t), hCamera, iAddress, pBuffer, iSize)
end

function spinCameraBeginAcquisition(hCamera)
    ccall((:spinCameraBeginAcquisition, libSpinnaker_C), spinError, (spinCamera,), hCamera)
end

function spinCameraEndAcquisition(hCamera)
    ccall((:spinCameraEndAcquisition, libSpinnaker_C), spinError, (spinCamera,), hCamera)
end

function spinCameraGetNextImage(hCamera, phImage)
    ccall((:spinCameraGetNextImage, libSpinnaker_C), spinError, (spinCamera, Ptr{spinImage}), hCamera, phImage)
end

function spinCameraGetNextImageEx(hCamera, grabTimeout, phImage)
    ccall((:spinCameraGetNextImageEx, libSpinnaker_C), spinError, (spinCamera, UInt64, Ptr{spinImage}), hCamera, grabTimeout, phImage)
end

function spinCameraGetUniqueID(hCamera, pBuf, pBufLen)
    ccall((:spinCameraGetUniqueID, libSpinnaker_C), spinError, (spinCamera, Cstring, Ptr{Csize_t}), hCamera, pBuf, pBufLen)
end

function spinCameraIsStreaming(hCamera, pbIsStreaming)
    ccall((:spinCameraIsStreaming, libSpinnaker_C), spinError, (spinCamera, Ptr{bool8_t}), hCamera, pbIsStreaming)
end

function spinCameraGetGuiXml(hCamera, pBuf, pBufLen)
    ccall((:spinCameraGetGuiXml, libSpinnaker_C), spinError, (spinCamera, Cstring, Ptr{Csize_t}), hCamera, pBuf, pBufLen)
end

function spinCameraRegisterDeviceEvent(hCamera, hDeviceEvent)
    ccall((:spinCameraRegisterDeviceEvent, libSpinnaker_C), spinError, (spinCamera, spinDeviceEvent), hCamera, hDeviceEvent)
end

function spinCameraRegisterDeviceEventEx(hCamera, hDeviceEvent, pName)
    ccall((:spinCameraRegisterDeviceEventEx, libSpinnaker_C), spinError, (spinCamera, spinDeviceEvent, Cstring), hCamera, hDeviceEvent, pName)
end

function spinCameraUnregisterDeviceEvent(hCamera, hDeviceEvent)
    ccall((:spinCameraUnregisterDeviceEvent, libSpinnaker_C), spinError, (spinCamera, spinDeviceEvent), hCamera, hDeviceEvent)
end

function spinCameraRegisterImageEvent(hCamera, hImageEvent)
    ccall((:spinCameraRegisterImageEvent, libSpinnaker_C), spinError, (spinCamera, spinImageEvent), hCamera, hImageEvent)
end

function spinCameraUnregisterImageEvent(hCamera, hImageEvent)
    ccall((:spinCameraUnregisterImageEvent, libSpinnaker_C), spinError, (spinCamera, spinImageEvent), hCamera, hImageEvent)
end

function spinCameraRelease(hCamera)
    ccall((:spinCameraRelease, libSpinnaker_C), spinError, (spinCamera,), hCamera)
end

function spinCameraIsValid(hCamera, pbValid)
    ccall((:spinCameraIsValid, libSpinnaker_C), spinError, (spinCamera, Ptr{bool8_t}), hCamera, pbValid)
end

function spinCameraIsInitialized(hCamera, pbInit)
    ccall((:spinCameraIsInitialized, libSpinnaker_C), spinError, (spinCamera, Ptr{bool8_t}), hCamera, pbInit)
end

function spinCameraDiscoverMaxPacketSize(hCamera, pMaxPacketSize)
    ccall((:spinCameraDiscoverMaxPacketSize, libSpinnaker_C), spinError, (spinCamera, Ptr{UInt32}), hCamera, pMaxPacketSize)
end

function spinImageCreateEmpty(phImage)
    ccall((:spinImageCreateEmpty, libSpinnaker_C), spinError, (Ptr{spinImage},), phImage)
end

function spinImageCreate(hSrcImage, phDestImage)
    ccall((:spinImageCreate, libSpinnaker_C), spinError, (spinImage, Ptr{spinImage}), hSrcImage, phDestImage)
end

function spinImageCreateEx(phImage, width, height, offsetX, offsetY, pixelFormat, pData)
    ccall((:spinImageCreateEx, libSpinnaker_C), spinError, (Ptr{spinImage}, Csize_t, Csize_t, Csize_t, Csize_t, spinPixelFormatEnums, Ptr{Cvoid}), phImage, width, height, offsetX, offsetY, pixelFormat, pData)
end

function spinImageDestroy(hImage)
    ccall((:spinImageDestroy, libSpinnaker_C), spinError, (spinImage,), hImage)
end

function spinImageSetDefaultColorProcessing(algorithm)
    ccall((:spinImageSetDefaultColorProcessing, libSpinnaker_C), spinError, (spinColorProcessingAlgorithm,), algorithm)
end

function spinImageGetDefaultColorProcessing(pAlgorithm)
    ccall((:spinImageGetDefaultColorProcessing, libSpinnaker_C), spinError, (Ptr{spinColorProcessingAlgorithm},), pAlgorithm)
end

function spinImageGetColorProcessing(hImage, pAlgorithm)
    ccall((:spinImageGetColorProcessing, libSpinnaker_C), spinError, (spinImage, Ptr{spinColorProcessingAlgorithm}), hImage, pAlgorithm)
end

function spinImageConvert(hSrcImage, pixelFormat, hDestImage)
    ccall((:spinImageConvert, libSpinnaker_C), spinError, (spinImage, spinPixelFormatEnums, spinImage), hSrcImage, pixelFormat, hDestImage)
end

function spinImageConvertEx(hSrcImage, pixelFormat, algorithm, hDestImage)
    ccall((:spinImageConvertEx, libSpinnaker_C), spinError, (spinImage, spinPixelFormatEnums, spinColorProcessingAlgorithm, spinImage), hSrcImage, pixelFormat, algorithm, hDestImage)
end

function spinImageReset(hImage, width, height, offsetX, offsetY, pixelFormat)
    ccall((:spinImageReset, libSpinnaker_C), spinError, (spinImage, Csize_t, Csize_t, Csize_t, Csize_t, spinPixelFormatEnums), hImage, width, height, offsetX, offsetY, pixelFormat)
end

function spinImageResetEx(hImage, width, height, offsetX, offsetY, pixelFormat, pData)
    ccall((:spinImageResetEx, libSpinnaker_C), spinError, (spinImage, Csize_t, Csize_t, Csize_t, Csize_t, spinPixelFormatEnums, Ptr{Cvoid}), hImage, width, height, offsetX, offsetY, pixelFormat, pData)
end

function spinImageGetID(hImage, pId)
    ccall((:spinImageGetID, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pId)
end

function spinImageGetData(hImage, ppData)
    ccall((:spinImageGetData, libSpinnaker_C), spinError, (spinImage, Ptr{Ptr{Cvoid}}), hImage, ppData)
end

function spinImageGetPrivateData(hImage, ppData)
    ccall((:spinImageGetPrivateData, libSpinnaker_C), spinError, (spinImage, Ptr{Ptr{Cvoid}}), hImage, ppData)
end

function spinImageGetBufferSize(hImage, pSize)
    ccall((:spinImageGetBufferSize, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pSize)
end

function spinImageDeepCopy(hSrcImage, hDestImage)
    ccall((:spinImageDeepCopy, libSpinnaker_C), spinError, (spinImage, spinImage), hSrcImage, hDestImage)
end

function spinImageGetWidth(hImage, pWidth)
    ccall((:spinImageGetWidth, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pWidth)
end

function spinImageGetHeight(hImage, pHeight)
    ccall((:spinImageGetHeight, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pHeight)
end

function spinImageGetOffsetX(hImage, pOffsetX)
    ccall((:spinImageGetOffsetX, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pOffsetX)
end

function spinImageGetOffsetY(hImage, pOffsetY)
    ccall((:spinImageGetOffsetY, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pOffsetY)
end

function spinImageGetPaddingX(hImage, pPaddingX)
    ccall((:spinImageGetPaddingX, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pPaddingX)
end

function spinImageGetPaddingY(hImage, pPaddingY)
    ccall((:spinImageGetPaddingY, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pPaddingY)
end

function spinImageGetFrameID(hImage, pFrameID)
    ccall((:spinImageGetFrameID, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pFrameID)
end

function spinImageGetTimeStamp(hImage, pTimeStamp)
    ccall((:spinImageGetTimeStamp, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pTimeStamp)
end

function spinImageGetPayloadType(hImage, pPayloadType)
    ccall((:spinImageGetPayloadType, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pPayloadType)
end

function spinImageGetTLPayloadType(hImage, pPayloadType)
    ccall((:spinImageGetTLPayloadType, libSpinnaker_C), spinError, (spinImage, Ptr{spinPayloadTypeInfoIDs}), hImage, pPayloadType)
end

function spinImageGetPixelFormat(hImage, pPixelFormat)
    ccall((:spinImageGetPixelFormat, libSpinnaker_C), spinError, (spinImage, Ptr{spinPixelFormatEnums}), hImage, pPixelFormat)
end

function spinImageGetTLPixelFormat(hImage, pPixelFormat)
    ccall((:spinImageGetTLPixelFormat, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pPixelFormat)
end

function spinImageGetTLPixelFormatNamespace(hImage, pPixelFormatNamespace)
    ccall((:spinImageGetTLPixelFormatNamespace, libSpinnaker_C), spinError, (spinImage, Ptr{spinPixelFormatNamespaceID}), hImage, pPixelFormatNamespace)
end

function spinImageGetPixelFormatName(hImage, pBuf, pBufLen)
    ccall((:spinImageGetPixelFormatName, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{Csize_t}), hImage, pBuf, pBufLen)
end

function spinImageIsIncomplete(hImage, pbIsIncomplete)
    ccall((:spinImageIsIncomplete, libSpinnaker_C), spinError, (spinImage, Ptr{bool8_t}), hImage, pbIsIncomplete)
end

function spinImageGetValidPayloadSize(hImage, pSize)
    ccall((:spinImageGetValidPayloadSize, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pSize)
end

function spinImageSave(hImage, pFilename, format)
    ccall((:spinImageSave, libSpinnaker_C), spinError, (spinImage, Cstring, spinImageFileFormat), hImage, pFilename, format)
end

function spinImageSaveFromExt(hImage, pFilename)
    ccall((:spinImageSaveFromExt, libSpinnaker_C), spinError, (spinImage, Cstring), hImage, pFilename)
end

function spinImageSavePng(hImage, pFilename, pOption)
    ccall((:spinImageSavePng, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinPNGOption}), hImage, pFilename, pOption)
end

function spinImageSavePpm(hImage, pFilename, pOption)
    ccall((:spinImageSavePpm, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinPPMOption}), hImage, pFilename, pOption)
end

function spinImageSavePgm(hImage, pFilename, pOption)
    ccall((:spinImageSavePgm, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinPGMOption}), hImage, pFilename, pOption)
end

function spinImageSaveTiff(hImage, pFilename, pOption)
    ccall((:spinImageSaveTiff, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinTIFFOption}), hImage, pFilename, pOption)
end

function spinImageSaveJpeg(hImage, pFilename, pOption)
    ccall((:spinImageSaveJpeg, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinJPEGOption}), hImage, pFilename, pOption)
end

function spinImageSaveJpg2(hImage, pFilename, pOption)
    ccall((:spinImageSaveJpg2, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinJPG2Option}), hImage, pFilename, pOption)
end

function spinImageSaveBmp(hImage, pFilename, pOption)
    ccall((:spinImageSaveBmp, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinBMPOption}), hImage, pFilename, pOption)
end

function spinImageGetChunkLayoutID(hImage, pId)
    ccall((:spinImageGetChunkLayoutID, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pId)
end

function spinImageCalculateStatistics(hImage, hStatistics)
    ccall((:spinImageCalculateStatistics, libSpinnaker_C), spinError, (spinImage, spinImageStatistics), hImage, hStatistics)
end

function spinImageGetStatus(hImage, pStatus)
    ccall((:spinImageGetStatus, libSpinnaker_C), spinError, (spinImage, Ptr{spinImageStatus}), hImage, pStatus)
end

function spinImageGetStatusDescription(status, pBuf, pBufLen)
    ccall((:spinImageGetStatusDescription, libSpinnaker_C), spinError, (spinImageStatus, Cstring, Ptr{Csize_t}), status, pBuf, pBufLen)
end

function spinImageRelease(hImage)
    ccall((:spinImageRelease, libSpinnaker_C), spinError, (spinImage,), hImage)
end

function spinImageHasCRC(hImage, pbHasCRC)
    ccall((:spinImageHasCRC, libSpinnaker_C), spinError, (spinImage, Ptr{bool8_t}), hImage, pbHasCRC)
end

function spinImageCheckCRC(hImage, pbCheckCRC)
    ccall((:spinImageCheckCRC, libSpinnaker_C), spinError, (spinImage, Ptr{bool8_t}), hImage, pbCheckCRC)
end

function spinImageGetBitsPerPixel(hImage, pBitsPerPixel)
    ccall((:spinImageGetBitsPerPixel, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pBitsPerPixel)
end

function spinImageGetSize(hImage, pImageSize)
    ccall((:spinImageGetSize, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pImageSize)
end

function spinImageGetStride(hImage, pStride)
    ccall((:spinImageGetStride, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pStride)
end

function spinDeviceEventCreate(phDeviceEvent, pFunction, pUserData)
    ccall((:spinDeviceEventCreate, libSpinnaker_C), spinError, (Ptr{spinDeviceEvent}, spinDeviceEventFunction, Ptr{Cvoid}), phDeviceEvent, pFunction, pUserData)
end

function spinDeviceEventDestroy(hDeviceEvent)
    ccall((:spinDeviceEventDestroy, libSpinnaker_C), spinError, (spinDeviceEvent,), hDeviceEvent)
end

function spinImageEventCreate(phImageEvent, pFunction, pUserData)
    ccall((:spinImageEventCreate, libSpinnaker_C), spinError, (Ptr{spinImageEvent}, spinImageEventFunction, Ptr{Cvoid}), phImageEvent, pFunction, pUserData)
end

function spinImageEventDestroy(hImageEvent)
    ccall((:spinImageEventDestroy, libSpinnaker_C), spinError, (spinImageEvent,), hImageEvent)
end

function spinArrivalEventCreate(phArrivalEvent, pFunction, pUserData)
    ccall((:spinArrivalEventCreate, libSpinnaker_C), spinError, (Ptr{spinArrivalEvent}, spinArrivalEventFunction, Ptr{Cvoid}), phArrivalEvent, pFunction, pUserData)
end

function spinArrivalEventDestroy(hArrivalEvent)
    ccall((:spinArrivalEventDestroy, libSpinnaker_C), spinError, (spinArrivalEvent,), hArrivalEvent)
end

function spinRemovalEventCreate(phRemovalEvent, pFunction, pUserData)
    ccall((:spinRemovalEventCreate, libSpinnaker_C), spinError, (Ptr{spinRemovalEvent}, spinRemovalEventFunction, Ptr{Cvoid}), phRemovalEvent, pFunction, pUserData)
end

function spinRemovalEventDestroy(hRemovalEvent)
    ccall((:spinRemovalEventDestroy, libSpinnaker_C), spinError, (spinRemovalEvent,), hRemovalEvent)
end

function spinInterfaceEventCreate(phInterfaceEvent, pArrivalFunction, pRemovalFunction, pUserData)
    ccall((:spinInterfaceEventCreate, libSpinnaker_C), spinError, (Ptr{spinInterfaceEvent}, spinArrivalEventFunction, spinRemovalEventFunction, Ptr{Cvoid}), phInterfaceEvent, pArrivalFunction, pRemovalFunction, pUserData)
end

function spinInterfaceEventDestroy(hInterfaceEvent)
    ccall((:spinInterfaceEventDestroy, libSpinnaker_C), spinError, (spinInterfaceEvent,), hInterfaceEvent)
end

function spinLogEventCreate(phLogEvent, pFunction, pUserData)
    ccall((:spinLogEventCreate, libSpinnaker_C), spinError, (Ptr{spinLogEvent}, spinLogEventFunction, Ptr{Cvoid}), phLogEvent, pFunction, pUserData)
end

function spinLogEventDestroy(hLogEvent)
    ccall((:spinLogEventDestroy, libSpinnaker_C), spinError, (spinLogEvent,), hLogEvent)
end

function spinImageStatisticsCreate(phStatistics)
    ccall((:spinImageStatisticsCreate, libSpinnaker_C), spinError, (Ptr{spinImageStatistics},), phStatistics)
end

function spinImageStatisticsDestroy(hStatistics)
    ccall((:spinImageStatisticsDestroy, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics)
end

function spinImageStatisticsEnableAll(hStatistics)
    ccall((:spinImageStatisticsEnableAll, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics)
end

function spinImageStatisticsDisableAll(hStatistics)
    ccall((:spinImageStatisticsDisableAll, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics)
end

function spinImageStatisticsEnableGreyOnly(hStatistics)
    ccall((:spinImageStatisticsEnableGreyOnly, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics)
end

function spinImageStatisticsEnableRgbOnly(hStatistics)
    ccall((:spinImageStatisticsEnableRgbOnly, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics)
end

function spinImageStatisticsEnableHslOnly(hStatistics)
    ccall((:spinImageStatisticsEnableHslOnly, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics)
end

function spinImageStatisticsGetChannelStatus(hStatistics, channel, pbEnabled)
    ccall((:spinImageStatisticsGetChannelStatus, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{bool8_t}), hStatistics, channel, pbEnabled)
end

function spinImageStatisticsSetChannelStatus(hStatistics, channel, bEnable)
    ccall((:spinImageStatisticsSetChannelStatus, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, bool8_t), hStatistics, channel, bEnable)
end

function spinImageStatisticsGetRange(hStatistics, channel, pMin, pMax)
    ccall((:spinImageStatisticsGetRange, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{UInt32}, Ptr{UInt32}), hStatistics, channel, pMin, pMax)
end

function spinImageStatisticsGetPixelValueRange(hStatistics, channel, pMin, pMax)
    ccall((:spinImageStatisticsGetPixelValueRange, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{UInt32}, Ptr{UInt32}), hStatistics, channel, pMin, pMax)
end

function spinImageStatisticsGetNumPixelValues(hStatistics, channel, pNumValues)
    ccall((:spinImageStatisticsGetNumPixelValues, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{UInt32}), hStatistics, channel, pNumValues)
end

function spinImageStatisticsGetMean(hStatistics, channel, pMean)
    ccall((:spinImageStatisticsGetMean, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{Cfloat}), hStatistics, channel, pMean)
end

function spinImageStatisticsGetHistogram(hStatistics, channel, ppHistogram)
    ccall((:spinImageStatisticsGetHistogram, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{Ptr{Cint}}), hStatistics, channel, ppHistogram)
end

function spinImageStatisticsGetAll(hStatistics, channel, pRangeMin, pRangeMax, pPixelValueMin, pPixelValueMax, pNumPixelValues, pPixelValueMean, ppHistogram)
    ccall((:spinImageStatisticsGetAll, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{Cfloat}, Ptr{Ptr{Cint}}), hStatistics, channel, pRangeMin, pRangeMax, pPixelValueMin, pPixelValueMax, pNumPixelValues, pPixelValueMean, ppHistogram)
end

function spinLogDataGetCategoryName(hLogEventData, pBuf, pBufLen)
    ccall((:spinLogDataGetCategoryName, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen)
end

function spinLogDataGetPriority(hLogEventData, pValue)
    ccall((:spinLogDataGetPriority, libSpinnaker_C), spinError, (spinLogEventData, Ptr{Int64}), hLogEventData, pValue)
end

function spinLogDataGetPriorityName(hLogEventData, pBuf, pBufLen)
    ccall((:spinLogDataGetPriorityName, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen)
end

function spinLogDataGetTimestamp(hLogEventData, pBuf, pBufLen)
    ccall((:spinLogDataGetTimestamp, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen)
end

function spinLogDataGetNDC(hLogEventData, pBuf, pBufLen)
    ccall((:spinLogDataGetNDC, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen)
end

function spinLogDataGetThreadName(hLogEventData, pBuf, pBufLen)
    ccall((:spinLogDataGetThreadName, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen)
end

function spinLogDataGetLogMessage(hLogEventData, pBuf, pBufLen)
    ccall((:spinLogDataGetLogMessage, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen)
end

function spinDeviceEventGetId(hDeviceEventData, pEventId)
    ccall((:spinDeviceEventGetId, libSpinnaker_C), spinError, (spinDeviceEventData, Ptr{UInt64}), hDeviceEventData, pEventId)
end

function spinDeviceEventGetPayloadData(hDeviceEventData, pBuf, pBufSize)
    ccall((:spinDeviceEventGetPayloadData, libSpinnaker_C), spinError, (spinDeviceEventData, Ptr{UInt8}, Ptr{Csize_t}), hDeviceEventData, pBuf, pBufSize)
end

function spinDeviceEventGetPayloadDataSize(hDeviceEventData, pBufSize)
    ccall((:spinDeviceEventGetPayloadDataSize, libSpinnaker_C), spinError, (spinDeviceEventData, Ptr{Csize_t}), hDeviceEventData, pBufSize)
end

function spinDeviceEventGetName(hDeviceEventData, pBuf, pBufLen)
    ccall((:spinDeviceEventGetName, libSpinnaker_C), spinError, (spinDeviceEventData, Cstring, Ptr{Csize_t}), hDeviceEventData, pBuf, pBufLen)
end

function spinAVIRecorderOpenUncompressed(phRecorder, pName, option)
    ccall((:spinAVIRecorderOpenUncompressed, libSpinnaker_C), spinError, (Ptr{spinAVIRecorder}, Cstring, spinAVIOption), phRecorder, pName, option)
end

function spinAVIRecorderOpenMJPG(phRecorder, pName, option)
    ccall((:spinAVIRecorderOpenMJPG, libSpinnaker_C), spinError, (Ptr{spinAVIRecorder}, Cstring, spinMJPGOption), phRecorder, pName, option)
end

function spinAVIRecorderOpenH264(phRecorder, pName, option)
    ccall((:spinAVIRecorderOpenH264, libSpinnaker_C), spinError, (Ptr{spinAVIRecorder}, Cstring, spinH264Option), phRecorder, pName, option)
end

function spinAVIRecorderAppend(hRecorder, hImage)
    ccall((:spinAVIRecorderAppend, libSpinnaker_C), spinError, (spinAVIRecorder, spinImage), hRecorder, hImage)
end

function spinAVISetMaximumSize(hRecorder, size)
    ccall((:spinAVISetMaximumSize, libSpinnaker_C), spinError, (spinAVIRecorder, UInt32), hRecorder, size)
end

function spinAVIRecorderClose(hRecorder)
    ccall((:spinAVIRecorderClose, libSpinnaker_C), spinError, (spinAVIRecorder,), hRecorder)
end

function spinImageChunkDataGetIntValue(hImage, pName, pValue)
    ccall((:spinImageChunkDataGetIntValue, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{Int64}), hImage, pName, pValue)
end

function spinImageChunkDataGetFloatValue(hImage, pName, pValue)
    ccall((:spinImageChunkDataGetFloatValue, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{Cdouble}), hImage, pName, pValue)
end
# Julia wrapper for header: /usr/include/spinnaker/spinc/SpinnakerDefsC.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /usr/include/spinnaker/spinc/SpinnakerGenApiC.h
# Automatically generated using Clang.jl wrap_c


function spinNodeMapGetNode(hNodeMap, pName, phNode)
    ccall((:spinNodeMapGetNode, libSpinnaker_C), spinError, (spinNodeMapHandle, Cstring, Ptr{spinNodeHandle}), hNodeMap, pName, phNode)
end

function spinNodeMapGetNumNodes(hNodeMap, pValue)
    ccall((:spinNodeMapGetNumNodes, libSpinnaker_C), spinError, (spinNodeMapHandle, Ptr{Csize_t}), hNodeMap, pValue)
end

function spinNodeMapGetNodeByIndex(hNodeMap, index, phNode)
    ccall((:spinNodeMapGetNodeByIndex, libSpinnaker_C), spinError, (spinNodeMapHandle, Csize_t, Ptr{spinNodeHandle}), hNodeMap, index, phNode)
end

function spinNodeMapPoll(hNodeMap, timestamp)
    ccall((:spinNodeMapPoll, libSpinnaker_C), spinError, (spinNodeMapHandle, Int64), hNodeMap, timestamp)
end

function spinNodeIsImplemented(hNode, pbResult)
    ccall((:spinNodeIsImplemented, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbResult)
end

function spinNodeIsReadable(hNode, pbResult)
    ccall((:spinNodeIsReadable, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbResult)
end

function spinNodeIsWritable(hNode, pbResult)
    ccall((:spinNodeIsWritable, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbResult)
end

function spinNodeIsAvailable(hNode, pbResult)
    ccall((:spinNodeIsAvailable, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbResult)
end

function spinNodeIsEqual(hNodeFirst, hNodeSecond, pbResult)
    ccall((:spinNodeIsEqual, libSpinnaker_C), spinError, (spinNodeHandle, spinNodeHandle, Ptr{bool8_t}), hNodeFirst, hNodeSecond, pbResult)
end

function spinNodeGetAccessMode(hNode, pAccessMode)
    ccall((:spinNodeGetAccessMode, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinAccessMode}), hNode, pAccessMode)
end

function spinNodeGetName(hNode, pBuf, pBufLen)
    ccall((:spinNodeGetName, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinNodeGetNameSpace(hNode, pNamespace)
    ccall((:spinNodeGetNameSpace, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinNameSpace}), hNode, pNamespace)
end

function spinNodeGetVisibility(hNode, pVisibility)
    ccall((:spinNodeGetVisibility, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinVisibility}), hNode, pVisibility)
end

function spinNodeInvalidateNode(hNode)
    ccall((:spinNodeInvalidateNode, libSpinnaker_C), spinError, (spinNodeHandle,), hNode)
end

function spinNodeGetCachingMode(hNode, pCachingMode)
    ccall((:spinNodeGetCachingMode, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinCachingMode}), hNode, pCachingMode)
end

function spinNodeGetToolTip(hNode, pBuf, pBufLen)
    ccall((:spinNodeGetToolTip, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinNodeGetDescription(hNode, pBuf, pBufLen)
    ccall((:spinNodeGetDescription, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinNodeGetDisplayName(hNode, pBuf, pBufLen)
    ccall((:spinNodeGetDisplayName, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinNodeGetType(hNode, pType)
    ccall((:spinNodeGetType, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinNodeType}), hNode, pType)
end

function spinNodeGetPollingTime(hNode, pPollingTime)
    ccall((:spinNodeGetPollingTime, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pPollingTime)
end

function spinNodeRegisterCallback(hNode, pCbFunction, phCb)
    ccall((:spinNodeRegisterCallback, libSpinnaker_C), spinError, (spinNodeHandle, spinNodeCallbackFunction, Ptr{spinNodeCallbackHandle}), hNode, pCbFunction, phCb)
end

function spinNodeDeregisterCallback(hNode, hCb)
    ccall((:spinNodeDeregisterCallback, libSpinnaker_C), spinError, (spinNodeHandle, spinNodeCallbackHandle), hNode, hCb)
end

function spinNodeGetImposedAccessMode(hNode, imposedAccessMode)
    ccall((:spinNodeGetImposedAccessMode, libSpinnaker_C), spinError, (spinNodeHandle, spinAccessMode), hNode, imposedAccessMode)
end

function spinNodeGetImposedVisibility(hNode, imposedVisibility)
    ccall((:spinNodeGetImposedVisibility, libSpinnaker_C), spinError, (spinNodeHandle, spinVisibility), hNode, imposedVisibility)
end

function spinNodeToString(hNode, pBuf, pBufLen)
    ccall((:spinNodeToString, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinNodeToStringEx(hNode, bVerify, pBuf, pBufLen)
    ccall((:spinNodeToStringEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cstring, Ptr{Csize_t}), hNode, bVerify, pBuf, pBufLen)
end

function spinNodeFromString(hNode, pBuf)
    ccall((:spinNodeFromString, libSpinnaker_C), spinError, (spinNodeHandle, Cstring), hNode, pBuf)
end

function spinNodeFromStringEx(hNode, bVerify, pBuf)
    ccall((:spinNodeFromStringEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cstring), hNode, bVerify, pBuf)
end

function spinStringSetValue(hNode, pBuf)
    ccall((:spinStringSetValue, libSpinnaker_C), spinError, (spinNodeHandle, Cstring), hNode, pBuf)
end

function spinStringSetValueEx(hNode, bVerify, pBuf)
    ccall((:spinStringSetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cstring), hNode, bVerify, pBuf)
end

function spinStringGetValue(hNode, pBuf, pBufLen)
    ccall((:spinStringGetValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{UInt8}, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinStringGetValueEx(hNode, bVerify, pBuf, pBufLen)
    ccall((:spinStringGetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cstring, Ptr{Csize_t}), hNode, bVerify, pBuf, pBufLen)
end

function spinStringGetMaxLength(hNode, pValue)
    ccall((:spinStringGetMaxLength, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue)
end

function spinIntegerSetValue(hNode, value)
    ccall((:spinIntegerSetValue, libSpinnaker_C), spinError, (spinNodeHandle, Int64), hNode, value)
end

function spinIntegerSetValueEx(hNode, bVerify, value)
    ccall((:spinIntegerSetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Int64), hNode, bVerify, value)
end

function spinIntegerGetValue(hNode, pValue)
    ccall((:spinIntegerGetValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue)
end

function spinIntegerGetValueEx(hNode, bVerify, pValue)
    ccall((:spinIntegerGetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Ptr{Int64}), hNode, bVerify, pValue)
end

function spinIntegerGetMin(hNode, pValue)
    ccall((:spinIntegerGetMin, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue)
end

function spinIntegerGetMax(hNode, pValue)
    ccall((:spinIntegerGetMax, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue)
end

function spinIntegerGetInc(hNode, pValue)
    ccall((:spinIntegerGetInc, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue)
end

function spinIntegerGetRepresentation(hNode, pValue)
    ccall((:spinIntegerGetRepresentation, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinRepresentation}), hNode, pValue)
end

function spinFloatSetValue(hNode, value)
    ccall((:spinFloatSetValue, libSpinnaker_C), spinError, (spinNodeHandle, Cdouble), hNode, value)
end

function spinFloatSetValueEx(hNode, bVerify, value)
    ccall((:spinFloatSetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cdouble), hNode, bVerify, value)
end

function spinFloatGetValue(hNode, pValue)
    ccall((:spinFloatGetValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Cdouble}), hNode, pValue)
end

function spinFloatGetValueEx(hNode, bVerify, pValue)
    ccall((:spinFloatGetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Ptr{Cdouble}), hNode, bVerify, pValue)
end

function spinFloatGetMin(hNode, pValue)
    ccall((:spinFloatGetMin, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Cdouble}), hNode, pValue)
end

function spinFloatGetMax(hNode, pValue)
    ccall((:spinFloatGetMax, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Cdouble}), hNode, pValue)
end

function spinFloatGetRepresentation(hNode, pValue)
    ccall((:spinFloatGetRepresentation, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinRepresentation}), hNode, pValue)
end

function spinFloatGetUnit(hNode, pBuf, pBufLen)
    ccall((:spinFloatGetUnit, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinEnumerationGetNumEntries(hNode, pValue)
    ccall((:spinEnumerationGetNumEntries, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Csize_t}), hNode, pValue)
end

function spinEnumerationGetEntryByIndex(hNode, index, phEntry)
    ccall((:spinEnumerationGetEntryByIndex, libSpinnaker_C), spinError, (spinNodeHandle, Csize_t, Ptr{spinNodeHandle}), hNode, index, phEntry)
end

function spinEnumerationGetEntryByName(hNode, pName, phEntry)
    ccall((:spinEnumerationGetEntryByName, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{spinNodeHandle}), hNode, pName, phEntry)
end

function spinEnumerationGetCurrentEntry(hNode, phEntry)
    ccall((:spinEnumerationGetCurrentEntry, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinNodeHandle}), hNode, phEntry)
end

function spinEnumerationSetIntValue(hNode, value)
    ccall((:spinEnumerationSetIntValue, libSpinnaker_C), spinError, (spinNodeHandle, Int64), hNode, value)
end

function spinEnumerationSetEnumValue(hNode, value)
    ccall((:spinEnumerationSetEnumValue, libSpinnaker_C), spinError, (spinNodeHandle, Csize_t), hNode, value)
end

function spinEnumerationEntryGetIntValue(hNode, pValue)
    ccall((:spinEnumerationEntryGetIntValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue)
end

function spinEnumerationEntryGetEnumValue(hNode, pValue)
    ccall((:spinEnumerationEntryGetEnumValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Csize_t}), hNode, pValue)
end

function spinEnumerationEntryGetSymbolic(hNode, pBuf, pBufLen)
    ccall((:spinEnumerationEntryGetSymbolic, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinBooleanSetValue(hNode, value)
    ccall((:spinBooleanSetValue, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t), hNode, value)
end

function spinBooleanGetValue(hNode, pbValue)
    ccall((:spinBooleanGetValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbValue)
end

function spinCommandExecute(hNode)
    ccall((:spinCommandExecute, libSpinnaker_C), spinError, (spinNodeHandle,), hNode)
end

function spinCommandIsDone(hNode, pbValue)
    ccall((:spinCommandIsDone, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbValue)
end

function spinCategoryGetNumFeatures(hNode, pValue)
    ccall((:spinCategoryGetNumFeatures, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Csize_t}), hNode, pValue)
end

function spinCategoryGetFeatureByIndex(hNode, index, phFeature)
    ccall((:spinCategoryGetFeatureByIndex, libSpinnaker_C), spinError, (spinNodeHandle, Csize_t, Ptr{spinNodeHandle}), hNode, index, phFeature)
end

function spinRegisterGet(hNode, pBuf, length)
    ccall((:spinRegisterGet, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{UInt8}, Int64), hNode, pBuf, length)
end

function spinRegisterGetEx(hNode, bVerify, bIgnoreCache, pBuf, length)
    ccall((:spinRegisterGetEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, bool8_t, Ptr{UInt8}, Int64), hNode, bVerify, bIgnoreCache, pBuf, length)
end

function spinRegisterGetAddress(hNode, pAddress)
    ccall((:spinRegisterGetAddress, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pAddress)
end

function spinRegisterGetLength(hNode, pLength)
    ccall((:spinRegisterGetLength, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pLength)
end

function spinRegisterSet(hNode, pBuf, length)
    ccall((:spinRegisterSet, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{UInt8}, Int64), hNode, pBuf, length)
end

function spinRegisterSetEx(hNode, bVerify, pBuf, length)
    ccall((:spinRegisterSetEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Ptr{UInt8}, Int64), hNode, bVerify, pBuf, length)
end

function spinRegisterSetReference(hNode, hRef)
    ccall((:spinRegisterSetReference, libSpinnaker_C), spinError, (spinNodeHandle, spinNodeHandle), hNode, hRef)
end
# Julia wrapper for header: /usr/include/spinnaker/spinc/SpinnakerGenApiDefsC.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /usr/include/spinnaker/spinc/SpinnakerPlatformC.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /usr/include/spinnaker/spinc/TransportLayerDefsC.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /usr/include/spinnaker/spinc/TransportLayerDeviceC.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /usr/include/spinnaker/spinc/TransportLayerInterfaceC.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /usr/include/spinnaker/spinc/TransportLayerStreamC.h
# Automatically generated using Clang.jl wrap_c
