# Julia wrapper for header: /usr/include/spinnaker/spinc/CameraDefsC.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /usr/include/spinnaker/spinc/ChunkDataDefC.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /usr/include/spinnaker/spinc/QuickSpinC.h
# Automatically generated using Clang.jl wrap_c


function quickSpinInit(hCamera, pQuickSpin)
    checkerror(ccall((:quickSpinInit, libSpinnaker_C), spinError, (spinCamera, Ptr{quickSpin}), hCamera, pQuickSpin))
end

function quickSpinInitEx(hCamera, pQuickSpin, pQuickSpinTLDevice, pQuickSpinTLStream)
    checkerror(ccall((:quickSpinInitEx, libSpinnaker_C), spinError, (spinCamera, Ptr{quickSpin}, Ptr{quickSpinTLDevice}, Ptr{quickSpinTLStream}), hCamera, pQuickSpin, pQuickSpinTLDevice, pQuickSpinTLStream))
end

function quickSpinTLDeviceInit(hCamera, pQuickSpinTLDevice)
    checkerror(ccall((:quickSpinTLDeviceInit, libSpinnaker_C), spinError, (spinCamera, Ptr{quickSpinTLDevice}), hCamera, pQuickSpinTLDevice))
end

function quickSpinTLStreamInit(hCamera, pQuickSpinTLStream)
    checkerror(ccall((:quickSpinTLStreamInit, libSpinnaker_C), spinError, (spinCamera, Ptr{quickSpinTLStream}), hCamera, pQuickSpinTLStream))
end

function quickSpinTLInterfaceInit(hInterface, pQuickSpinTLInterface)
    checkerror(ccall((:quickSpinTLInterfaceInit, libSpinnaker_C), spinError, (spinInterface, Ptr{quickSpinTLInterface}), hInterface, pQuickSpinTLInterface))
end
# Julia wrapper for header: /usr/include/spinnaker/spinc/QuickSpinDefsC.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /usr/include/spinnaker/spinc/SpinVideoC.h
# Automatically generated using Clang.jl wrap_c


function spinVideoOpenUncompressed(phSpinVideo, pName, option)
    checkerror(ccall((:spinVideoOpenUncompressed, libSpinVideo_C), spinError, (Ptr{spinVideo}, Cstring, spinAVIOption), phSpinVideo, pName, option))
end

function spinVideoOpenMJPG(phSpinVideo, pName, option)
    checkerror(ccall((:spinVideoOpenMJPG, libSpinVideo_C), spinError, (Ptr{spinVideo}, Cstring, spinMJPGOption), phSpinVideo, pName, option))
end

function spinVideoOpenH264(phSpinVideo, pName, option)
    checkerror(ccall((:spinVideoOpenH264, libSpinVideo_C), spinError, (Ptr{spinVideo}, Cstring, spinH264Option), phSpinVideo, pName, option))
end

function spinVideoAppend(hSpinVideo, hImage)
    checkerror(ccall((:spinVideoAppend, libSpinVideo_C), spinError, (spinVideo, spinImage), hSpinVideo, hImage))
end

function spinVideoSetMaximumFileSize(hSpinVideo, size)
    checkerror(ccall((:spinVideoSetMaximumFileSize, libSpinVideo_C), spinError, (spinVideo, UInt32), hSpinVideo, size))
end

function spinVideoClose(hSpinVideo)
    checkerror(ccall((:spinVideoClose, libSpinVideo_C), spinError, (spinVideo,), hSpinVideo))
end
# Julia wrapper for header: /usr/include/spinnaker/spinc/SpinnakerC.h
# Automatically generated using Clang.jl wrap_c


function spinErrorGetLast(pError)
    checkerror(ccall((:spinErrorGetLast, libSpinnaker_C), spinError, (Ptr{spinError},), pError))
end

function spinErrorGetLastMessage(pBuf, pBufLen)
    checkerror(ccall((:spinErrorGetLastMessage, libSpinnaker_C), spinError, (Cstring, Ptr{Csize_t}), pBuf, pBufLen))
end

function spinErrorGetLastBuildDate(pBuf, pBufLen)
    checkerror(ccall((:spinErrorGetLastBuildDate, libSpinnaker_C), spinError, (Cstring, Ptr{Csize_t}), pBuf, pBufLen))
end

function spinErrorGetLastBuildTime(pBuf, pBufLen)
    checkerror(ccall((:spinErrorGetLastBuildTime, libSpinnaker_C), spinError, (Cstring, Ptr{Csize_t}), pBuf, pBufLen))
end

function spinErrorGetLastFileName(pBuf, pBufLen)
    checkerror(ccall((:spinErrorGetLastFileName, libSpinnaker_C), spinError, (Cstring, Ptr{Csize_t}), pBuf, pBufLen))
end

function spinErrorGetLastFullMessage(pBuf, pBufLen)
    checkerror(ccall((:spinErrorGetLastFullMessage, libSpinnaker_C), spinError, (Cstring, Ptr{Csize_t}), pBuf, pBufLen))
end

function spinErrorGetLastFunctionName(pBuf, pBufLen)
    checkerror(ccall((:spinErrorGetLastFunctionName, libSpinnaker_C), spinError, (Cstring, Ptr{Csize_t}), pBuf, pBufLen))
end

function spinErrorGetLastLineNumber(pLineNum)
    checkerror(ccall((:spinErrorGetLastLineNumber, libSpinnaker_C), spinError, (Ptr{Int64},), pLineNum))
end

function spinSystemGetInstance(phSystem)
    checkerror(ccall((:spinSystemGetInstance, libSpinnaker_C), spinError, (Ptr{spinSystem},), phSystem))
end

function spinSystemReleaseInstance(hSystem)
    checkerror(ccall((:spinSystemReleaseInstance, libSpinnaker_C), spinError, (spinSystem,), hSystem))
end

function spinSystemGetInterfaces(hSystem, hInterfaceList)
    checkerror(ccall((:spinSystemGetInterfaces, libSpinnaker_C), spinError, (spinSystem, spinInterfaceList), hSystem, hInterfaceList))
end

function spinSystemGetCameras(hSystem, hCameraList)
    checkerror(ccall((:spinSystemGetCameras, libSpinnaker_C), spinError, (spinSystem, spinCameraList), hSystem, hCameraList))
end

function spinSystemGetCamerasEx(hSystem, bUpdateInterfaces, bUpdateCameras, hCameraList)
    checkerror(ccall((:spinSystemGetCamerasEx, libSpinnaker_C), spinError, (spinSystem, bool8_t, bool8_t, spinCameraList), hSystem, bUpdateInterfaces, bUpdateCameras, hCameraList))
end

function spinSystemSetLoggingLevel(hSystem, logLevel)
    checkerror(ccall((:spinSystemSetLoggingLevel, libSpinnaker_C), spinError, (spinSystem, spinnakerLogLevel), hSystem, logLevel))
end

function spinSystemGetLoggingLevel(hSystem, pLogLevel)
    checkerror(ccall((:spinSystemGetLoggingLevel, libSpinnaker_C), spinError, (spinSystem, Ptr{spinnakerLogLevel}), hSystem, pLogLevel))
end

function spinSystemRegisterLogEvent(hSystem, hLogEvent)
    checkerror(ccall((:spinSystemRegisterLogEvent, libSpinnaker_C), spinError, (spinSystem, spinLogEvent), hSystem, hLogEvent))
