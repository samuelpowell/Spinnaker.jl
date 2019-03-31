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

# Node maps
function GetStringNode(cam::Camera,
                       name::AbstractString;
                       nodemap::AbstractNodeMap = CameraNodeMap())

  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  _nodemap!(cam, hNodeMap, nodemap)
  
  #  Get camera vendor name
  hNode = Ref(spinNodeHandle(C_NULL))
  spinNodeMapGetNode(hNodeMap[], name, hNode)
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
  IEnumNode!(::Cam, name::String, value::String, reinit=false; nodemap) -> String

  Set the enumeration node `name` to `value` on specified camera. If `reinit` is
  true, the camera is deinitialised and reinitialised prior to node access. The
  actual value is read back and returned.
"""
function IEnumNode!(cam::Camera,
                    name::AbstractString,
                    value::AbstractString,
                    reinit = false;
                    nodemap::AbstractNodeMap = CameraNodeMap())
  reinit && _reinit(cam)
  set!(SpineEnumNode(cam, name, nodemap), value)
end

"""
  IEnumNode(::Cam, name::String, reinit=false; nodemap) -> String

  Retrieve the enumeration node `name` on specified camera. If `reinit` is true,
  the camera is deinitialised and reinitialised prior to node access.
"""
function IEnumNode(cam::Camera,
                   name::AbstractString,
                   reinit = false;
                   nodemap::AbstractNodeMap = CameraNodeMap())
  reinit && _reinit(cam)
  get(SpinEnumNode(cam, name, nodemap))
end

"""
  IIntegerNode(::Cam, name::String, reinit=false; nodemap) -> Int

  Retrieve the integer node `name` on specified camera. If `reinit` is  true, the 
  camera is deinitialised and reinitialised prior to node access.
"""
function IIntegerNode(cam::Camera,
                      name::AbstractString,
                      reinit = false;
                      nodemap::AbstractNodeMap = CameraNodeMap())
  reinit && _reinit(cam)
  get(SpinIntegerNode(cam, name, nodemap))
end


"""
IIntegerNode!(::Cam, name::String, value::Integer, reinit=false; nodemap) -> Integer

  Set the integer node `name` to `value` on specified camera. If `reinit` is
  true, the camera is deinitialised and reinitialised prior to node access. The
  value is clamped to the allowable range, and the actual value is read back
  and returned.
"""
function IIntegerNode!(cam::Camera,
                     name::AbstractString,
                     value::Integer,
                     reinit = false;
                     nodemap::AbstractNodeMap = CameraNodeMap())
  reinit && _reinit(cam)
  set!(SpinIntegerNode(cam, name, nodemap), value)
end


"""
  IFloatNode(::Cam, name::String, reinit=false; nodemap) -> Float64

  Retrieve the float node `name` on specified camera. If `reinit` is  true, the 
  camera is deinitialised and reinitialised prior to node access.
"""
function IFloatNode(cam::Camera,
                    name::AbstractString,
                    reinit = false;
                    nodemap::AbstractNodeMap = CameraNodeMap())
  reinit && _reinit(cam)
  get(SpinFloatNode(cam, name, nodemap))
end


"""
  IFloatNode!(::Cam, name::String, value::Number, reinit=false; nodemap) -> Float64

  Set the float node `name` to `value` on specified camera. If `reinit` is
  true, the camera is deinitialised and reinitialised prior to node access. The
  value is clamped to the allowable range, and the actual value is read back
  and returned.
"""
function IFloatNode!(cam::Camera,
                     name::AbstractString,
                     value::Number,
                     reinit = false;
                     nodemap::AbstractNodeMap = CameraNodeMap())
  reinit && _reinit(cam)
  get(SpinFloatNode(cam, name, nodemap))
end

"""
  IBooleanNode(::Cam, name::String; nodemap) -> Bool

  Return value of boolean node.
"""
function IBooleanNode(cam::Camera,
                      name::String;
                      nodemap::AbstractNodeMap = CameraNodeMap())
  get(SpinBooleanNode(cam, name, nodemap))
end

"""
  IBooleanNode!(::Cam, name::String, value::Bool; nodemap) -> Bool

  Return value of boolean node.
"""

function IBooleanNode!(cam::Camera,
                       name::String,
                       value::Bool;
                       nodemap::AbstractNodeMap = CameraNodeMap())
  reinit && _reinit(cam)
  set!(SpinBooleanNode(cam, name, nodemap), value)
end
