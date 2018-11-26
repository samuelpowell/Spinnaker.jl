# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# Camera.jl: interface to Camera objects
export serial, model, vendor, isrunning, start!, stop!, getimage, saveimage,
       triggermode, triggermode!,
       triggersource, triggersource!,
       trigger!,
       exposure!,
       gain!,
       adcbits, adcbits!,
       gammaenable!

"""
 Spinnaker SDK Camera object

 Create a camera object by referencing a CameraList, e.g.,
 `cl = CameraList()
  cam = cl[0]`

  The camera is initialised when created and deinitialised when garbage collected.
"""
mutable struct Camera
  handle::spinCamera

  function Camera(handle)
    @assert spinsys.handle != C_NULL
    @assert handle != C_NULL
    spinCameraInit(handle)
    cam = new(handle)
    finalizer(_release!, cam)
    return cam
  end
end

unsafe_convert(::Type{spinCamera}, cam::Camera) = cam.handle
unsafe_convert(::Type{Ptr{spinCamera}}, cam::Camera) = pointer_from_objref(cam)

function _reinit(cam::Camera)
  spinCameraDeInit(cam)
  spinCameraInit(cam)
  return cam
end

# Release handle to system
function _release!(cam::Camera)
  spinCameraDeInit(cam)
  spinCameraRelease(cam)
  cam.handle = C_NULL
  return nothing
end

function _getTLNodeString(cam::Camera, nodename::AbstractString)
  hNodeMapTLDevice = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetTLDeviceNodeMap(cam, hNodeMapTLDevice)

  #  Get camera vendor name
  hNode = Ref(spinNodeHandle(C_NULL))
  spinNodeMapGetNode(hNodeMapTLDevice[], nodename, hNode)
  nodestringbuf = Vector{UInt8}(undef, MAX_BUFFER_LEN)
  nodestringlen = Ref(Csize_t(MAX_BUFFER_LEN))
  if readable(hNode)
    spinStringGetValue(hNode[], nodestringbuf, nodestringlen)
    nodestring = unsafe_string(pointer(nodestringbuf))
  else
    @warn "Could not retrieve transport layer note $node"
    nodestring = "-"
  end

  return nodestring
end

###
### Device Control
###

"""
  serial(::Camera) -> String

  Return camera serial number (string)
"""
serial(cam::Camera) = _getTLNodeString(cam, "DeviceSerialNumber")

"""
  vendor(::Camera) -> String

  Return vendor name of specified camera.
"""
vendor(cam::Camera) = _getTLNodeString(cam, "DeviceVendorName")

"""
  model(::Camera) -> String

  Return model name of specified camera.
"""
model(cam::Camera) = _getTLNodeString(cam, "DeviceModelName")

"""
  show(::IO, ::Camera)

  Write details of camera to supplied IO.
"""
function show(io::IO, cam::Camera)
  vendorname = vendor(cam)
  modelname = model(cam)
  serialno = serial(cam)
  write(io, "$vendorname $modelname ($serialno): $(isrunning(cam) ? "running" : "stopped")")
end



###
### Acuqisition control
###

"""
  isrunning(::Camera) -> Bool

  Determine if the camera is currently acquiring images.
"""
function isrunning(cam::Camera)
  pbIsStreaming = Ref(bool8_t(false))
  spinCameraIsStreaming(cam, pbIsStreaming)
  return (pbIsStreaming == true)
end

"""
  start!(::Camera)

  Start acquistion on specified camera.
"""
function start!(cam::Camera)
  spinCameraBeginAcquisition(cam)
  return cam
end

"""
  stop!(::Camera)

  Stop acquistion on specified camera.
"""
function stop!(cam::Camera)
  spinCameraEndAcquisition(cam)
  return cam
end