end

function spinSystemUnregisterLogEvent(hSystem, hLogEvent)
    checkerror(ccall((:spinSystemUnregisterLogEvent, libSpinnaker_C), spinError, (spinSystem, spinLogEvent), hSystem, hLogEvent))
end

function spinSystemUnregisterAllLogEvents(hSystem)
    checkerror(ccall((:spinSystemUnregisterAllLogEvents, libSpinnaker_C), spinError, (spinSystem,), hSystem))
end

function spinSystemIsInUse(hSystem, pbIsInUse)
    checkerror(ccall((:spinSystemIsInUse, libSpinnaker_C), spinError, (spinSystem, Ptr{bool8_t}), hSystem, pbIsInUse))
end

function spinSystemRegisterArrivalEvent(hSystem, hArrivalEvent)
    checkerror(ccall((:spinSystemRegisterArrivalEvent, libSpinnaker_C), spinError, (spinSystem, spinArrivalEvent), hSystem, hArrivalEvent))
end

function spinSystemRegisterRemovalEvent(hSystem, hRemovalEvent)
    checkerror(ccall((:spinSystemRegisterRemovalEvent, libSpinnaker_C), spinError, (spinSystem, spinRemovalEvent), hSystem, hRemovalEvent))
end

function spinSystemUnregisterArrivalEvent(hSystem, hArrivalEvent)
    checkerror(ccall((:spinSystemUnregisterArrivalEvent, libSpinnaker_C), spinError, (spinSystem, spinArrivalEvent), hSystem, hArrivalEvent))
end

function spinSystemUnregisterRemovalEvent(hSystem, hRemovalEvent)
    checkerror(ccall((:spinSystemUnregisterRemovalEvent, libSpinnaker_C), spinError, (spinSystem, spinRemovalEvent), hSystem, hRemovalEvent))
end

function spinSystemRegisterInterfaceEvent(hSystem, hInterfaceEvent)
    checkerror(ccall((:spinSystemRegisterInterfaceEvent, libSpinnaker_C), spinError, (spinSystem, spinInterfaceEvent), hSystem, hInterfaceEvent))
end

function spinSystemUnregisterInterfaceEvent(hSystem, hInterfaceEvent)
    checkerror(ccall((:spinSystemUnregisterInterfaceEvent, libSpinnaker_C), spinError, (spinSystem, spinInterfaceEvent), hSystem, hInterfaceEvent))
end

function spinSystemUpdateCameras(hSystem, pbChanged)
    checkerror(ccall((:spinSystemUpdateCameras, libSpinnaker_C), spinError, (spinSystem, Ptr{bool8_t}), hSystem, pbChanged))
end

function spinSystemUpdateCamerasEx(hSystem, bUpdateInterfaces, pbChanged)
    checkerror(ccall((:spinSystemUpdateCamerasEx, libSpinnaker_C), spinError, (spinSystem, bool8_t, Ptr{bool8_t}), hSystem, bUpdateInterfaces, pbChanged))
end

function spinSystemSendActionCommand(hSystem, iDeviceKey, iGroupKey, iGroupMask, iActionTime, piResultSize, results)
    checkerror(ccall((:spinSystemSendActionCommand, libSpinnaker_C), spinError, (spinSystem, Csize_t, Csize_t, Csize_t, Csize_t, Ptr{Csize_t}, Ptr{actionCommandResult}), hSystem, iDeviceKey, iGroupKey, iGroupMask, iActionTime, piResultSize, results))
end

function spinSystemGetLibraryVersion(hSystem, hLibraryVersion)
    checkerror(ccall((:spinSystemGetLibraryVersion, libSpinnaker_C), spinError, (spinSystem, Ptr{spinLibraryVersion}), hSystem, hLibraryVersion))
end

function spinInterfaceListCreateEmpty(phInterfaceList)
    checkerror(ccall((:spinInterfaceListCreateEmpty, libSpinnaker_C), spinError, (Ptr{spinInterfaceList},), phInterfaceList))
end

function spinInterfaceListDestroy(hInterfaceList)
    checkerror(ccall((:spinInterfaceListDestroy, libSpinnaker_C), spinError, (spinInterfaceList,), hInterfaceList))
end

function spinInterfaceListGetSize(hInterfaceList, pSize)
    checkerror(ccall((:spinInterfaceListGetSize, libSpinnaker_C), spinError, (spinInterfaceList, Ptr{Csize_t}), hInterfaceList, pSize))
end

function spinInterfaceListGet(hInterfaceList, index, phInterface)
    checkerror(ccall((:spinInterfaceListGet, libSpinnaker_C), spinError, (spinInterfaceList, Csize_t, Ptr{spinInterface}), hInterfaceList, index, phInterface))
end

function spinInterfaceListClear(hInterfaceList)
    checkerror(ccall((:spinInterfaceListClear, libSpinnaker_C), spinError, (spinInterfaceList,), hInterfaceList))
end

function spinCameraListCreateEmpty(phCameraList)
    checkerror(ccall((:spinCameraListCreateEmpty, libSpinnaker_C), spinError, (Ptr{spinCameraList},), phCameraList))
end

function spinCameraListDestroy(hCameraList)
    checkerror(ccall((:spinCameraListDestroy, libSpinnaker_C), spinError, (spinCameraList,), hCameraList))
end

function spinCameraListGetSize(hCameraList, pSize)
    checkerror(ccall((:spinCameraListGetSize, libSpinnaker_C), spinError, (spinCameraList, Ptr{Csize_t}), hCameraList, pSize))
end

function spinCameraListGet(hCameraList, index, phCamera)
    checkerror(ccall((:spinCameraListGet, libSpinnaker_C), spinError, (spinCameraList, Csize_t, Ptr{spinCamera}), hCameraList, index, phCamera))
end

function spinCameraListClear(hCameraList)
    checkerror(ccall((:spinCameraListClear, libSpinnaker_C), spinError, (spinCameraList,), hCameraList))
end

function spinCameraListRemove(hCameraList, index)
    checkerror(ccall((:spinCameraListRemove, libSpinnaker_C), spinError, (spinCameraList, Csize_t), hCameraList, index))
end

function spinCameraListAppend(hCameraListBase, hCameraListToAppend)
    checkerror(ccall((:spinCameraListAppend, libSpinnaker_C), spinError, (spinCameraList, spinCameraList), hCameraListBase, hCameraListToAppend))
end

function spinCameraListGetBySerial(hCameraList, pSerial, phCamera)
    checkerror(ccall((:spinCameraListGetBySerial, libSpinnaker_C), spinError, (spinCameraList, Cstring, Ptr{spinCamera}), hCameraList, pSerial, phCamera))
end

function spinCameraListRemoveBySerial(hCameraList, pSerial)
    checkerror(ccall((:spinCameraListRemoveBySerial, libSpinnaker_C), spinError, (spinCameraList, Cstring), hCameraList, pSerial))
end

function spinInterfaceUpdateCameras(hInterface, pbChanged)
    checkerror(ccall((:spinInterfaceUpdateCameras, libSpinnaker_C), spinError, (spinInterface, Ptr{bool8_t}), hInterface, pbChanged))
end

function spinInterfaceGetCameras(hInterface, hCameraList)
    checkerror(ccall((:spinInterfaceGetCameras, libSpinnaker_C), spinError, (spinInterface, spinCameraList), hInterface, hCameraList))
end

