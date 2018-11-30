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

The resulting `image` is an opaque handle to a Spinnaker image object. These
types can queried for metadata, converted to alternative pixel formats, saved to
disc, etc., by the Spinnaker SDK (see `src/Image.jl` for details). Raw access
to the underlying image data is also available. If the image format is unpacked
(that is to say that it fits a standard integer format) a view to the image
data can be provided through an AbstractArray interface:

```julia
julia> imarr = ImageData(image)
1440×1080 ImageData{UInt16,2}:
 0x0550  0x0620  0x04d0  0x0510  0x0420  0x0560  …  0x0b80  0x0ba0  0x0c40  0x09e0  0x0d10
```

Alternatively one may directly save the image to disc:

```julia
saveimage(cam, "output.png", Spinnaker.PNG)
```

Further, the timestamp of the image in nanoseconds since the last reset of the camera clock (i.e. at camera boot) may be read:

```julia
timestamp(image)
2166531583413
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
