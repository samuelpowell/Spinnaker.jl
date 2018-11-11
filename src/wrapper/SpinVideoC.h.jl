# Julia wrapper for header: /usr/include/spinnaker/spinc/SpinVideoC.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function spinVideoOpenUncompressed(phSpinVideo, pName, option::spinAVIOption)
    ccall((:spinVideoOpenUncompressed, libSpinVideo_C), spinError, (Ptr{spinVideo}, Cstring, spinAVIOption), phSpinVideo, pName, option)
end

function spinVideoOpenMJPG(phSpinVideo, pName, option::spinMJPGOption)
    ccall((:spinVideoOpenMJPG, libSpinVideo_C), spinError, (Ptr{spinVideo}, Cstring, spinMJPGOption), phSpinVideo, pName, option)
end

function spinVideoOpenH264(phSpinVideo, pName, option::spinH264Option)
    ccall((:spinVideoOpenH264, libSpinVideo_C), spinError, (Ptr{spinVideo}, Cstring, spinH264Option), phSpinVideo, pName, option)
end

function spinVideoAppend(hSpinVideo::spinVideo, hImage::spinImage)
    ccall((:spinVideoAppend, libSpinVideo_C), spinError, (spinVideo, spinImage), hSpinVideo, hImage)
end

function spinVideoSetMaximumFileSize(hSpinVideo::spinVideo, size::UInt32)
    ccall((:spinVideoSetMaximumFileSize, libSpinVideo_C), spinError, (spinVideo, UInt32), hSpinVideo, size)
end

function spinVideoClose(hSpinVideo::spinVideo)
    ccall((:spinVideoClose, libSpinVideo_C), spinError, (spinVideo,), hSpinVideo)
end