function spinInterfaceGetCamerasEx(hInterface, bUpdateCameras, hCameraList)
    checkerror(ccall((:spinInterfaceGetCamerasEx, libSpinnaker_C), spinError, (spinInterface, bool8_t, spinCameraList), hInterface, bUpdateCameras, hCameraList))
end

function spinInterfaceGetTLNodeMap(hInterface, phNodeMap)
    checkerror(ccall((:spinInterfaceGetTLNodeMap, libSpinnaker_C), spinError, (spinInterface, Ptr{spinNodeMapHandle}), hInterface, phNodeMap))
end

function spinInterfaceRegisterArrivalEvent(hInterface, hArrivalEvent)
    checkerror(ccall((:spinInterfaceRegisterArrivalEvent, libSpinnaker_C), spinError, (spinInterface, spinArrivalEvent), hInterface, hArrivalEvent))
end

function spinInterfaceRegisterRemovalEvent(hInterface, hRemovalEvent)
    checkerror(ccall((:spinInterfaceRegisterRemovalEvent, libSpinnaker_C), spinError, (spinInterface, spinRemovalEvent), hInterface, hRemovalEvent))
end

function spinInterfaceUnregisterArrivalEvent(hInterface, hArrivalEvent)
    checkerror(ccall((:spinInterfaceUnregisterArrivalEvent, libSpinnaker_C), spinError, (spinInterface, spinArrivalEvent), hInterface, hArrivalEvent))
end

function spinInterfaceUnregisterRemovalEvent(hInterface, hRemovalEvent)
    checkerror(ccall((:spinInterfaceUnregisterRemovalEvent, libSpinnaker_C), spinError, (spinInterface, spinRemovalEvent), hInterface, hRemovalEvent))
end

function spinInterfaceRegisterInterfaceEvent(hInterface, hInterfaceEvent)
    checkerror(ccall((:spinInterfaceRegisterInterfaceEvent, libSpinnaker_C), spinError, (spinInterface, spinInterfaceEvent), hInterface, hInterfaceEvent))
end

function spinInterfaceUnregisterInterfaceEvent(hInterface, hInterfaceEvent)
    checkerror(ccall((:spinInterfaceUnregisterInterfaceEvent, libSpinnaker_C), spinError, (spinInterface, spinInterfaceEvent), hInterface, hInterfaceEvent))
end

function spinInterfaceRelease(hInterface)
    checkerror(ccall((:spinInterfaceRelease, libSpinnaker_C), spinError, (spinInterface,), hInterface))
end

function spinInterfaceIsInUse(hInterface, pbIsInUse)
    checkerror(ccall((:spinInterfaceIsInUse, libSpinnaker_C), spinError, (spinInterface, Ptr{bool8_t}), hInterface, pbIsInUse))
end

function spinInterfaceSendActionCommand(hInterface, iDeviceKey, iGroupKey, iGroupMask, iActionTime, piResultSize, results)
    checkerror(ccall((:spinInterfaceSendActionCommand, libSpinnaker_C), spinError, (spinInterface, Csize_t, Csize_t, Csize_t, Csize_t, Ptr{Csize_t}, Ptr{actionCommandResult}), hInterface, iDeviceKey, iGroupKey, iGroupMask, iActionTime, piResultSize, results))
end

function spinCameraInit(hCamera)
    checkerror(ccall((:spinCameraInit, libSpinnaker_C), spinError, (spinCamera,), hCamera))
end

function spinCameraDeInit(hCamera)
    checkerror(ccall((:spinCameraDeInit, libSpinnaker_C), spinError, (spinCamera,), hCamera))
end

function spinCameraGetNodeMap(hCamera, phNodeMap)
    checkerror(ccall((:spinCameraGetNodeMap, libSpinnaker_C), spinError, (spinCamera, Ptr{spinNodeMapHandle}), hCamera, phNodeMap))
end

function spinCameraGetTLDeviceNodeMap(hCamera, phNodeMap)
    checkerror(ccall((:spinCameraGetTLDeviceNodeMap, libSpinnaker_C), spinError, (spinCamera, Ptr{spinNodeMapHandle}), hCamera, phNodeMap))
end

function spinCameraGetTLStreamNodeMap(hCamera, phNodeMap)
    checkerror(ccall((:spinCameraGetTLStreamNodeMap, libSpinnaker_C), spinError, (spinCamera, Ptr{spinNodeMapHandle}), hCamera, phNodeMap))
end

function spinCameraGetAccessMode(hCamera, pAccessMode)
    checkerror(ccall((:spinCameraGetAccessMode, libSpinnaker_C), spinError, (spinCamera, Ptr{spinAccessMode}), hCamera, pAccessMode))
end

function spinCameraReadPort(hCamera, iAddress, pBuffer, iSize)
    checkerror(ccall((:spinCameraReadPort, libSpinnaker_C), spinError, (spinCamera, UInt64, Ptr{Cvoid}, Csize_t), hCamera, iAddress, pBuffer, iSize))
end

function spinCameraWritePort(hCamera, iAddress, pBuffer, iSize)
    checkerror(ccall((:spinCameraWritePort, libSpinnaker_C), spinError, (spinCamera, UInt64, Ptr{Cvoid}, Csize_t), hCamera, iAddress, pBuffer, iSize))
end

function spinCameraBeginAcquisition(hCamera)
    checkerror(ccall((:spinCameraBeginAcquisition, libSpinnaker_C), spinError, (spinCamera,), hCamera))
end

function spinCameraEndAcquisition(hCamera)
    checkerror(ccall((:spinCameraEndAcquisition, libSpinnaker_C), spinError, (spinCamera,), hCamera))
end

function spinCameraGetNextImage(hCamera, phImage)
    checkerror(ccall((:spinCameraGetNextImage, libSpinnaker_C), spinError, (spinCamera, Ptr{spinImage}), hCamera, phImage))
end

function spinCameraGetNextImageEx(hCamera, grabTimeout, phImage)
    checkerror(ccall((:spinCameraGetNextImageEx, libSpinnaker_C), spinError, (spinCamera, UInt64, Ptr{spinImage}), hCamera, grabTimeout, phImage))
end

function spinCameraGetUniqueID(hCamera, pBuf, pBufLen)
    checkerror(ccall((:spinCameraGetUniqueID, libSpinnaker_C), spinError, (spinCamera, Cstring, Ptr{Csize_t}), hCamera, pBuf, pBufLen))
end

function spinCameraIsStreaming(hCamera, pbIsStreaming)
    checkerror(ccall((:spinCameraIsStreaming, libSpinnaker_C), spinError, (spinCamera, Ptr{bool8_t}), hCamera, pbIsStreaming))
end

function spinCameraGetGuiXml(hCamera, pBuf, pBufLen)
    checkerror(ccall((:spinCameraGetGuiXml, libSpinnaker_C), spinError, (spinCamera, Cstring, Ptr{Csize_t}), hCamera, pBuf, pBufLen))
end

function spinCameraRegisterDeviceEvent(hCamera, hDeviceEvent)
    checkerror(ccall((:spinCameraRegisterDeviceEvent, libSpinnaker_C), spinError, (spinCamera, spinDeviceEvent), hCamera, hDeviceEvent))
end

function spinCameraRegisterDeviceEventEx(hCamera, hDeviceEvent, pName)
    checkerror(ccall((:spinCameraRegisterDeviceEventEx, libSpinnaker_C), spinError, (spinCamera, spinDeviceEvent, Cstring), hCamera, hDeviceEvent, pName))
