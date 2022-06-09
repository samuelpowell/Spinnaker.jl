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
]add Spinnaker
```

NOTE: The official Julia 1.4.0 MacOS binaries appear to have an issue with notarization
which causes a failure to load the dynamic libraries. Whilst this is being resolved, either
use a previous version, or the fix detailed [here](https://github.com/samuelpowell/Spinnaker.jl/pull/63#issuecomment-602821121).

## Graphical user interface

[SpinnakerGUI.jl](https://github.com/ianshmean/SpinnakerGUI.jl) by @ianshmean uses
@Gnimuc's [CImGui.jl](https://github.com/Gnimuc/CImGui.jl) package to implement
an experimental GUI for image capture and recording, driven by this package.

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

Set the image size and offset:
```julia
julia> imagedims!(cam, (1024, 1024))
(1024, 1024)

julia> offsetdims!(cam, (0,10))
(0, 10)
```

See `gammaenable(!)`, `pixelformat(!)`, `adcbits(!)`, `sensordims`, `imagedims(!)`, `offsetdims(!)`.

### Retrieving images

All of the following functions are blocking by default, and execution will halt until an image is available. Use the keyword argument 'timeout' to specify a timeout in ms, after which an error is thrown. For each function the keyword argument `release=true` is supported which by default will release the buffer for further use. If you choose `release=false` then the buffer will not be released, allowing one to inspect the image without removing it from the stream buffer (e.g the next call to the function will return the same image).

Images can be retrieved in three formats:
 - CameraImage, an abstract array interface of arbitrary type, which stores metadata about the image;
 - Array, a raw Julia array of arbitrary type, with metadata returned as additional return values;
 - SpinImage, an internal Spinnaker library image type, which can be queried for metadata.

**The native camera format for images is row-major**, to avoid performing a transposition this means that the resulting Julia matrices are of dimensions (width x height), which is transposed compared to the normal (height x width) arrangement in a column-major language such as Julia or MATLAB. Perform a transposition if this is problematic.

#### CameraImage

If the pixel format from the camera is _unpacked_ Images can be retrieved to a `CameraImage` type which provides an `AbstractArray` interface to the underlying data, in addition to storing metadata available when the image is acquired. One can acquire an image
in this way by specifying the desired data format:

```julia
julia> getimage(cam, Gray{N0f8}, normalize=true);
julia> getimage(cam, Float64, normalize=false)
1440×1080 CameraImage{Float64,2}:
 84.0   85.0  90.0  90.0  87.0  94.0  89.0  92.0  …  88.0  79.0  76.0  87.0  78.0 
```

By specifying `normalize=true` the image data from the camera is intepreted as a
fixed point number in the range [0,1]. By combining this with a fixed point Colorant type `Gray{N0f8}`, this provides direct compatibilty with the Julia images stack. Alterantively, without normalisation the unsigned integer data returned from the camera will be supplied in its natural range, e.g., a Mono8 pixel format will result in values in the range [0, 255].

Mutating versions are available, where the type is determined from the input, the metadata will be updated and the underlying data array reused. 

```julia
julia> getimage!(cam, cameraimage);
1440×1080 CameraImage{Float64,2}:
 84.0   85.0  90.0  90.0  87.0  94.0  89.0  92.0  …  88.0  79.0  76.0  87.0  78.0 
```

Metadata such as the id, timestamp, and exposure can be returned from the CameraImage:

```julia
julia> id(getimage(camera, Float64))
391050

julia> id(getimage(camera, Float64))
391051
```

#### Array

A raw Julia array can be passed to the mutating form `getimage!`, which operates in the same way as the method which accepts the CameraImage format, however the metadata will be returned by the function:

```julia
julia> imid, imtimestamp, imexposure = getimage!(camera, Array{Float64}(undef, 1440, 1080))
(391055, 20685632735104, 14996.0)
```

#### SpinImage

Alternatively, a `SpinImage` type can be retrieved from the camera, which supports all
possible pixel formats, including packed data. To copy the image from the camera buffer, and release the buffer for acquisition:

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

Alternatively, 
It is possible to convert a `SpinImage` to a `CameraImage` using the `CameraImage`
constructor:

```
julia> CameraImage(spinimage, Float64, normalize=true)
```

One may directly save an acquired image to disc:

```julia
saveimage(cam, "output.png", Spinnaker.PNG)
```

### Stream (buffer) handling

To set the current buffer mode, 

```julia
julia> buffermode!(cam, "NewestFirst")
"NewestFirst"
```

To set the number of buffers, and move to manual buffer count mode:

```julia
julia> buffercount!(cam, 12)
(12, Manual)
```

To return to automatic buffer count,

```julia
julia> buffercount!(cam)
```

To check for buffer underruns, or invalid buffer frames:

```julia
julia> bufferunderrun(camera)
0

