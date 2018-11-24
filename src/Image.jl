# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# Image.jl: interface to Image objects
import Base: size, convert
export bpp, offset, padding, save

"""
 Spinnaker SDK Image object
"""
mutable struct Image
  handle::Ref{spinImage}

  function Image(handle)
    image = new(handle)
    finalizer(_release!, image)
    return image
  end 
end


function Image()
    @assert spinsys.handle[] != C_NULL
    handle = Ref(spinImage(C_NULL))
    spinImageCreateEmpty(handle)
    return Image(handle)
end

# Release handle to image
function _release!(image::Image)
    spinImageDestroy(image.handle[])
    image.handle[] = C_NULL
    return nothing
end

# Return size of image data buffer. Note that this may include metadata.
function _buffersize(image::Image)
    sz = Ref(Csize_t(0))
    spinImageGetBufferSize(image.handle[], sz)
    return Int(sz[])
end

# Return a pointer to the data buffer of the input image. 
function _bufferptr(image::Image) 
    ptr = Ref(Ptr{Cvoid}(0))
    spinImageGetData(image.handle[], ptr)
    return Ptr{UInt8}(ptr[])
end

"""
    convert(::Image, ::spinPixelFormatEnums) -> ::Image

    Convert input image to specified pixel format and return new image.
"""
function convert(image::Image, fmt::spinPixelFormatEnums)
    out = Image()
    spinImageConvert(out.handle[], fmt, image.handle[]);
    return out
end

"""
    bpp(::Image) -> Int

    Return bits per pixel of input image.
"""
function bpp(image::Image)
    bpp = Ref(Csize_t(0))
    spinImageGetBitsPerPixel(image.handle[], bpp)
    return Int(bpp[])
end


"""
    offset(::Image) -> Tuple{Int}

    Return image offset as tuple (x_offset, y_offset).
"""
function offset(image::Image)
    xoff = Ref(Csize_t(0))
    yoff = Ref(Csize_t(0))
    spinImageGetOffsetX(image.handle[], xoff)
    spinImageGetOffsetY(image.handle[], yoff)
    return (Int(xoff[]), Int(yoff[]))
end

"""
    padding(::Image) -> Tuple{Int}

    Return image padding as tuple (x_pad, y_pad).
"""
function padding(image::Image)
    xpad = Ref(Csize_t(0))
    ypad = Ref(Csize_t(0))
    spinImageGetPaddingX(image.handle[], xpad)
    spinImageGetPaddingY(image.handle[], ypad)
    return (Int(xpad[]), Int(ypad[]))
end

"""
    size(::Image) -> Tuple{Int}

    Return image size as tuple (width, height).
"""
function size(image::Image)
    width = Ref(Csize_t(0))
    height = Ref(Csize_t(0))
    spinImageGetWidth(image.handle[], width)
    spinImageGetHeight(image.handle[], height)
    return (Int(width[]), Int(height[]))
end

"""
    save(fn::AbstractString, ::Image, ::spinImageFileFormat)
    
    Save the input image to file `fn` in specified format.
"""
function save(image::Image, fn::AbstractString, fmt::spinImageFileFormat)
    spinImageSave(image.handle[], fn, fmt)
end