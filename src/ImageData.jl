# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# Image.jl: an AbstractArray interface to Image object data
import Base: size, getindex, setindex!, IndexStyle
export ImageData

const fmtmap = Dict(PixelFormat_Mono8 => UInt8,
                    PixelFormat_Mono10 => UInt16,
                    PixelFormat_Mono12 => UInt16,
                    PixelFormat_Mono14 => UInt16,
                    PixelFormat_Mono16 => UInt16)

struct ImageData{T,N} <: AbstractArray{T,N}
    image::Image
    data::Array{T,N}

    function ImageData(image::Image)
        hpixfmt = Ref(spinPixelFormatEnums(0))
        spinImageGetPixelFormat(image, hpixfmt)
        T = UInt8
        try
            T = fmtmap[hpixfmt[]]
        catch e
            throw(e)
        end
        @assert sizeof(T) * prod(size(image)) <= _buffersize(image)
        rawptr = _bufferptr(image)
        typptr = Ptr{T}(rawptr)
        data = unsafe_wrap(Array, typptr, size(image));
        return new{T,2}(image, data)
    end
end

size(a::ImageData) = size(a.data)
getindex(a::ImageData, i::Int) = a.data[i]
setindex!(a::ImageData, v, i::Int) = (a.data[i] = v)
IndexStyle(::Type{<:ImageData}) = IndexLinear()
