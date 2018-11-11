# Julia wrapper for header: /usr/include/spinnaker/spinc/SpinnakerGenApiC.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function spinNodeMapGetNode(hNodeMap::spinNodeMapHandle, pName, phNode)
    ccall((:spinNodeMapGetNode, libSpinnaker_C), spinError, (spinNodeMapHandle, Cstring, Ptr{spinNodeHandle}), hNodeMap, pName, phNode)
end

function spinNodeMapGetNumNodes(hNodeMap::spinNodeMapHandle, pValue)
    ccall((:spinNodeMapGetNumNodes, libSpinnaker_C), spinError, (spinNodeMapHandle, Ptr{Csize_t}), hNodeMap, pValue)
end

function spinNodeMapGetNodeByIndex(hNodeMap::spinNodeMapHandle, index::Csize_t, phNode)
    ccall((:spinNodeMapGetNodeByIndex, libSpinnaker_C), spinError, (spinNodeMapHandle, Csize_t, Ptr{spinNodeHandle}), hNodeMap, index, phNode)
end

function spinNodeMapPoll(hNodeMap::spinNodeMapHandle, timestamp::Int64)
    ccall((:spinNodeMapPoll, libSpinnaker_C), spinError, (spinNodeMapHandle, Int64), hNodeMap, timestamp)
end