"""
  triggermode(::Camera) -> Bool

  Return if camera trigger mode status is on (true), or off (false)
"""
function triggermode(cam::Camera)

     hNodeMap = Ref(spinNodeMapHandle(C_NULL))
     spinCameraGetNodeMap(cam, hNodeMap)

     hTriggerMode = Ref(spinNodeHandle(C_NULL))
     spinNodeMapGetNode(hNodeMap[], "TriggerMode", hTriggerMode);
     @assert readable(hTriggerMode)

     hTriggerModeOnOff = Ref(spinNodeHandle(C_NULL))
     triggerModeOnOff = Ref(Int64(0))
     spinEnumerationGetCurrentEntry(hTriggerMode[], hTriggerModeOnOff)
     spinEnumerationEntryGetIntValue(hTriggerModeOnOff[], triggerModeOnOff)

     # TODO: Return this to getting the Symbolic value - as trigger source has
     #       demonstrated, the mapping to the header may not be useful
     return triggerModeOnOff[] == 0 ? "Off" : "On"

end

"""
  triggermode!(::Camera, ::Bool)

  Set camera trigger mode.
"""
function triggermode!(cam::Camera, mode::AbstractString)

   hNodeMap = Ref(spinNodeMapHandle(C_NULL))
   spinCameraGetNodeMap(cam, hNodeMap)

   hTriggerMode = Ref(spinNodeHandle(C_NULL))

   # Get trigger mode, ensure it is writable
   spinNodeMapGetNode(hNodeMap[], "TriggerMode", hTriggerMode);
   @assert readable(hTriggerMode)

   hTriggerModeOnOff = Ref(spinNodeHandle(C_NULL))
   triggerModeOnOff = Ref(Int64(0))

   spinEnumerationGetEntryByName(hTriggerMode[], mode, hTriggerModeOnOff)
   @assert readable(hTriggerModeOnOff)

   spinEnumerationEntryGetIntValue(hTriggerModeOnOff[], triggerModeOnOff)
   @assert writable(hTriggerMode)
   spinEnumerationSetIntValue(hTriggerMode[], triggerModeOnOff[])

   return mode

end

"""
  triggersource!(::Camera, ::AbstractString)

  Set camera to use specified trigger source. Trigger mode is disabled during
  update and restored after new source is set.
"""
function triggersource!(cam::Camera, src::AbstractString)

  # Save current trigger mode
  initmode = triggermode(cam)

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetNodeMap(cam, hNodeMap)

  hTriggerSource = Ref(spinNodeHandle(C_NULL))
  spinNodeMapGetNode(hNodeMap[], "TriggerSource", hTriggerSource);

  hTriggerSourceNode = Ref(spinNodeHandle(C_NULL))
  triggerSourceVal = Ref(Int64(0))
  spinEnumerationGetEntryByName(hTriggerSource[], src, hTriggerSourceNode)
  @assert readable(hTriggerSourceNode)
  spinEnumerationEntryGetIntValue(hTriggerSourceNode[], triggerSourceVal)

  @assert writable(hTriggerSource)
  spinEnumerationSetIntValue(hTriggerSource[], triggerSourceVal[]);

  # Restore initial trigger mode
  triggermode!(cam, initmode)

  return src

end

"""
  triggersource(::Camera) -> spinTriggerSourceEnums

  Return current camera trigger source.
"""
function triggersource(cam::Camera)


    hNodeMap = Ref(spinNodeMapHandle(C_NULL))
    spinCameraGetNodeMap(cam, hNodeMap)

    hTriggerSource = Ref(spinNodeHandle(C_NULL))
    spinNodeMapGetNode(hNodeMap[], "TriggerSource", hTriggerSource);
    @assert readable(hTriggerSource)

    hTriggerSourceEnum = Ref(spinNodeHandle(C_NULL))
    nodestringbuf = Vector{UInt8}(undef, MAX_BUFFER_LEN)
    nodestringlen = Ref(Csize_t(MAX_BUFFER_LEN))

    spinEnumerationGetCurrentEntry(hTriggerSource[], hTriggerSourceEnum)
    spinEnumerationEntryGetSymbolic(hTriggerSourceEnum[], nodestringbuf, nodestringlen)

    return unsafe_string(pointer(nodestringbuf))

end

