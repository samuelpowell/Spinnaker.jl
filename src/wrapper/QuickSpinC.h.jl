# Julia wrapper for header: /usr/include/spinnaker/spinc/QuickSpinC.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function quickSpinInit(hCamera::spinCamera, pQuickSpin)
    ccall((:quickSpinInit, libSpinnaker_C), spinError, (spinCamera, Ptr{quickSpin}), hCamera, pQuickSpin)
end

function quickSpinInitEx(hCamera::spinCamera, pQuickSpin, pQuickSpinTLDevice, pQuickSpinTLStream)
    ccall((:quickSpinInitEx, libSpinnaker_C), spinError, (spinCamera, Ptr{quickSpin}, Ptr{quickSpinTLDevice}, Ptr{quickSpinTLStream}), hCamera, pQuickSpin, pQuickSpinTLDevice, pQuickSpinTLStream)
end

function quickSpinTLDeviceInit(hCamera::spinCamera, pQuickSpinTLDevice)
    ccall((:quickSpinTLDeviceInit, libSpinnaker_C), spinError, (spinCamera, Ptr{quickSpinTLDevice}), hCamera, pQuickSpinTLDevice)
end

function quickSpinTLStreamInit(hCamera::spinCamera, pQuickSpinTLStream)
    ccall((:quickSpinTLStreamInit, libSpinnaker_C), spinError, (spinCamera, Ptr{quickSpinTLStream}), hCamera, pQuickSpinTLStream)
end

function quickSpinTLInterfaceInit(hInterface::spinInterface, pQuickSpinTLInterface)
    ccall((:quickSpinTLInterfaceInit, libSpinnaker_C), spinError, (spinInterface, Ptr{quickSpinTLInterface}), hInterface, pQuickSpinTLInterface)
end
