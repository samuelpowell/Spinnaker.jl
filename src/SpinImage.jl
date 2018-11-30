# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# Image.jl: interface to Image objects
export SpinImage, bpp, id, offset, padding, save, timestamp

"""
 Spinnaker SDK Image object
"""
mutable struct SpinImage
  handle::spinImage

  function SpinImage(handle)
    image = new(handle)
    finalizer(_release!, image)
    return image
  end
end

unsafe_convert(::Type{spinImage}, image::SpinImage) = image.handle
unsafe_convert(::Type{Ptr{spinImage}}, image::SpinImage) = pointer_from_objref(image)

function SpinImage()
    @assert spinsys.handle != C_NULL
    himage_ref = Ref(spinImage(C_NULL))
    spinImageCreateEmpty(himage_ref)
    return SpinImage(himage_ref[])
end

# Release handle to image
function _release!(image::SpinImage)
    spinImageDestroy(image)
    image.handle = C_NULL
    return nothing
end

"""
  show(::IO, ::SpinImage)

  Write details of camera to supplied IO.
"""
function show(io::IO, image::SpinImage)
    pixfmt = Ref(spinPixelFormatEnums(0))
    spinImageGetPixelFormat(image, pixfmt)
    write(io, "Spinnaker Image, $(size(image)), $(bpp(image))bpp, $(pixfmt[])")
end

# Return size of image data buffer. Note that this may include metadata.
function _buffersize(image::SpinImage)
    sz = Ref(Csize_t(0))
    spinImageGetBufferSize(image, sz)
    return Int(sz[])
end

# Return a pointer to the data buffer of the input image.
function _bufferptr(image::SpinImage)
    ptr = Ref(Ptr{Cvoid}(0))
    spinImageGetData(image, ptr)
    return Ptr{UInt8}(ptr[])
end

"""
    convert(::SpinImage, ::spinPixelFormatEnums) -> ::SpinImage

    Convert input image to specified pixel format and return new image.
"""
function convert(image::SpinImage, fmt::spinPixelFormatEnums)
    out = SpinImage()
    spinImageConvert(out, fmt, image);
    return out
end

"""
    bpp(::SpinImage) -> Int

    Return bits per pixel of input image.
"""
function bpp(image::SpinImage)
    bpp = Ref(Csize_t(0))
    spinImageGetBitsPerPixel(image, bpp)
    return Int(bpp[])
end


"""
    offset(::SpinImage) -> Tuple{Int}

    Return image offset as tuple (x_offset, y_offset).
"""
function offset(image::SpinImage)
    xoff = Ref(Csize_t(0))
    yoff = Ref(Csize_t(0))
    spinImageGetOffsetX(image, xoff)
    spinImageGetOffsetY(image, yoff)
    return (Int(xoff[]), Int(yoff[]))
end

"""
    padding(::SpinImage) -> Tuple{Int}

    Return image padding as tuple (x_pad, y_pad).
"""
function padding(image::SpinImage)
    xpad = Ref(Csize_t(0))
    ypad = Ref(Csize_t(0))
    spinImageGetPaddingX(image, xpad)
    spinImageGetPaddingY(image, ypad)
    return (Int(xpad[]), Int(ypad[]))
end

"""
    size(::SpinImage) -> Tuple{Int}

    Return image size as tuple (width, height).
"""
function size(image::SpinImage)
    width = Ref(Csize_t(0))
    height = Ref(Csize_t(0))
    spinImageGetWidth(image, width)
    spinImageGetHeight(image, height)
    return (Int(width[]), Int(height[]))
end

"""
    timestamp(::SpinImage) -> Int64

    Return image timestamp in nanoseconds since the last timeclock reset (i.e. at camera boot).
"""
function timestamp(image::SpinImage)
    timestamp_ref = Ref(UInt64(0))
    spinImageGetTimeStamp(image, timestamp_ref);
    return timestamp_ref[]
end

"""
    id(::SpinImage) -> Int64

    Return image id, as assigned by camera.
"""
function id(image::SpinImage)
    id_ref = Ref(UInt64(0))
    spinImageGetID(image, id_ref);
    return id_ref[]
end

"""
    save(fn::AbstractString, ::SpinImage, ::spinImageFileFormat)

    Save the input image to file `fn` in specified format.
"""
function save(image::SpinImage, fn::AbstractString, fmt::spinImageFileFormat)
    spinImageSave(image, fn, fmt)
end