"""
  trigger!(::Camera)

  Emit software trigger to specified camera.
"""
function trigger!(cam::Camera)

  trgsft = triggersource(cam) == "Software"
  trgsft || @error "Camera is not set to software trigger source"

  trgarm = triggermode(cam) == "On"
  trgarm || @error "Camera is not set to trigger mode"

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetNodeMap(cam, hNodeMap)

  hTriggerSoftware = Ref(spinNodeHandle(C_NULL))
  spinNodeMapGetNode(hNodeMap[], "TriggerSoftware", hTriggerSoftware);
  spinCommandExecute(hTriggerSoftware[])

end


"""
  exposure!(::Camera)

  Activate (continuous) automatic exposure control on specified camera.
"""
function exposure!(cam::Camera)

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetNodeMap(cam, hNodeMap)

  hExposureAuto = Ref(spinNodeHandle(C_NULL))
  hExposureAutoContinuous = Ref(spinNodeHandle(C_NULL))
  exposureAutoContinuous = Ref(Int64(0))

  spinNodeMapGetNode(hNodeMap[], "ExposureAuto", hExposureAuto);
  @assert readable(hExposureAuto)
  spinEnumerationGetEntryByName(hExposureAuto[], "Continuous", hExposureAutoContinuous)

  @assert readable(hExposureAutoContinuous)
  spinEnumerationEntryGetIntValue(hExposureAutoContinuous[], exposureAutoContinuous)

  @assert writable(hExposureAuto)
  spinEnumerationSetIntValue(hExposureAuto[], exposureAutoContinuous[])

  return "Continuous"

end


"""
  exposure!(::Camera, ::Number) -> Int

  Set exposure time on camera to specified number of microseconds. The requested
  value is rounded to an integer and clamped to range supported by the camera.
  This function disables automatic exposure.
"""
function exposure!(cam::Camera, t::Number)

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetNodeMap(cam, hNodeMap)

  # Disable automatic exposure
  hExposureAuto = Ref(spinNodeHandle(C_NULL))
  hExposureAutoOff = Ref(spinNodeHandle(C_NULL))
  exposureAutoOff = Ref(Int64(0))

  spinNodeMapGetNode(hNodeMap[], "ExposureAuto", hExposureAuto);
  @assert readable(hExposureAuto)
  spinEnumerationGetEntryByName(hExposureAuto[], "Off", hExposureAutoOff)

  @assert readable(hExposureAutoOff)
  spinEnumerationEntryGetIntValue(hExposureAutoOff[], exposureAutoOff)

  @assert writable(hExposureAuto)
  spinEnumerationSetIntValue(hExposureAuto[], exposureAutoOff[])

  # Set manual exposure time
  hExposureTime = Ref(spinNodeHandle(C_NULL))
  exposureTimeMax = Ref(Float64(0.0))
  exposureTimeMin = Ref(Float64(0.0))
  exposureTimeToSet = Ref(Float64(0.0))

  spinNodeMapGetNode(hNodeMap[], "ExposureTime", hExposureTime);
  @assert readable(hExposureTime)
  spinFloatGetMin(hExposureTime[], exposureTimeMin)
  spinFloatGetMax(hExposureTime[], exposureTimeMax)

  # Ensure exposure time does not exceed maximum
  exposureTimeToSet[] = clamp(t, exposureTimeMin[], exposureTimeMax[])
  @assert writable(hExposureTime)
  spinFloatSetValue(hExposureTime[], exposureTimeToSet[]);

  return exposureTimeToSet[]

end

###
### Analog Control
###

"""
  gain!(::Camera)

  Set automatic exposure gain on camera.
"""
function gain!(cam::Camera)

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetNodeMap(cam, hNodeMap)

  # Enable automatic exposure
  hGainAuto = Ref(spinNodeHandle(C_NULL))
  hGainAutoOn = Ref(spinNodeHandle(C_NULL))
  gainAutoOn = Ref(Int64(0))

  spinNodeMapGetNode(hNodeMap[], "ExposureAuto", hGainAuto);
  @assert readable(hGainAuto)
  spinEnumerationGetEntryByName(hGainAuto[], "On", hGainAutoOn)

  @assert readable(hGainAutoOn)
  spinEnumerationEntryGetIntValue(hGainAutoOn[], gainAutoOn)

  @assert writable(hGainAuto)
  spinEnumerationSetIntValue(hGainAuto[], gainAutoOn[])

  return "On"

