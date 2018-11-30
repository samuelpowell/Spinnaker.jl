# Spinnaker.jl

A Julia interface to the FLIR/PointGrey [Spinnaker SDK](https://www.ptgrey.com/spinnaker-sdk).

## Overview

This package provides a complete wrapper of the Spinnaker SDK C API. All
functions and enumerations prefixed by `spin` are exported from the package and
can be called according to the API documentation. See `examples/wrapper/` for
examples.

The package also provides a high-level interface for common camera functions
which allows control from Julia with a relatively terse syntax, and for the
retrieval of images as native Julia arrays. The high-level interface is
work-in-progress, and may be subject to change.

## Installation

Ensure that the Spinnaker SDK is installed, then use the Julia package manage to
install and build the package.

```Julia
]add https://github.com/samuelpowell/Spinnaker.jl#master
```

## High-level Interface

The high-level interface provides convenience functions for more typical camera
operations, in addition to utility functions which allow the setting of camera
nodes directly.

Camera settings which take a numeric value, e.g., gain or exposure time, can be
provided with any number type, and this will be _clamped_ to the acceptable
range, the actual value set on the camera being returned. Settings which are
boolean in nature accept Julia `bool` types. Enumeration settings require the
user to provide a member of the enumeration in string format, e.g., selecting a
12-bit ADC bit depth requires the parameter `"Bit12"`, these values can be found
in the technical reference manual for the particular camera.

All types and references are managed by the Julia GC - there is no need to
explicitly release resources (with the sole exception of `BufferImages`).

### Enumeration

Get a list of cameras by constructing a `CameraList` object:

```julia
julia> camlist = CameraList()
CameraList with 1 enumerated devices:
ID      Serial No.      Description
0       XXXXXXX         FLIR Blackfly S BFS-U3-16S2M
```

Acquire a camera by indexing a `CameraList` by ID:

```julia
julia> cam = camlist[0]
FLIR Blackfly S BFS-U3-16S2M (XXXXXXXX): stopped
```

### Acquisition controls

Change the exposure time to 0.1s:

```julia
julia> exposure!(cam, 0.1e6)
100001.0
```

Change the framerate for continuous mode to 60 fps:

```julia
julia> framerate!(cam, 60)
60.0
```

Start an acquisition, and trigger it (if set to trigger mode):

```julia
start!(cam)
trigger!(cam)
# do something
stop!(cam)
```

See `triggermode(!)`, `triggersource(!)`, `exposure(!)`.

### Analog controls

Set the gain to 12dB:

```julia
julia> gain!(cam, 12)
12.0
```

### Image format

Set the ADC to 12-bit mode:

```julia
julia> adcbits!(cam, "Bit12")
"Bit12"
```

See `gammaenable(!)`, `pixelformat(!)`, `adcbits(!)`

### Retrieving images

All of the following functions are blocking, and execution will halt until an
image is available.

To copy the image from the camera buffer, and release the buffer for acquisition:

```julia
julia> image = getimage(cam)
Spinnaker Image, (1440, 1080), 16bpp, PixelFormat_Mono16(1)
```

The resulting `SpinImage` type contains a handle to a Spinnaker image object. These
types can queried for metadata, converted to alternative pixel formats, saved to
disc, etc., by the Spinnaker SDK (see `src/SpinImage.jl` for details). For example, the timestamp of the image in nanoseconds since the last reset of the camera clock (i.e. at camera boot) may be read:

```julia
timestamp(image)
2166531583413
```

If you havean existing `SpinImage` and wish to overwrite it in-place,

```julia
julia> getimage!(cam, image)
Spinnaker Image, (1440, 1080), 16bpp, PixelFormat_Mono16(1)
```

Alternatively, images can be retrieved to a `CameraImage` type which provides an 
`AbstractArray` interface to the underlying data, in addition to storing metadata
available when the image is acquired. If the pixel format from the camera is 
_unpacked_ one can directly acquire an image from the camera by specifying the
desired data format:

```julia
julia> getimage(cam, Gray{N0f8}, normalize=true)
julia> getimage(cam, Float64}, normalize=false)
```

By specifying `normalize=true` the image data from the camera is intepreted as a
fixed point number in the range [0,1]. By combining this with a fixed point Colorant type `Gray{N0f8}`, this provides direct compatibilty with the Julia images stack. Alterantively, without normalisation the unsigned integer data returned from the camera will be supplied in its natural range, e.g., a Mono8 pixel format will result in values in the range [0, 255].

Mutating versions are available, where the type is determined from the input array.
If the input type is a `CameraImage` the metadata will be updated and the underlying data array reused. Alternatively if this is a raw Julia array, only the
data will be updated.

```julia
julia> getimage!(cam, Array{Float64}(undef, width, height))
```

It is possible to convert a `SpinImage` to a `CameraImage` using the `CameraImage`
constructor:

```
julia> CameraImage(spinimage, Float64, normalize=true)
```

One may directly save an acquired image to disc:

```julia
saveimage(cam, "output.png", Spinnaker.PNG)
```



### Demo

```julia
julia> using Spinnaker

julia> camlist = CameraList()
CameraList with 1 enumerated devices:
ID      Serial No.      Description
0       17458441        FLIR Blackfly S BFS-U3-16S2M

julia> cam = camlist[0]
FLIR Blackfly S BFS-U3-16S2M (XXXXXXXX)

julia> triggersource!(cam, "Software")
"Software"

julia> triggermode!(cam, "On")
"On"

julia> start!(cam)
FLIR Blackfly S BFS-U3-16S2M (XXXXXXXX)

julia> trigger!(cam)

julia> saveimage(cam, joinpath(@__DIR__, "test.png"), spinImageFileFormat(6))

julia> stop!(cam)
FLIR Blackfly S BFS-U3-16S2M (XXXXXXXX)
```
