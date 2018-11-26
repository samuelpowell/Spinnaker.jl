# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# Node.jl: helper function to access interface to Camera nodes

# Utility functions
function available(nodeName)
  pbAvailable = Ref(bool8_t(false))
  spinNodeIsAvailable(nodeName[], pbAvailable)
  return (pbAvailable[] == 1)
end

function readable(nodeName)
  if available(nodeName)
   pbReadable = Ref(bool8_t(false))
   spinNodeIsReadable(nodeName[], pbReadable)
   return (pbReadable[] == 1)
 else
   return false
 end
end

function writable(nodeName)
  if available(nodeName)
   pbWriteable = Ref(bool8_t(false))
   spinNodeIsReadable(nodeName[], pbWriteable)
   return (pbWriteable[] == 1)
 else
   return false
 end
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

"""
  IEnumNode!(::Cam, name::String, value::String, reinit=false) -> String

  Set the enumeration node `name` to `value` on specified camera. If `reinit` is
  true, the camera is deinitialised and reinitialised prior to node access. The
  actual value is read back and returned.
"""
function IEnumNode!(cam::Camera,
                    name::AbstractString,
                    value::AbstractString,
                    reinit = false)

   reinit && _reinit(cam)

   hNodeMap = Ref(spinNodeMapHandle(C_NULL))
   spinCameraGetNodeMap(cam, hNodeMap)

   # Get the enumeration node
   hNode = Ref(spinNodeHandle(C_NULL))
   spinNodeMapGetNode(hNodeMap[], name, hNode);

   # Get enumeration entry
   if !readable(hNode)
     throw(ErrorException("Node $name is not readable"))
   end
   hNodeEntry = Ref(spinNodeHandle(C_NULL))
   hNodeVal = Ref(Int64(0))
   spinEnumerationGetEntryByName(hNode[], value, hNodeEntry)

   # Get integer value from string
   if !readable(hNodeEntry)
     throw(ErrorException("Node $name entry is not readable"))
   end
   spinEnumerationEntryGetIntValue(hNodeEntry[], hNodeVal)

   # Set value
   if !writable(hNode)
     throw(ErrorException("Node $name is not writable"))
   end
   spinEnumerationSetIntValue(hNode[], hNodeVal[])

   # Readback
   return IEnumNode(cam, name)

end

"""
  IEnumNode(::Cam, name::String, reinit=false) -> String

  Retrieve the enumeration node `name` to `value` on specified camera. If
  `reinit` is true, the camera is deinitialised and reinitialised prior to node
  access.
"""
function IEnumNode(cam::Camera,
                   name::AbstractString,
                   reinit = false)

   reinit && _reinit(cam)

   hNodeMap = Ref(spinNodeMapHandle(C_NULL))
   spinCameraGetNodeMap(cam, hNodeMap)

   hNode = Ref(spinNodeHandle(C_NULL))
   spinNodeMapGetNode(hNodeMap[], name, hNode);
   if !readable(hNode)
     throw(ErrorException("Node $name is not readable"))
   end

   hNodeEntry = Ref(spinNodeHandle(C_NULL))
   strbuf = Vector{UInt8}(undef, MAX_BUFFER_LEN)
   strlen = Ref(Csize_t(MAX_BUFFER_LEN))

   spinEnumerationGetCurrentEntry(hNode[], hNodeEntry)
   spinEnumerationEntryGetSymbolic(hNodeEntry[], strbuf, strlen)

   return unsafe_string(pointer(strbuf))

end

"""
  IFloatNode(::Cam, name::String, reinit=false) -> Float64

  Retrieve the float node `name` to `value` on specified camera. If `reinit` is
  true, the camera is deinitialised and reinitialised prior to node access.
"""
function IFloatNode!(cam::Camera,
                     name::AbstractString,
                     reinit = false)

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetNodeMap(cam, hNodeMap)

  # Set manual exposure time
  hNode = Ref(spinNodeHandle(C_NULL))
  spinNodeMapGetNode(hNodeMap[], name, hNode);
  if !readable(hNode)
    throw(ErrorException("Node $name is not readable"))
  end

  hsetvalue = Ref(Float64(0.0))
  spinFloatGetValue(hNode[], hsetvalue)
  return hsetvalue[]

end


"""
  IFloatNodeRange(::Cam, name::AbstractString) -> (min, max)

  Return range of floating point node.
"""
function IFloatNodeRange(cam::Camera, name::String)

    hNodeMap = Ref(spinNodeMapHandle(C_NULL))
    spinCameraGetNodeMap(cam, hNodeMap)

    # Set manual exposure time
    hNode = Ref(spinNodeHandle(C_NULL))
    hvalmin = Ref(Float64(0.0))
    hvalmax = Ref(Float64(0.0))

    spinNodeMapGetNode(hNodeMap[], name, hNode);
    if !readable(hNode)
      throw(ErrorException("Node $name is not readable"))
    end
    spinFloatGetMin(hNode[], hvalmin)
    spinFloatGetMax(hNode[], hvalmax)

    return (hvalmin[], hvalmax[])

end


"""
  IFloatNode!(::Cam, name::String, value::Number, reinit=false) -> Float64

  Set the float node `name` to `value` on specified camera. If `reinit` is
  true, the camera is deinitialised and reinitialised prior to node access. The
  value is clamped to the allowable range, and the actual value is read back
  and returned.
"""
function IFloatNode!(cam::Camera,
                     name::AbstractString,
                     value::Number,
                     reinit = false)

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetNodeMap(cam, hNodeMap)

  # Get node
  hNode = Ref(spinNodeHandle(C_NULL))
  hsetvalue = Ref(Float64(0.0))
  spinNodeMapGetNode(hNodeMap[], name, hNode);

  # Clamp and set range
  if !writable(hNode)
    throw(ErrorException("Node $name is not writable"))
  end
  spinFloatSetValue(hNode[], Float64(clamp(value, IFloatNodeRange(cam, name)...)))
  spinFloatGetValue(hNode[], hsetvalue)

  return hsetvalue[]

end

"""
  IBooleanNode(::Cam, name::String) -> Bool

  Return value of boolean node.
"""
function IBooleanNode(cam::Camera, name::String)

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetNodeMap(cam, hNodeMap)

  # Get node
  hNode = Ref(spinNodeHandle(C_NULL))
  hval = Ref(bool8_t(0))
  spinNodeMapGetNode(hNodeMap[], name, hNode);
  if !readable(hNode)
    throw(ErrorException("Node $name is not readable"))
  end

  # Get and return value
  spinBooleanGetValue(hNode[], hval)

  return hval[] == 1 ? true : false

end

"""
  IBooleanNode!(::Cam, name::String, value::Bool) -> Bool

  Return value of boolean node.
"""
function IBooleanNode(cam::Camera, name::String, value::Bool)

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  spinCameraGetNodeMap(cam, hNodeMap)

  # Get node
  hNode = Ref(spinNodeHandle(C_NULL))
  hval = Ref(bool8_t(0))
  spinNodeMapGetNode(hNodeMap[], name, hNode);
  if !writable(hNode)
    throw(ErrorException("Node $name is not writable"))
  end

  # Get and return value
  spinBooleanSetValue(hNode[], value)
  spinBooleanGetValue(hNode[], hval)

  return hval[] == 1 ? true : false

end