end


"""
  gain!(::Camera, ::Number) -> Float

  Set exposure gain on camera to specified number (dB). Gain is clamped to
  range supported by camera. This function disables automatic gain.
"""
function gain!(cam::Camera, g::Number)

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetNodeMap(cam, hNodeMap)

  # Disable automatic exposure
  hGainAuto = Ref(spinNodeHandle(C_NULL))
  hGainAutoOff = Ref(spinNodeHandle(C_NULL))
  gainAutoOff = Ref(Int64(0))

  spinNodeMapGetNode(hNodeMap[], "ExposureAuto", hGainAuto);
  @assert readable(hGainAuto)
  spinEnumerationGetEntryByName(hGainAuto[], "Off", hGainAutoOff)

  @assert readable(hGainAutoOff)
  spinEnumerationEntryGetIntValue(hGainAutoOff[], gainAutoOff)

  @assert writable(hGainAuto)
  spinEnumerationSetIntValue(hGainAuto[], gainAutoOff[])

  # Set manual exposure time
  hGain = Ref(spinNodeHandle(C_NULL))
  gainMax = Ref(Float64(0.0))
  gainMin = Ref(Float64(0.0))
  gainToSet = Ref(Float64(0.0))

  spinNodeMapGetNode(hNodeMap[], "Gain", hGain);
  @assert readable(hGain)
  spinFloatGetMin(hGain[], gainMin)
  spinFloatGetMax(hGain[], gainMax)

  # Ensure exposure time does not exceed maximum
  gainToSet[] = clamp(g, gainMin[], gainMax[])
  @assert writable(hGain)
  spinFloatSetValue(hGain[], gainToSet[]);

  return gainToSet[]

end




###
### Image Format Control
###

@enum ADCBITS ADCBITS_Bit10 ADCBITS_Bit12
const ADCBITS_strings = Dict(ADCBITS_Bit10=>"Bit10",
                             ADCBITS_Bit12=>"Bit12")

"""
  adcbits(::Camera)

  Return ADC bit depth.

  TODO: Note that camera is de-initialised and re-initalised in order to gain
  access to registers.
"""
function adcbits(cam::Camera)

  _reinit(cam)

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetNodeMap(cam, hNodeMap)

  hADCBitDepth = Ref(spinNodeHandle(C_NULL))
  spinNodeMapGetNode(hNodeMap[], "AdcBitDepth", hADCBitDepth);
  @assert readable(hADCBitDepth)

  hADCBitDepthEnum = Ref(spinNodeHandle(C_NULL))
  nodestringbuf = Vector{UInt8}(undef, MAX_BUFFER_LEN)
  nodestringlen = Ref(Csize_t(MAX_BUFFER_LEN))

  spinEnumerationGetCurrentEntry(hADCBitDepth[], hADCBitDepthEnum)
  spinEnumerationEntryGetSymbolic(hADCBitDepthEnum[], nodestringbuf, nodestringlen)

  return unsafe_string(pointer(nodestringbuf))

end

"""
  adcbits!(::Camera, ::ADCBITS)

  Set ADC bit depth.

  TODO: Note that camera is de-initialised and re-initalised in order to gain
  access to registers.
"""
function adcbits!(cam::Camera, bits::ADCBITS)

  _reinit(cam)

   hNodeMap = Ref(spinNodeMapHandle(C_NULL))
   spinCameraGetNodeMap(cam, hNodeMap)

   hADCBitDepth = Ref(spinNodeHandle(C_NULL))

   # Get ADC bit depth, ensure it is writable
   spinNodeMapGetNode(hNodeMap[], "AdcBitDepth", hADCBitDepth);
   @assert readable(hADCBitDepth)

   hADCBitDepthVal = Ref(spinNodeHandle(C_NULL))
   ADCBitDepthVal = Ref(Int64(0))

   spinEnumerationGetEntryByName(hADCBitDepth[], ADCBITS_strings[bits], hADCBitDepthVal)
   @assert readable(hADCBitDepthVal)

   spinEnumerationEntryGetIntValue(hADCBitDepthVal[], ADCBitDepthVal)
   @assert writable(hADCBitDepth)
   spinEnumerationSetIntValue(hADCBitDepth[], ADCBitDepthVal[])

   return bits