julia> bufferfailed(camera)
0
```

Please note the [specifics](https://www.ptgrey.com/tan/11174) of buffer handling to 
understand the expected behaviour of the various buffer modes.


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

## Low-level Interface

The operation of this package revolves around the manipulation of [nodes](https://www.ptgrey.com/tan/11153) defined by a camera specification. Nodes exist as part of a node map, of which there are several: the camera node map controls camera features; the stream node map controls image buffers; and the transport node map controls the specific transport layer of the device. Nodes may be integer valued, floating point valued, an enumeration, etc. 

In Spinnaker.jl, node access functions are provided which allow manipulation through their textual names (rather than integer identifiers). For example, a nodes can be written to using the `set!`function:

```julia
julia> Spinnaker.set!(Spinnaker.SpinEnumNode(cam, "TriggerSelector"), "FrameStart")
"FrameStart"
```

This command creates a reference to an enumeration valued node with name `TriggerSelector`, and sets the value to the named enumeration element `FrameStart`. By default, nodes refer to the _camera_ node map. To access a different node map, pass the appropriate singleton type to the node constructor:

```julia
julia> get(SpinEnumNode(cam, "StreamBufferHandlingMode", CameraTLStreamNodeMap()))
"NewestFirst"
```

This command creates a reference to the enumeration valued node with the name `StreamBufferHandlingMode` in the _transport steram node map_, and returns the current enuemration selection by its string representation. The available node maps are `CameraNodeMap`, `CameraTLStreamNodeMap`, and `CameraTLDeviceNodeMap`. Node types are defined for enumerations (`SpinEnumNode`), floating point values (`SpinFloatNode`), booleans (`SpinBoolNode`), and integers (`SpinIntegerNode`). Set operations on numeric node types are clamped to the range of the node, and a warning is printed if the desired setting is out of range.

The majority of the high level interface is defined by convenience functions which safely or logically manipualte camera nodes. If you frequently require access to specific nodes, consider creating a high level convenience function for this action, and submitting a PR.

## Troubleshooting

### Spinnaker.jl Cannot Load

If running `using Spinnaker` results in an error similar to this one:
```julia
┌ Error: Spinnaker SDK loaded but Spinnaker.jl failed to initialize
└ @ Spinnaker ~/.julia/packages/Spinnaker/4E5ov/src/Spinnaker.jl:99
Spinnaker SDK error: SPINNAKER_ERR_ABORT(-1012)
Stacktrace:
  [1] checkerror
    @ ~/.julia/packages/Spinnaker/4E5ov/src/Spinnaker.jl:31 [inlined]
  [2] spinSystemGetInstance
    @ ~/.julia/packages/Spinnaker/4E5ov/src/wrapper/spin_api.jl:97 [inlined]
  [3] Spinnaker.System()
    @ Spinnaker ~/.julia/packages/Spinnaker/4E5ov/src/System.jl:16
  [4] __init__()
    @ Spinnaker ~/.julia/packages/Spinnaker/4E5ov/src/Spinnaker.jl:96
  [5] _include_from_serialized(path::String, depmods::Vector{Any})
    @ Base ./loading.jl:768
  [6] _require_search_from_serialized(pkg::Base.PkgId, sourcepath::String)
    @ Base ./loading.jl:854
  [7] _require(pkg::Base.PkgId)
    @ Base ./loading.jl:1097
  [8] require(uuidkey::Base.PkgId)
    @ Base ./loading.jl:1013
  [9] require(into::Module, mod::Symbol)
    @ Base ./loading.jl:997
 [10] eval
    @ ./boot.jl:373 [inlined]
 [11] exec_options(opts::Base.JLOptions)
    @ Base ./client.jl:268
 [12] _start()
    @ Base ./client.jl:495
```

Check that you have the environment variable `FLIR_GENTL64_CTI` set to the path to `FLIR_GenTL.cti` (e.g. `/opt/spinnaker/lib/flir-gentl/FLIR_GenTL.cti`).