end

function spinCameraUnregisterDeviceEvent(hCamera, hDeviceEvent)
    checkerror(ccall((:spinCameraUnregisterDeviceEvent, libSpinnaker_C), spinError, (spinCamera, spinDeviceEvent), hCamera, hDeviceEvent))
end

function spinCameraRegisterImageEvent(hCamera, hImageEvent)
    checkerror(ccall((:spinCameraRegisterImageEvent, libSpinnaker_C), spinError, (spinCamera, spinImageEvent), hCamera, hImageEvent))
end

function spinCameraUnregisterImageEvent(hCamera, hImageEvent)
    checkerror(ccall((:spinCameraUnregisterImageEvent, libSpinnaker_C), spinError, (spinCamera, spinImageEvent), hCamera, hImageEvent))
end

function spinCameraRelease(hCamera)
    checkerror(ccall((:spinCameraRelease, libSpinnaker_C), spinError, (spinCamera,), hCamera))
end

function spinCameraIsValid(hCamera, pbValid)
    checkerror(ccall((:spinCameraIsValid, libSpinnaker_C), spinError, (spinCamera, Ptr{bool8_t}), hCamera, pbValid))
end

function spinCameraIsInitialized(hCamera, pbInit)
    checkerror(ccall((:spinCameraIsInitialized, libSpinnaker_C), spinError, (spinCamera, Ptr{bool8_t}), hCamera, pbInit))
end

function spinCameraDiscoverMaxPacketSize(hCamera, pMaxPacketSize)
    checkerror(ccall((:spinCameraDiscoverMaxPacketSize, libSpinnaker_C), spinError, (spinCamera, Ptr{UInt32}), hCamera, pMaxPacketSize))
end

function spinImageCreateEmpty(phImage)
    checkerror(ccall((:spinImageCreateEmpty, libSpinnaker_C), spinError, (Ptr{spinImage},), phImage))
end

function spinImageCreate(hSrcImage, phDestImage)
    checkerror(ccall((:spinImageCreate, libSpinnaker_C), spinError, (spinImage, Ptr{spinImage}), hSrcImage, phDestImage))
end

function spinImageCreateEx(phImage, width, height, offsetX, offsetY, pixelFormat, pData)
    checkerror(ccall((:spinImageCreateEx, libSpinnaker_C), spinError, (Ptr{spinImage}, Csize_t, Csize_t, Csize_t, Csize_t, spinPixelFormatEnums, Ptr{Cvoid}), phImage, width, height, offsetX, offsetY, pixelFormat, pData))
end

function spinImageDestroy(hImage)
    checkerror(ccall((:spinImageDestroy, libSpinnaker_C), spinError, (spinImage,), hImage))
end

function spinImageSetDefaultColorProcessing(algorithm)
    checkerror(ccall((:spinImageSetDefaultColorProcessing, libSpinnaker_C), spinError, (spinColorProcessingAlgorithm,), algorithm))
end

function spinImageGetDefaultColorProcessing(pAlgorithm)
    checkerror(ccall((:spinImageGetDefaultColorProcessing, libSpinnaker_C), spinError, (Ptr{spinColorProcessingAlgorithm},), pAlgorithm))
end

function spinImageGetColorProcessing(hImage, pAlgorithm)
    checkerror(ccall((:spinImageGetColorProcessing, libSpinnaker_C), spinError, (spinImage, Ptr{spinColorProcessingAlgorithm}), hImage, pAlgorithm))
end

function spinImageConvert(hSrcImage, pixelFormat, hDestImage)
    checkerror(ccall((:spinImageConvert, libSpinnaker_C), spinError, (spinImage, spinPixelFormatEnums, spinImage), hSrcImage, pixelFormat, hDestImage))
end

function spinImageConvertEx(hSrcImage, pixelFormat, algorithm, hDestImage)
    checkerror(ccall((:spinImageConvertEx, libSpinnaker_C), spinError, (spinImage, spinPixelFormatEnums, spinColorProcessingAlgorithm, spinImage), hSrcImage, pixelFormat, algorithm, hDestImage))
end

function spinImageReset(hImage, width, height, offsetX, offsetY, pixelFormat)
    checkerror(ccall((:spinImageReset, libSpinnaker_C), spinError, (spinImage, Csize_t, Csize_t, Csize_t, Csize_t, spinPixelFormatEnums), hImage, width, height, offsetX, offsetY, pixelFormat))
end

function spinImageResetEx(hImage, width, height, offsetX, offsetY, pixelFormat, pData)
    checkerror(ccall((:spinImageResetEx, libSpinnaker_C), spinError, (spinImage, Csize_t, Csize_t, Csize_t, Csize_t, spinPixelFormatEnums, Ptr{Cvoid}), hImage, width, height, offsetX, offsetY, pixelFormat, pData))
end