end



"""
  gammaenable!(::Camera, ::Bool) -> Bool

  Enable or disable gamma correction on camera.
"""
function gammaenable!(cam::Camera, en::Bool)

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetNodeMap(cam, hNodeMap)

  # Set gamma control
  hGammaEnable = Ref(spinNodeHandle(C_NULL))
  gamma_en = Ref(bool8_t(en ? 1 : 0))

  # Write mode and readback
  spinNodeMapGetNode(hNodeMap[], "GammaEnable", hGammaEnable);
  @assert writable(hGammaEnable)
  spinBooleanSetValue(hGammaEnable[], gamma_en[])
  spinBooleanGetValue(hGammaEnable[], gamma_en)

  return gamma_en[] == 1 ? true : false

end









###
### Image acquistion
###



function _isimagecomplete(himage_ref)
  isIncomplete = Ref(bool8_t(false))
  spinImageIsIncomplete(himage_ref[], isIncomplete);
  if isIncomplete == true
    imageStatus = Ref(spinImageStatus(IMAGE_NO_ERROR))
    spinImageGetStatus(himage_ref[], imageStatus)
    spinImageRelease(himage_ref[])
    @warn "Image incomplete with error $(imageStatus)"
    return false
  else
    return true
  end
end

"""
  getimage(::Camera, fmt = PixelFormat_Mono8) -> Image

  Copy the next image from the specified camera, blocking until available. The
  image buffer is converted to the desired output format and returned.
"""
function getimage(cam::Camera, fmt::spinPixelFormatEnums = PixelFormat_Mono8)

  isrunning(cam) || @error "Unable to get image, camera is not running."

  # Get image handle and check it's complete
  himage_ref = Ref(spinImage(C_NULL))
  spinCameraGetNextImage(cam, himage_ref);
  @assert _isimagecomplete(himage_ref)

  # Create output image, convert if required
  image = Image()
  infmt = Ref(spinPixelFormatEnums(0))
  spinImageGetPixelFormat(himage_ref[], infmt)
  if infmt == fmt
    spinImageDeepCopy(himage_ref[], image)
  else
    spinImageConvert(himage_ref[], fmt, image)
  end

  # Release buffer
  spinImageRelease(himage_ref[])

  return image

end




"""
    saveimage(fn::AbstractString, ::Image, ::spinImageFileFormat)

    Save the next image from the specified camera to file `fn`, blocking until
    available.
"""
function saveimage(cam::Camera, fn::AbstractString, fmt::spinImageFileFormat)

    # Get image handle and check it's complete
    himage_ref = Ref(spinImage(C_NULL))
    spinCameraGetNextImage(cam, himage_ref);
    @assert _isimagecomplete(himage_ref)
    spinImageSave(himage_ref[], fn, fmt)
    spinImageRelease(himage_ref[])

end

"""
  getbufferimage(::Camera) -> Image

  Get the next image from the specified camera, blocking until available. The
  returned image is held in the image buffer, and must be released to enable
  continuing capture by calling `release(::Image)`.
"""
function getbufferimage(cam::Camera)
  @error "Not implemented"
end

"""
  getimagearray(cam::Camera) -> Array, Dict

  Copy the next image from the specified camera as a Julia array, with
  associated image metadata. Since the camera data may be packed, the function
  converts the data to the smallest suitable fixed point data type by default.

  Mono_8          => FixedPoint{UInt8, 8}
  Mono_12/Packed  => FixedPoint{UInt16, 12}
  Mono_16/Packed  => FixedPoint{UInt16, 16}
"""
function getimagearray(cam::Camera)
  @error "Not implemented"
end