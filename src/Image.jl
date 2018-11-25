# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# Image.jl: interface to Image objects
export Image, bpp, offset, padding, save

"""
 Spinnaker SDK Image object
"""
mutable struct Image
  handle::spinImage

  function Image(handle)
    image = new(handle)
    finalizer(_release!, image)
    return image
  end
end

unsafe_convert(::Type{spinImage}, image::Image) = image.handle
unsafe_convert(::Type{Ptr{spinImage}}, image::Image) = pointer_from_objref(image)

function Image()
    @assert spinsys.handle != C_NULL
    himage_ref = Ref(spinImage(C_NULL))
    spinImageCreateEmpty(himage_ref)
    return Image(himage_ref[])
end

# Release handle to image
function _release!(image::Image)
    spinImageDestroy(image)
    image.handle = C_NULL
    return nothing
end

# Return size of image data buffer. Note that this may include metadata.
function _buffersize(image::Image)
    sz = Ref(Csize_t(0))
    spinImageGetBufferSize(image, sz)
    return Int(sz[])
end

# Return a pointer to the data buffer of the input image.
function _bufferptr(image::Image)
    ptr = Ref(Ptr{Cvoid}(0))
    spinImageGetData(image, ptr)
    return Ptr{UInt8}(ptr[])
end

"""
    convert(::Image, ::spinPixelFormatEnums) -> ::Image

    Convert input image to specified pixel format and return new image.
"""
function convert(image::Image, fmt::spinPixelFormatEnums)
    out = Image()
    spinImageConvert(out, fmt, image);
    return out
end

"""
    bpp(::Image) -> Int

    Return bits per pixel of input image.
"""
function bpp(image::Image)
    bpp = Ref(Csize_t(0))
    spinImageGetBitsPerPixel(image, bpp)
    return Int(bpp[])
end


"""
    offset(::Image) -> Tuple{Int}

    Return image offset as tuple (x_offset, y_offset).
"""
function offset(image::Image)
    xoff = Ref(Csize_t(0))
    yoff = Ref(Csize_t(0))
    spinImageGetOffsetX(image, xoff)
    spinImageGetOffsetY(image, yoff)
    return (Int(xoff[]), Int(yoff[]))
end

"""
    padding(::Image) -> Tuple{Int}

    Return image padding as tuple (x_pad, y_pad).
"""
function padding(image::Image)
    xpad = Ref(Csize_t(0))
    ypad = Ref(Csize_t(0))
    spinImageGetPaddingX(image, xpad)
    spinImageGetPaddingY(image, ypad)
    return (Int(xpad[]), Int(ypad[]))
end

"""
    size(::Image) -> Tuple{Int}

    Return image size as tuple (width, height).
"""
function size(image::Image)
    width = Ref(Csize_t(0))
    height = Ref(Csize_t(0))
    spinImageGetWidth(image, width)
    spinImageGetHeight(image, height)
    return (Int(width[]), Int(height[]))
end

"""
    save(fn::AbstractString, ::Image, ::spinImageFileFormat)

    Save the input image to file `fn` in specified format.
"""
function save(image::Image, fn::AbstractString, fmt::spinImageFileFormat)
    spinImageSave(image, fn, fmt)
end