function spinImageGetID(hImage, pId)
    checkerror(ccall((:spinImageGetID, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pId))
end

function spinImageGetData(hImage, ppData)
    checkerror(ccall((:spinImageGetData, libSpinnaker_C), spinError, (spinImage, Ptr{Ptr{Cvoid}}), hImage, ppData))
end

function spinImageGetPrivateData(hImage, ppData)
    checkerror(ccall((:spinImageGetPrivateData, libSpinnaker_C), spinError, (spinImage, Ptr{Ptr{Cvoid}}), hImage, ppData))
end

function spinImageGetBufferSize(hImage, pSize)
    checkerror(ccall((:spinImageGetBufferSize, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pSize))
end

function spinImageDeepCopy(hSrcImage, hDestImage)
    checkerror(ccall((:spinImageDeepCopy, libSpinnaker_C), spinError, (spinImage, spinImage), hSrcImage, hDestImage))
end

function spinImageGetWidth(hImage, pWidth)
    checkerror(ccall((:spinImageGetWidth, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pWidth))
end

function spinImageGetHeight(hImage, pHeight)
    checkerror(ccall((:spinImageGetHeight, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pHeight))
end

function spinImageGetOffsetX(hImage, pOffsetX)
    checkerror(ccall((:spinImageGetOffsetX, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pOffsetX))
end

function spinImageGetOffsetY(hImage, pOffsetY)
    checkerror(ccall((:spinImageGetOffsetY, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pOffsetY))
end

function spinImageGetPaddingX(hImage, pPaddingX)
    checkerror(ccall((:spinImageGetPaddingX, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pPaddingX))
end

function spinImageGetPaddingY(hImage, pPaddingY)
    checkerror(ccall((:spinImageGetPaddingY, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pPaddingY))
end

function spinImageGetFrameID(hImage, pFrameID)
    checkerror(ccall((:spinImageGetFrameID, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pFrameID))
end

function spinImageGetTimeStamp(hImage, pTimeStamp)
    checkerror(ccall((:spinImageGetTimeStamp, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pTimeStamp))
end

function spinImageGetPayloadType(hImage, pPayloadType)
    checkerror(ccall((:spinImageGetPayloadType, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pPayloadType))
end

function spinImageGetTLPayloadType(hImage, pPayloadType)
    checkerror(ccall((:spinImageGetTLPayloadType, libSpinnaker_C), spinError, (spinImage, Ptr{spinPayloadTypeInfoIDs}), hImage, pPayloadType))
end

function spinImageGetPixelFormat(hImage, pPixelFormat)
    checkerror(ccall((:spinImageGetPixelFormat, libSpinnaker_C), spinError, (spinImage, Ptr{spinPixelFormatEnums}), hImage, pPixelFormat))
end

function spinImageGetTLPixelFormat(hImage, pPixelFormat)
    checkerror(ccall((:spinImageGetTLPixelFormat, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pPixelFormat))
end

function spinImageGetTLPixelFormatNamespace(hImage, pPixelFormatNamespace)
    checkerror(ccall((:spinImageGetTLPixelFormatNamespace, libSpinnaker_C), spinError, (spinImage, Ptr{spinPixelFormatNamespaceID}), hImage, pPixelFormatNamespace))
end

function spinImageGetPixelFormatName(hImage, pBuf, pBufLen)
    checkerror(ccall((:spinImageGetPixelFormatName, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{Csize_t}), hImage, pBuf, pBufLen))
end

function spinImageIsIncomplete(hImage, pbIsIncomplete)
    checkerror(ccall((:spinImageIsIncomplete, libSpinnaker_C), spinError, (spinImage, Ptr{bool8_t}), hImage, pbIsIncomplete))
end

function spinImageGetValidPayloadSize(hImage, pSize)
    checkerror(ccall((:spinImageGetValidPayloadSize, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pSize))
end

function spinImageSave(hImage, pFilename, format)
    checkerror(ccall((:spinImageSave, libSpinnaker_C), spinError, (spinImage, Cstring, spinImageFileFormat), hImage, pFilename, format))
end

function spinImageSaveFromExt(hImage, pFilename)
    checkerror(ccall((:spinImageSaveFromExt, libSpinnaker_C), spinError, (spinImage, Cstring), hImage, pFilename))
end

function spinImageSavePng(hImage, pFilename, pOption)
    checkerror(ccall((:spinImageSavePng, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinPNGOption}), hImage, pFilename, pOption))
end

function spinImageSavePpm(hImage, pFilename, pOption)
    checkerror(ccall((:spinImageSavePpm, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinPPMOption}), hImage, pFilename, pOption))
end

function spinImageSavePgm(hImage, pFilename, pOption)
    checkerror(ccall((:spinImageSavePgm, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinPGMOption}), hImage, pFilename, pOption))
end

function spinImageSaveTiff(hImage, pFilename, pOption)
    checkerror(ccall((:spinImageSaveTiff, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinTIFFOption}), hImage, pFilename, pOption))
end

function spinImageSaveJpeg(hImage, pFilename, pOption)
    checkerror(ccall((:spinImageSaveJpeg, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinJPEGOption}), hImage, pFilename, pOption))
end

function spinImageSaveJpg2(hImage, pFilename, pOption)
    checkerror(ccall((:spinImageSaveJpg2, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinJPG2Option}), hImage, pFilename, pOption))
end

function spinImageSaveBmp(hImage, pFilename, pOption)
    checkerror(ccall((:spinImageSaveBmp, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{spinBMPOption}), hImage, pFilename, pOption))
end

function spinImageGetChunkLayoutID(hImage, pId)
    checkerror(ccall((:spinImageGetChunkLayoutID, libSpinnaker_C), spinError, (spinImage, Ptr{UInt64}), hImage, pId))
end

function spinImageCalculateStatistics(hImage, hStatistics)
    checkerror(ccall((:spinImageCalculateStatistics, libSpinnaker_C), spinError, (spinImage, spinImageStatistics), hImage, hStatistics))
end

function spinImageGetStatus(hImage, pStatus)
    checkerror(ccall((:spinImageGetStatus, libSpinnaker_C), spinError, (spinImage, Ptr{spinImageStatus}), hImage, pStatus))
end

function spinImageGetStatusDescription(status, pBuf, pBufLen)
    checkerror(ccall((:spinImageGetStatusDescription, libSpinnaker_C), spinError, (spinImageStatus, Cstring, Ptr{Csize_t}), status, pBuf, pBufLen))
end

function spinImageRelease(hImage)
    checkerror(ccall((:spinImageRelease, libSpinnaker_C), spinError, (spinImage,), hImage))
end

function spinImageHasCRC(hImage, pbHasCRC)
    checkerror(ccall((:spinImageHasCRC, libSpinnaker_C), spinError, (spinImage, Ptr{bool8_t}), hImage, pbHasCRC))
end

function spinImageCheckCRC(hImage, pbCheckCRC)
    checkerror(ccall((:spinImageCheckCRC, libSpinnaker_C), spinError, (spinImage, Ptr{bool8_t}), hImage, pbCheckCRC))
end

function spinImageGetBitsPerPixel(hImage, pBitsPerPixel)
    checkerror(ccall((:spinImageGetBitsPerPixel, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pBitsPerPixel))
end

function spinImageGetSize(hImage, pImageSize)
    checkerror(ccall((:spinImageGetSize, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pImageSize))
end

function spinImageGetStride(hImage, pStride)
    checkerror(ccall((:spinImageGetStride, libSpinnaker_C), spinError, (spinImage, Ptr{Csize_t}), hImage, pStride))
end

function spinDeviceEventCreate(phDeviceEvent, pFunction, pUserData)
    checkerror(ccall((:spinDeviceEventCreate, libSpinnaker_C), spinError, (Ptr{spinDeviceEvent}, spinDeviceEventFunction, Ptr{Cvoid}), phDeviceEvent, pFunction, pUserData))
end

function spinDeviceEventDestroy(hDeviceEvent)
    checkerror(ccall((:spinDeviceEventDestroy, libSpinnaker_C), spinError, (spinDeviceEvent,), hDeviceEvent))
end

function spinImageEventCreate(phImageEvent, pFunction, pUserData)
    checkerror(ccall((:spinImageEventCreate, libSpinnaker_C), spinError, (Ptr{spinImageEvent}, spinImageEventFunction, Ptr{Cvoid}), phImageEvent, pFunction, pUserData))
end

function spinImageEventDestroy(hImageEvent)
    checkerror(ccall((:spinImageEventDestroy, libSpinnaker_C), spinError, (spinImageEvent,), hImageEvent))
end

function spinArrivalEventCreate(phArrivalEvent, pFunction, pUserData)
    checkerror(ccall((:spinArrivalEventCreate, libSpinnaker_C), spinError, (Ptr{spinArrivalEvent}, spinArrivalEventFunction, Ptr{Cvoid}), phArrivalEvent, pFunction, pUserData))
end

function spinArrivalEventDestroy(hArrivalEvent)
    checkerror(ccall((:spinArrivalEventDestroy, libSpinnaker_C), spinError, (spinArrivalEvent,), hArrivalEvent))
end

function spinRemovalEventCreate(phRemovalEvent, pFunction, pUserData)
    checkerror(ccall((:spinRemovalEventCreate, libSpinnaker_C), spinError, (Ptr{spinRemovalEvent}, spinRemovalEventFunction, Ptr{Cvoid}), phRemovalEvent, pFunction, pUserData))
end

function spinRemovalEventDestroy(hRemovalEvent)
    checkerror(ccall((:spinRemovalEventDestroy, libSpinnaker_C), spinError, (spinRemovalEvent,), hRemovalEvent))
end

function spinInterfaceEventCreate(phInterfaceEvent, pArrivalFunction, pRemovalFunction, pUserData)
    checkerror(ccall((:spinInterfaceEventCreate, libSpinnaker_C), spinError, (Ptr{spinInterfaceEvent}, spinArrivalEventFunction, spinRemovalEventFunction, Ptr{Cvoid}), phInterfaceEvent, pArrivalFunction, pRemovalFunction, pUserData))
end

function spinInterfaceEventDestroy(hInterfaceEvent)
    checkerror(ccall((:spinInterfaceEventDestroy, libSpinnaker_C), spinError, (spinInterfaceEvent,), hInterfaceEvent))
end

function spinLogEventCreate(phLogEvent, pFunction, pUserData)
    checkerror(ccall((:spinLogEventCreate, libSpinnaker_C), spinError, (Ptr{spinLogEvent}, spinLogEventFunction, Ptr{Cvoid}), phLogEvent, pFunction, pUserData))
end

function spinLogEventDestroy(hLogEvent)
    checkerror(ccall((:spinLogEventDestroy, libSpinnaker_C), spinError, (spinLogEvent,), hLogEvent))
end

function spinImageStatisticsCreate(phStatistics)
    checkerror(ccall((:spinImageStatisticsCreate, libSpinnaker_C), spinError, (Ptr{spinImageStatistics},), phStatistics))
end

function spinImageStatisticsDestroy(hStatistics)
    checkerror(ccall((:spinImageStatisticsDestroy, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics))
end

function spinImageStatisticsEnableAll(hStatistics)
    checkerror(ccall((:spinImageStatisticsEnableAll, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics))
end

function spinImageStatisticsDisableAll(hStatistics)
    checkerror(ccall((:spinImageStatisticsDisableAll, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics))
end

function spinImageStatisticsEnableGreyOnly(hStatistics)
    checkerror(ccall((:spinImageStatisticsEnableGreyOnly, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics))
end

function spinImageStatisticsEnableRgbOnly(hStatistics)
    checkerror(ccall((:spinImageStatisticsEnableRgbOnly, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics))
end

function spinImageStatisticsEnableHslOnly(hStatistics)
    checkerror(ccall((:spinImageStatisticsEnableHslOnly, libSpinnaker_C), spinError, (spinImageStatistics,), hStatistics))
end

function spinImageStatisticsGetChannelStatus(hStatistics, channel, pbEnabled)
    checkerror(ccall((:spinImageStatisticsGetChannelStatus, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{bool8_t}), hStatistics, channel, pbEnabled))
end

function spinImageStatisticsSetChannelStatus(hStatistics, channel, bEnable)
    checkerror(ccall((:spinImageStatisticsSetChannelStatus, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, bool8_t), hStatistics, channel, bEnable))
end

function spinImageStatisticsGetRange(hStatistics, channel, pMin, pMax)
    checkerror(ccall((:spinImageStatisticsGetRange, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{UInt32}, Ptr{UInt32}), hStatistics, channel, pMin, pMax))
end

function spinImageStatisticsGetPixelValueRange(hStatistics, channel, pMin, pMax)
    checkerror(ccall((:spinImageStatisticsGetPixelValueRange, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{UInt32}, Ptr{UInt32}), hStatistics, channel, pMin, pMax))
end

function spinImageStatisticsGetNumPixelValues(hStatistics, channel, pNumValues)
    checkerror(ccall((:spinImageStatisticsGetNumPixelValues, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{UInt32}), hStatistics, channel, pNumValues))
end

function spinImageStatisticsGetMean(hStatistics, channel, pMean)
    checkerror(ccall((:spinImageStatisticsGetMean, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{Cfloat}), hStatistics, channel, pMean))
end

function spinImageStatisticsGetHistogram(hStatistics, channel, ppHistogram)
    checkerror(ccall((:spinImageStatisticsGetHistogram, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{Ptr{Cint}}), hStatistics, channel, ppHistogram))
end

function spinImageStatisticsGetAll(hStatistics, channel, pRangeMin, pRangeMax, pPixelValueMin, pPixelValueMax, pNumPixelValues, pPixelValueMean, ppHistogram)
    checkerror(ccall((:spinImageStatisticsGetAll, libSpinnaker_C), spinError, (spinImageStatistics, spinStatisticsChannel, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt32}, Ptr{Cfloat}, Ptr{Ptr{Cint}}), hStatistics, channel, pRangeMin, pRangeMax, pPixelValueMin, pPixelValueMax, pNumPixelValues, pPixelValueMean, ppHistogram))
end

function spinLogDataGetCategoryName(hLogEventData, pBuf, pBufLen)
    checkerror(ccall((:spinLogDataGetCategoryName, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen))
end

function spinLogDataGetPriority(hLogEventData, pValue)
    checkerror(ccall((:spinLogDataGetPriority, libSpinnaker_C), spinError, (spinLogEventData, Ptr{Int64}), hLogEventData, pValue))
end

function spinLogDataGetPriorityName(hLogEventData, pBuf, pBufLen)
    checkerror(ccall((:spinLogDataGetPriorityName, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen))
end

function spinLogDataGetTimestamp(hLogEventData, pBuf, pBufLen)
    checkerror(ccall((:spinLogDataGetTimestamp, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen))
end

function spinLogDataGetNDC(hLogEventData, pBuf, pBufLen)
    checkerror(ccall((:spinLogDataGetNDC, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen))
end

function spinLogDataGetThreadName(hLogEventData, pBuf, pBufLen)
    checkerror(ccall((:spinLogDataGetThreadName, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen))
end

function spinLogDataGetLogMessage(hLogEventData, pBuf, pBufLen)
    checkerror(ccall((:spinLogDataGetLogMessage, libSpinnaker_C), spinError, (spinLogEventData, Cstring, Ptr{Csize_t}), hLogEventData, pBuf, pBufLen))
end

function spinDeviceEventGetId(hDeviceEventData, pEventId)
    checkerror(ccall((:spinDeviceEventGetId, libSpinnaker_C), spinError, (spinDeviceEventData, Ptr{UInt64}), hDeviceEventData, pEventId))
end

function spinDeviceEventGetPayloadData(hDeviceEventData, pBuf, pBufSize)
    checkerror(ccall((:spinDeviceEventGetPayloadData, libSpinnaker_C), spinError, (spinDeviceEventData, Ptr{UInt8}, Ptr{Csize_t}), hDeviceEventData, pBuf, pBufSize))
end

function spinDeviceEventGetPayloadDataSize(hDeviceEventData, pBufSize)
    checkerror(ccall((:spinDeviceEventGetPayloadDataSize, libSpinnaker_C), spinError, (spinDeviceEventData, Ptr{Csize_t}), hDeviceEventData, pBufSize))
end

function spinDeviceEventGetName(hDeviceEventData, pBuf, pBufLen)
    checkerror(ccall((:spinDeviceEventGetName, libSpinnaker_C), spinError, (spinDeviceEventData, Cstring, Ptr{Csize_t}), hDeviceEventData, pBuf, pBufLen))
end

function spinAVIRecorderOpenUncompressed(phRecorder, pName, option)
    checkerror(ccall((:spinAVIRecorderOpenUncompressed, libSpinnaker_C), spinError, (Ptr{spinAVIRecorder}, Cstring, spinAVIOption), phRecorder, pName, option))
end

function spinAVIRecorderOpenMJPG(phRecorder, pName, option)
    checkerror(ccall((:spinAVIRecorderOpenMJPG, libSpinnaker_C), spinError, (Ptr{spinAVIRecorder}, Cstring, spinMJPGOption), phRecorder, pName, option))
end

function spinAVIRecorderOpenH264(phRecorder, pName, option)
    checkerror(ccall((:spinAVIRecorderOpenH264, libSpinnaker_C), spinError, (Ptr{spinAVIRecorder}, Cstring, spinH264Option), phRecorder, pName, option))
end

function spinAVIRecorderAppend(hRecorder, hImage)
    checkerror(ccall((:spinAVIRecorderAppend, libSpinnaker_C), spinError, (spinAVIRecorder, spinImage), hRecorder, hImage))
end

function spinAVISetMaximumSize(hRecorder, size)
    checkerror(ccall((:spinAVISetMaximumSize, libSpinnaker_C), spinError, (spinAVIRecorder, UInt32), hRecorder, size))
end

function spinAVIRecorderClose(hRecorder)
    checkerror(ccall((:spinAVIRecorderClose, libSpinnaker_C), spinError, (spinAVIRecorder,), hRecorder))
end

function spinImageChunkDataGetIntValue(hImage, pName, pValue)
    checkerror(ccall((:spinImageChunkDataGetIntValue, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{Int64}), hImage, pName, pValue))
end

function spinImageChunkDataGetFloatValue(hImage, pName, pValue)
    checkerror(ccall((:spinImageChunkDataGetFloatValue, libSpinnaker_C), spinError, (spinImage, Cstring, Ptr{Cdouble}), hImage, pName, pValue))
end
# Julia wrapper for header: /usr/include/spinnaker/spinc/SpinnakerDefsC.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /usr/include/spinnaker/spinc/SpinnakerGenApiC.h
# Automatically generated using Clang.jl wrap_c


function spinNodeMapGetNode(hNodeMap, pName, phNode)
    checkerror(ccall((:spinNodeMapGetNode, libSpinnaker_C), spinError, (spinNodeMapHandle, Cstring, Ptr{spinNodeHandle}), hNodeMap, pName, phNode))
end

function spinNodeMapGetNumNodes(hNodeMap, pValue)
    checkerror(ccall((:spinNodeMapGetNumNodes, libSpinnaker_C), spinError, (spinNodeMapHandle, Ptr{Csize_t}), hNodeMap, pValue))
end

function spinNodeMapGetNodeByIndex(hNodeMap, index, phNode)
    checkerror(ccall((:spinNodeMapGetNodeByIndex, libSpinnaker_C), spinError, (spinNodeMapHandle, Csize_t, Ptr{spinNodeHandle}), hNodeMap, index, phNode))
end

function spinNodeMapPoll(hNodeMap, timestamp)
    checkerror(ccall((:spinNodeMapPoll, libSpinnaker_C), spinError, (spinNodeMapHandle, Int64), hNodeMap, timestamp))
end

function spinNodeIsImplemented(hNode, pbResult)
    checkerror(ccall((:spinNodeIsImplemented, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbResult))
end

function spinNodeIsReadable(hNode, pbResult)
    checkerror(ccall((:spinNodeIsReadable, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbResult))
end

function spinNodeIsWritable(hNode, pbResult)
    checkerror(ccall((:spinNodeIsWritable, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbResult))
end

function spinNodeIsAvailable(hNode, pbResult)
    checkerror(ccall((:spinNodeIsAvailable, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbResult))
end

function spinNodeIsEqual(hNodeFirst, hNodeSecond, pbResult)
    checkerror(ccall((:spinNodeIsEqual, libSpinnaker_C), spinError, (spinNodeHandle, spinNodeHandle, Ptr{bool8_t}), hNodeFirst, hNodeSecond, pbResult))
end

function spinNodeGetAccessMode(hNode, pAccessMode)
    checkerror(ccall((:spinNodeGetAccessMode, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinAccessMode}), hNode, pAccessMode))
end

function spinNodeGetName(hNode, pBuf, pBufLen)
    checkerror(ccall((:spinNodeGetName, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen))
end

function spinNodeGetNameSpace(hNode, pNamespace)
    checkerror(ccall((:spinNodeGetNameSpace, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinNameSpace}), hNode, pNamespace))
end

function spinNodeGetVisibility(hNode, pVisibility)
    checkerror(ccall((:spinNodeGetVisibility, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinVisibility}), hNode, pVisibility))
end

function spinNodeInvalidateNode(hNode)
    checkerror(ccall((:spinNodeInvalidateNode, libSpinnaker_C), spinError, (spinNodeHandle,), hNode))
end

function spinNodeGetCachingMode(hNode, pCachingMode)
    checkerror(ccall((:spinNodeGetCachingMode, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinCachingMode}), hNode, pCachingMode))
end

function spinNodeGetToolTip(hNode, pBuf, pBufLen)
    checkerror(ccall((:spinNodeGetToolTip, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen))
end

function spinNodeGetDescription(hNode, pBuf, pBufLen)
    checkerror(ccall((:spinNodeGetDescription, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen))
end

function spinNodeGetDisplayName(hNode, pBuf, pBufLen)
    checkerror(ccall((:spinNodeGetDisplayName, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen))
end

function spinNodeGetType(hNode, pType)
    checkerror(ccall((:spinNodeGetType, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinNodeType}), hNode, pType))
end

function spinNodeGetPollingTime(hNode, pPollingTime)
    checkerror(ccall((:spinNodeGetPollingTime, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pPollingTime))
end

function spinNodeRegisterCallback(hNode, pCbFunction, phCb)
    checkerror(ccall((:spinNodeRegisterCallback, libSpinnaker_C), spinError, (spinNodeHandle, spinNodeCallbackFunction, Ptr{spinNodeCallbackHandle}), hNode, pCbFunction, phCb))
end

function spinNodeDeregisterCallback(hNode, hCb)
    checkerror(ccall((:spinNodeDeregisterCallback, libSpinnaker_C), spinError, (spinNodeHandle, spinNodeCallbackHandle), hNode, hCb))
end

function spinNodeGetImposedAccessMode(hNode, imposedAccessMode)
    checkerror(ccall((:spinNodeGetImposedAccessMode, libSpinnaker_C), spinError, (spinNodeHandle, spinAccessMode), hNode, imposedAccessMode))
end

function spinNodeGetImposedVisibility(hNode, imposedVisibility)
    checkerror(ccall((:spinNodeGetImposedVisibility, libSpinnaker_C), spinError, (spinNodeHandle, spinVisibility), hNode, imposedVisibility))
end

function spinNodeToString(hNode, pBuf, pBufLen)
    checkerror(ccall((:spinNodeToString, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen))
end

function spinNodeToStringEx(hNode, bVerify, pBuf, pBufLen)
    checkerror(ccall((:spinNodeToStringEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cstring, Ptr{Csize_t}), hNode, bVerify, pBuf, pBufLen))
end

function spinNodeFromString(hNode, pBuf)
    checkerror(ccall((:spinNodeFromString, libSpinnaker_C), spinError, (spinNodeHandle, Cstring), hNode, pBuf))
end

function spinNodeFromStringEx(hNode, bVerify, pBuf)
    checkerror(ccall((:spinNodeFromStringEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cstring), hNode, bVerify, pBuf))
end

function spinStringSetValue(hNode, pBuf)
    checkerror(ccall((:spinStringSetValue, libSpinnaker_C), spinError, (spinNodeHandle, Cstring), hNode, pBuf))
end

function spinStringSetValueEx(hNode, bVerify, pBuf)
    checkerror(ccall((:spinStringSetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cstring), hNode, bVerify, pBuf))
end

function spinStringGetValue(hNode, pBuf, pBufLen)
    checkerror(ccall((:spinStringGetValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{UInt8}, Ptr{Csize_t}), hNode, pBuf, pBufLen))
end

function spinStringGetValueEx(hNode, bVerify, pBuf, pBufLen)
    checkerror(ccall((:spinStringGetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cstring, Ptr{Csize_t}), hNode, bVerify, pBuf, pBufLen))
end

function spinStringGetMaxLength(hNode, pValue)
    checkerror(ccall((:spinStringGetMaxLength, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue))
end

function spinIntegerSetValue(hNode, value)
    checkerror(ccall((:spinIntegerSetValue, libSpinnaker_C), spinError, (spinNodeHandle, Int64), hNode, value))
end

function spinIntegerSetValueEx(hNode, bVerify, value)
    checkerror(ccall((:spinIntegerSetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Int64), hNode, bVerify, value))
end

function spinIntegerGetValue(hNode, pValue)
    checkerror(ccall((:spinIntegerGetValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue))
end

function spinIntegerGetValueEx(hNode, bVerify, pValue)
    checkerror(ccall((:spinIntegerGetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Ptr{Int64}), hNode, bVerify, pValue))
end

function spinIntegerGetMin(hNode, pValue)
    checkerror(ccall((:spinIntegerGetMin, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue))
end

function spinIntegerGetMax(hNode, pValue)
    checkerror(ccall((:spinIntegerGetMax, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue))
end

function spinIntegerGetInc(hNode, pValue)
    checkerror(ccall((:spinIntegerGetInc, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue))
end

function spinIntegerGetRepresentation(hNode, pValue)
    checkerror(ccall((:spinIntegerGetRepresentation, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinRepresentation}), hNode, pValue))
end

function spinFloatSetValue(hNode, value)
    checkerror(ccall((:spinFloatSetValue, libSpinnaker_C), spinError, (spinNodeHandle, Cdouble), hNode, value))
end

function spinFloatSetValueEx(hNode, bVerify, value)
    checkerror(ccall((:spinFloatSetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cdouble), hNode, bVerify, value))
end

function spinFloatGetValue(hNode, pValue)
    checkerror(ccall((:spinFloatGetValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Cdouble}), hNode, pValue))
end

function spinFloatGetValueEx(hNode, bVerify, pValue)
    checkerror(ccall((:spinFloatGetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Ptr{Cdouble}), hNode, bVerify, pValue))
end

function spinFloatGetMin(hNode, pValue)
    checkerror(ccall((:spinFloatGetMin, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Cdouble}), hNode, pValue))
end

function spinFloatGetMax(hNode, pValue)
    checkerror(ccall((:spinFloatGetMax, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Cdouble}), hNode, pValue))
end

function spinFloatGetRepresentation(hNode, pValue)
    checkerror(ccall((:spinFloatGetRepresentation, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinRepresentation}), hNode, pValue))
end

function spinFloatGetUnit(hNode, pBuf, pBufLen)
    checkerror(ccall((:spinFloatGetUnit, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen))
end

function spinEnumerationGetNumEntries(hNode, pValue)
    checkerror(ccall((:spinEnumerationGetNumEntries, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Csize_t}), hNode, pValue))
end

function spinEnumerationGetEntryByIndex(hNode, index, phEntry)
    checkerror(ccall((:spinEnumerationGetEntryByIndex, libSpinnaker_C), spinError, (spinNodeHandle, Csize_t, Ptr{spinNodeHandle}), hNode, index, phEntry))
end

function spinEnumerationGetEntryByName(hNode, pName, phEntry)
    checkerror(ccall((:spinEnumerationGetEntryByName, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{spinNodeHandle}), hNode, pName, phEntry))
end

function spinEnumerationGetCurrentEntry(hNode, phEntry)
    checkerror(ccall((:spinEnumerationGetCurrentEntry, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinNodeHandle}), hNode, phEntry))
end

function spinEnumerationSetIntValue(hNode, value)
    checkerror(ccall((:spinEnumerationSetIntValue, libSpinnaker_C), spinError, (spinNodeHandle, Int64), hNode, value))
end

function spinEnumerationSetEnumValue(hNode, value)
    checkerror(ccall((:spinEnumerationSetEnumValue, libSpinnaker_C), spinError, (spinNodeHandle, Csize_t), hNode, value))
end

function spinEnumerationEntryGetIntValue(hNode, pValue)
    checkerror(ccall((:spinEnumerationEntryGetIntValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue))
end

function spinEnumerationEntryGetEnumValue(hNode, pValue)
    checkerror(ccall((:spinEnumerationEntryGetEnumValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Csize_t}), hNode, pValue))
end

function spinEnumerationEntryGetSymbolic(hNode, pBuf, pBufLen)
    checkerror(ccall((:spinEnumerationEntryGetSymbolic, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen))
end

function spinBooleanSetValue(hNode, value)
    checkerror(ccall((:spinBooleanSetValue, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t), hNode, value))
end

function spinBooleanGetValue(hNode, pbValue)
    checkerror(ccall((:spinBooleanGetValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbValue))
end

function spinCommandExecute(hNode)
    checkerror(ccall((:spinCommandExecute, libSpinnaker_C), spinError, (spinNodeHandle,), hNode))
end

function spinCommandIsDone(hNode, pbValue)
    checkerror(ccall((:spinCommandIsDone, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbValue))
end

function spinCategoryGetNumFeatures(hNode, pValue)
    checkerror(ccall((:spinCategoryGetNumFeatures, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Csize_t}), hNode, pValue))
end

function spinCategoryGetFeatureByIndex(hNode, index, phFeature)
    checkerror(ccall((:spinCategoryGetFeatureByIndex, libSpinnaker_C), spinError, (spinNodeHandle, Csize_t, Ptr{spinNodeHandle}), hNode, index, phFeature))
end

function spinRegisterGet(hNode, pBuf, length)
    checkerror(ccall((:spinRegisterGet, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{UInt8}, Int64), hNode, pBuf, length))
end

function spinRegisterGetEx(hNode, bVerify, bIgnoreCache, pBuf, length)
    checkerror(ccall((:spinRegisterGetEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, bool8_t, Ptr{UInt8}, Int64), hNode, bVerify, bIgnoreCache, pBuf, length))
end

function spinRegisterGetAddress(hNode, pAddress)
    checkerror(ccall((:spinRegisterGetAddress, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pAddress))
end

function spinRegisterGetLength(hNode, pLength)
    checkerror(ccall((:spinRegisterGetLength, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pLength))
end

function spinRegisterSet(hNode, pBuf, length)
    checkerror(ccall((:spinRegisterSet, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{UInt8}, Int64), hNode, pBuf, length))
end

function spinRegisterSetEx(hNode, bVerify, pBuf, length)
    checkerror(ccall((:spinRegisterSetEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Ptr{UInt8}, Int64), hNode, bVerify, pBuf, length))
end

function spinRegisterSetReference(hNode, hRef)
    checkerror(ccall((:spinRegisterSetReference, libSpinnaker_C), spinError, (spinNodeHandle, spinNodeHandle), hNode, hRef))
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