function spinNodeIsImplemented(hNode::spinNodeHandle, pbResult)
    ccall((:spinNodeIsImplemented, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbResult)
end

function spinNodeIsReadable(hNode::spinNodeHandle, pbResult)
    ccall((:spinNodeIsReadable, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbResult)
end

function spinNodeIsWritable(hNode::spinNodeHandle, pbResult)
    ccall((:spinNodeIsWritable, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbResult)
end

function spinNodeIsAvailable(hNode::spinNodeHandle, pbResult)
    ccall((:spinNodeIsAvailable, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbResult)
end

function spinNodeIsEqual(hNodeFirst::spinNodeHandle, hNodeSecond::spinNodeHandle, pbResult)
    ccall((:spinNodeIsEqual, libSpinnaker_C), spinError, (spinNodeHandle, spinNodeHandle, Ptr{bool8_t}), hNodeFirst, hNodeSecond, pbResult)
end

function spinNodeGetAccessMode(hNode::spinNodeHandle, pAccessMode)
    ccall((:spinNodeGetAccessMode, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinAccessMode}), hNode, pAccessMode)
end

function spinNodeGetName(hNode::spinNodeHandle, pBuf, pBufLen)
    ccall((:spinNodeGetName, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinNodeGetNameSpace(hNode::spinNodeHandle, pNamespace)
    ccall((:spinNodeGetNameSpace, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinNameSpace}), hNode, pNamespace)
end

function spinNodeGetVisibility(hNode::spinNodeHandle, pVisibility)
    ccall((:spinNodeGetVisibility, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinVisibility}), hNode, pVisibility)
end

function spinNodeInvalidateNode(hNode::spinNodeHandle)
    ccall((:spinNodeInvalidateNode, libSpinnaker_C), spinError, (spinNodeHandle,), hNode)
end

function spinNodeGetCachingMode(hNode::spinNodeHandle, pCachingMode)
    ccall((:spinNodeGetCachingMode, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinCachingMode}), hNode, pCachingMode)
end

function spinNodeGetToolTip(hNode::spinNodeHandle, pBuf, pBufLen)
    ccall((:spinNodeGetToolTip, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinNodeGetDescription(hNode::spinNodeHandle, pBuf, pBufLen)
    ccall((:spinNodeGetDescription, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinNodeGetDisplayName(hNode::spinNodeHandle, pBuf, pBufLen)
    ccall((:spinNodeGetDisplayName, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinNodeGetType(hNode::spinNodeHandle, pType)
    ccall((:spinNodeGetType, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinNodeType}), hNode, pType)
end

function spinNodeGetPollingTime(hNode::spinNodeHandle, pPollingTime)
    ccall((:spinNodeGetPollingTime, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pPollingTime)
end

function spinNodeRegisterCallback(hNode::spinNodeHandle, pCbFunction::spinNodeCallbackFunction, phCb)
    ccall((:spinNodeRegisterCallback, libSpinnaker_C), spinError, (spinNodeHandle, spinNodeCallbackFunction, Ptr{spinNodeCallbackHandle}), hNode, pCbFunction, phCb)
end

function spinNodeDeregisterCallback(hNode::spinNodeHandle, hCb::spinNodeCallbackHandle)
    ccall((:spinNodeDeregisterCallback, libSpinnaker_C), spinError, (spinNodeHandle, spinNodeCallbackHandle), hNode, hCb)
end

function spinNodeGetImposedAccessMode(hNode::spinNodeHandle, imposedAccessMode::spinAccessMode)
    ccall((:spinNodeGetImposedAccessMode, libSpinnaker_C), spinError, (spinNodeHandle, spinAccessMode), hNode, imposedAccessMode)
end

function spinNodeGetImposedVisibility(hNode::spinNodeHandle, imposedVisibility::spinVisibility)
    ccall((:spinNodeGetImposedVisibility, libSpinnaker_C), spinError, (spinNodeHandle, spinVisibility), hNode, imposedVisibility)
end

function spinNodeToString(hNode::spinNodeHandle, pBuf, pBufLen)
    ccall((:spinNodeToString, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinNodeToStringEx(hNode::spinNodeHandle, bVerify::bool8_t, pBuf, pBufLen)
    ccall((:spinNodeToStringEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cstring, Ptr{Csize_t}), hNode, bVerify, pBuf, pBufLen)
end

function spinNodeFromString(hNode::spinNodeHandle, pBuf)
    ccall((:spinNodeFromString, libSpinnaker_C), spinError, (spinNodeHandle, Cstring), hNode, pBuf)
end

function spinNodeFromStringEx(hNode::spinNodeHandle, bVerify::bool8_t, pBuf)
    ccall((:spinNodeFromStringEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cstring), hNode, bVerify, pBuf)
end

function spinStringSetValue(hNode::spinNodeHandle, pBuf)
    ccall((:spinStringSetValue, libSpinnaker_C), spinError, (spinNodeHandle, Cstring), hNode, pBuf)
end

function spinStringSetValueEx(hNode::spinNodeHandle, bVerify::bool8_t, pBuf)
    ccall((:spinStringSetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cstring), hNode, bVerify, pBuf)
end

function spinStringGetValue(hNode::spinNodeHandle, pBuf, pBufLen)
    ccall((:spinStringGetValue, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinStringGetValueEx(hNode::spinNodeHandle, bVerify::bool8_t, pBuf, pBufLen)
    ccall((:spinStringGetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cstring, Ptr{Csize_t}), hNode, bVerify, pBuf, pBufLen)
end

function spinStringGetMaxLength(hNode::spinNodeHandle, pValue)
    ccall((:spinStringGetMaxLength, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue)
end

function spinIntegerSetValue(hNode::spinNodeHandle, value::Int64)
    ccall((:spinIntegerSetValue, libSpinnaker_C), spinError, (spinNodeHandle, Int64), hNode, value)
end

function spinIntegerSetValueEx(hNode::spinNodeHandle, bVerify::bool8_t, value::Int64)
    ccall((:spinIntegerSetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Int64), hNode, bVerify, value)
end

function spinIntegerGetValue(hNode::spinNodeHandle, pValue)
    ccall((:spinIntegerGetValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue)
end

function spinIntegerGetValueEx(hNode::spinNodeHandle, bVerify::bool8_t, pValue)
    ccall((:spinIntegerGetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Ptr{Int64}), hNode, bVerify, pValue)
end

function spinIntegerGetMin(hNode::spinNodeHandle, pValue)
    ccall((:spinIntegerGetMin, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue)
end

function spinIntegerGetMax(hNode::spinNodeHandle, pValue)
    ccall((:spinIntegerGetMax, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue)
end

function spinIntegerGetInc(hNode::spinNodeHandle, pValue)
    ccall((:spinIntegerGetInc, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue)
end

function spinIntegerGetRepresentation(hNode::spinNodeHandle, pValue)
    ccall((:spinIntegerGetRepresentation, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinRepresentation}), hNode, pValue)
end

function spinFloatSetValue(hNode::spinNodeHandle, value::Cdouble)
    ccall((:spinFloatSetValue, libSpinnaker_C), spinError, (spinNodeHandle, Cdouble), hNode, value)
end

function spinFloatSetValueEx(hNode::spinNodeHandle, bVerify::bool8_t, value::Cdouble)
    ccall((:spinFloatSetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Cdouble), hNode, bVerify, value)
end

function spinFloatGetValue(hNode::spinNodeHandle, pValue)
    ccall((:spinFloatGetValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Cdouble}), hNode, pValue)
end

function spinFloatGetValueEx(hNode::spinNodeHandle, bVerify::bool8_t, pValue)
    ccall((:spinFloatGetValueEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Ptr{Cdouble}), hNode, bVerify, pValue)
end

function spinFloatGetMin(hNode::spinNodeHandle, pValue)
    ccall((:spinFloatGetMin, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Cdouble}), hNode, pValue)
end

function spinFloatGetMax(hNode::spinNodeHandle, pValue)
    ccall((:spinFloatGetMax, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Cdouble}), hNode, pValue)
end

function spinFloatGetRepresentation(hNode::spinNodeHandle, pValue)
    ccall((:spinFloatGetRepresentation, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinRepresentation}), hNode, pValue)
end

function spinFloatGetUnit(hNode::spinNodeHandle, pBuf, pBufLen)
    ccall((:spinFloatGetUnit, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinEnumerationGetNumEntries(hNode::spinNodeHandle, pValue)
    ccall((:spinEnumerationGetNumEntries, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Csize_t}), hNode, pValue)
end

function spinEnumerationGetEntryByIndex(hNode::spinNodeHandle, index::Csize_t, phEntry)
    ccall((:spinEnumerationGetEntryByIndex, libSpinnaker_C), spinError, (spinNodeHandle, Csize_t, Ptr{spinNodeHandle}), hNode, index, phEntry)
end

function spinEnumerationGetEntryByName(hNode::spinNodeHandle, pName, phEntry)
    ccall((:spinEnumerationGetEntryByName, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{spinNodeHandle}), hNode, pName, phEntry)
end

function spinEnumerationGetCurrentEntry(hNode::spinNodeHandle, phEntry)
    ccall((:spinEnumerationGetCurrentEntry, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{spinNodeHandle}), hNode, phEntry)
end

function spinEnumerationSetIntValue(hNode::spinNodeHandle, value::Int64)
    ccall((:spinEnumerationSetIntValue, libSpinnaker_C), spinError, (spinNodeHandle, Int64), hNode, value)
end

function spinEnumerationSetEnumValue(hNode::spinNodeHandle, value::Csize_t)
    ccall((:spinEnumerationSetEnumValue, libSpinnaker_C), spinError, (spinNodeHandle, Csize_t), hNode, value)
end

function spinEnumerationEntryGetIntValue(hNode::spinNodeHandle, pValue)
    ccall((:spinEnumerationEntryGetIntValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pValue)
end

function spinEnumerationEntryGetEnumValue(hNode::spinNodeHandle, pValue)
    ccall((:spinEnumerationEntryGetEnumValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Csize_t}), hNode, pValue)
end

function spinEnumerationEntryGetSymbolic(hNode::spinNodeHandle, pBuf, pBufLen)
    ccall((:spinEnumerationEntryGetSymbolic, libSpinnaker_C), spinError, (spinNodeHandle, Cstring, Ptr{Csize_t}), hNode, pBuf, pBufLen)
end

function spinBooleanSetValue(hNode::spinNodeHandle, value::bool8_t)
    ccall((:spinBooleanSetValue, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t), hNode, value)
end

function spinBooleanGetValue(hNode::spinNodeHandle, pbValue)
    ccall((:spinBooleanGetValue, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbValue)
end

function spinCommandExecute(hNode::spinNodeHandle)
    ccall((:spinCommandExecute, libSpinnaker_C), spinError, (spinNodeHandle,), hNode)
end

function spinCommandIsDone(hNode::spinNodeHandle, pbValue)
    ccall((:spinCommandIsDone, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{bool8_t}), hNode, pbValue)
end

function spinCategoryGetNumFeatures(hNode::spinNodeHandle, pValue)
    ccall((:spinCategoryGetNumFeatures, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Csize_t}), hNode, pValue)
end

function spinCategoryGetFeatureByIndex(hNode::spinNodeHandle, index::Csize_t, phFeature)
    ccall((:spinCategoryGetFeatureByIndex, libSpinnaker_C), spinError, (spinNodeHandle, Csize_t, Ptr{spinNodeHandle}), hNode, index, phFeature)
end

function spinRegisterGet(hNode::spinNodeHandle, pBuf, length::Int64)
    ccall((:spinRegisterGet, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{UInt8}, Int64), hNode, pBuf, length)
end

function spinRegisterGetEx(hNode::spinNodeHandle, bVerify::bool8_t, bIgnoreCache::bool8_t, pBuf, length::Int64)
    ccall((:spinRegisterGetEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, bool8_t, Ptr{UInt8}, Int64), hNode, bVerify, bIgnoreCache, pBuf, length)
end

function spinRegisterGetAddress(hNode::spinNodeHandle, pAddress)
    ccall((:spinRegisterGetAddress, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pAddress)
end

function spinRegisterGetLength(hNode::spinNodeHandle, pLength)
    ccall((:spinRegisterGetLength, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{Int64}), hNode, pLength)
end

function spinRegisterSet(hNode::spinNodeHandle, pBuf, length::Int64)
    ccall((:spinRegisterSet, libSpinnaker_C), spinError, (spinNodeHandle, Ptr{UInt8}, Int64), hNode, pBuf, length)
end

function spinRegisterSetEx(hNode::spinNodeHandle, bVerify::bool8_t, pBuf, length::Int64)
    ccall((:spinRegisterSetEx, libSpinnaker_C), spinError, (spinNodeHandle, bool8_t, Ptr{UInt8}, Int64), hNode, bVerify, pBuf, length)
end

function spinRegisterSetReference(hNode::spinNodeHandle, hRef::spinNodeHandle)
    ccall((:spinRegisterSetReference, libSpinnaker_C), spinError, (spinNodeHandle, spinNodeHandle), hNode, hRef)
end
