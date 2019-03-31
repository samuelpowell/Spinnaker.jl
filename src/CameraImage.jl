# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# CameraImage.jl: an AbstractArray interface to Image object data
import Base: size, getindex, setindex!, IndexStyle
export CameraImage
  

# Raw format map
# Fefine how pixel formats relate to native integers
const raw_fmtmap = Dict(PixelFormat_Mono8  => UInt8,
                        PixelFormat_Mono10 => UInt16,
                        PixelFormat_Mono12 => UInt16,
                        PixelFormat_Mono14 => UInt16,
                        PixelFormat_Mono16 => UInt16)

# Normalised format map
# Define how pixel formats relate to normalised fixed point types
const nrm_fmtmap =  Dict(PixelFormat_Mono8  => N0f8,
                         PixelFormat_Mono10 => N6f10,
                         PixelFormat_Mono12 => N4f12,
                         PixelFormat_Mono14 => N2f14,
                         PixelFormat_Mono16 => N0f16)


struct CameraImage{T,N} <: AbstractArray{T,N}
    data::Array{T,N}
    id::Int64
    timestamp::Int64
    exposure::Float64
end

size(a::CameraImage) = size(a.data)
getindex(a::CameraImage, i::Int) = a.data[i]
setindex!(a::CameraImage, v, i::Int) = (a.data[i] = v)
IndexStyle(::Type{<:CameraImage}) = IndexLinear()

id(image::CameraImage) = image.id
timestamp(image::CameraImage) = image.timestamp
exposure(image::CameraImage) = image.exposure

"""
    CameraImage(::SpinImage, ::Type{T}, normalize=false)

    Convert SpinImage to CameraImage, with type conversion and optional normalisation.
    See `getimage` for details of options.
"""
function CameraImage(spinim::SpinImage, ::Type{T}; normalize=false) where T
    width, height = size(spinim)
    imdat = Array{T,2}(undef, width, height)
    _copyimage!(spinim.handle, width, height, imdat, normalize)
    return CameraImage(imdat, id(spinim), timestamp(spinim), exposure(spinim))
end

function _copyimage!(himage_ref::spinImage,
                     width::Integer,
                     height::Integer,
                     image::AbstractArray{T,2},
                     normalize::Bool) where T
 
    @assert prod(size(image)) == width*height
    hpixfmt = Ref(spinPixelFormatEnums(0))
    spinImageGetPixelFormat(himage_ref, hpixfmt)   
    
    # Map the pixel format to a native integer format. For un-normalized output this is 
    # just an unsigned integer of the correct size. For a normalized output a number type
    # from FixedPointNumbers is used to maintain normalisation.
    Ti = UInt8
    if(normalize)
      try
        Ti = nrm_fmtmap[hpixfmt[]]
      catch e
        spinImageRelease(himage_ref)
        throw(e)
      end
    else
      try
        Ti = raw_fmtmap[hpixfmt[]]
      catch e
        spinImageRelease(himage_ref)
        throw(e)
      end
    end
  
  
    # Make sure this is a good idea
    sz = Ref(Csize_t(0))
    spinImageGetBufferSize(himage_ref, sz)
    @assert (sizeof(Ti)*width*height) <= sz[]
  
    # Wrap the image data in an array of the correct pointer type
    rawptr = Ref(Ptr{Cvoid}(0))
    spinImageGetData(himage_ref, rawptr)
    data = unsafe_wrap(Array,  Ptr{Ti}(rawptr[]), (width, height));
    
    # Convert and copy data from buffer
    image .= T.(data)
    return image
  
  end
  

