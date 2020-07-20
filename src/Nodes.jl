# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# Node.jl: helper function to access interface to Camera nodes

# Utility functions
function available(name, hNode)
  pbAvailable = Ref(bool8_t(false))
  try
    spinNodeIsAvailable(hNode[], pbAvailable)
  catch err
    error("Node handle invalid for $(name)\n$err")
  end
  return (pbAvailable[] == 1)
end

function readable(name, hNode)
  if available(name, hNode)
   pbReadable = Ref(bool8_t(false))
   spinNodeIsReadable(hNode[], pbReadable)
   return (pbReadable[] == 1)
 else
   return false
 end
end

function writable(name, hNode)
  if available(name, hNode)
   pbWriteable = Ref(bool8_t(false))
   spinNodeIsWritable(hNode[], pbWriteable)
   return (pbWriteable[] == 1)
 else
   return false
 end
end

function _getnode(cam, name::String, nodemap)
  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  _nodemap!(cam, hNodeMap, nodemap) 
  hNode = Ref(spinNodeHandle(C_NULL))
  spinNodeMapGetNode(hNodeMap[], name, hNode);
  return hNode
end

abstract type AbstractSpinNode end


#
# String nodes 
#

struct SpinStringNode <: AbstractSpinNode
  name::String
  hNode::Ref{spinNodeHandle}
  SpinStringNode(cam, name::String, nodemap=CameraNodeMap()) = new(name, _getnode(cam, name, nodemap))
end

function get(node::SpinStringNode)
  if !readable(node.name, node.hNode)
    throw(ErrorException("Node $(node.name) is not readable"))
  end
  strbuf = Vector{UInt8}(undef, MAX_BUFFER_LEN)
  strlen = Ref(Csize_t(MAX_BUFFER_LEN))
  spinStringGetValue(node.hNode[], strbuf, strlen)
  return unsafe_string(pointer(strbuf))
end


#
# Integer nodes
#

struct SpinIntegerNode <: AbstractSpinNode
  name::String
  hNode::Ref{spinNodeHandle}
  SpinIntegerNode(cam, name::String, nodemap=CameraNodeMap()) = new(name, _getnode(cam, name, nodemap))
end

function range(node::SpinIntegerNode)
  hMin = Ref(Int64(0.0))
  hMax = Ref(Int64(0.0))
  spinIntegerGetMin(node.hNode[], hMin)
  spinIntegerGetMax(node.hNode[], hMax)
  return (hMin[], hMax[])
end

function set!(node::SpinIntegerNode, value::Number; clampwarn::Bool = true)
  if !writable(node.name, node.hNode)
    throw(ErrorException("Node $(node.name) is not writable"))
  end
  noderange = range(node)
  if clampwarn
    value < noderange[1] && @warn "Requested value ($value) is smaller than minimum ($(noderange[1])), value will be clamped."
    value > noderange[2] && @warn "Requested value ($value) is greater than maximum ($(noderange[2])), value will be clamped."
  end
  spinIntegerSetValue(node.hNode[], Int64(clamp(value, noderange[1], noderange[2])))
  get(node)  
end

function get(node::SpinIntegerNode)
  if !readable(node.name, node.hNode)
    throw(ErrorException("Node $(node.name) is not readable"))
  end
  hval = Ref(Int64(0))
  spinIntegerGetValue(node.hNode[], hval)
  return hval[]
end



#
# Floating point nodes
#

struct SpinFloatNode <: AbstractSpinNode
  name::String
  hNode::Ref{spinNodeHandle}
  SpinFloatNode(cam, name::String, nodemap=CameraNodeMap()) = new(name, _getnode(cam, name, nodemap))
end

function range(node::SpinFloatNode)
  hMin = Ref(Float64(0.0))
  hMax = Ref(Float64(0.0))
  spinFloatGetMin(node.hNode[], hMin)
  spinFloatGetMax(node.hNode[], hMax)
  return (hMin[], hMax[])
end

function set!(node::SpinFloatNode, value::Number; clampwarn::Bool = true)
  if !writable(node.name, node.hNode)
    throw(ErrorException("Node $(node.name) is not writable"))
  end
  noderange = range(node)
  if clampwarn
    value < noderange[1] && @warn "Requested value ($value) is smaller than minimum ($(noderange[1])), value will be clamped."
    value > noderange[2] && @warn "Requested value ($value) is greater than maximum ($(noderange[2])), value will be clamped."
  end
  spinFloatSetValue(node.hNode[], Float64(clamp(value, noderange[1], noderange[2])))
  get(node)  
end

function get(node::SpinFloatNode)
  if !readable(node.name, node.hNode)
    throw(ErrorException("Node $(node.name) is not readable"))
  end
  hval = Ref(Float64(0))
  spinFloatGetValue(node.hNode[], hval)
  return hval[]
end



#
# Integer enumeration nodes 
#

struct SpinEnumNode <: AbstractSpinNode
  name::String
  hNode::Ref{spinNodeHandle}
  SpinEnumNode(cam, name::String, nodemap=CameraNodeMap()) = new(name, _getnode(cam, name, nodemap))
end

function get(node::SpinEnumNode)
  if !readable(node.name, node.hNode)
    throw(ErrorException("Node $(node.name) is not readable"))
  end
  hNodeEntry = Ref(spinNodeHandle(C_NULL))
  strbuf = Vector{UInt8}(undef, MAX_BUFFER_LEN)
  strlen = Ref(Csize_t(MAX_BUFFER_LEN))
  spinEnumerationGetCurrentEntry(node.hNode[], hNodeEntry)
  spinEnumerationEntryGetSymbolic(hNodeEntry[], strbuf, strlen)
  return unsafe_string(pointer(strbuf))
end

function set!(node::SpinEnumNode, value)
  if !readable(node.name, node.hNode)
    throw(ErrorException("Node $(node.name) is not readable"))
  end
  hNodeEntry = Ref(spinNodeHandle(C_NULL))
  hNodeVal = Ref(Int64(0))
  spinEnumerationGetEntryByName(node.hNode[], value, hNodeEntry)

  # Get integer value from string
  if !readable(node.name, hNodeEntry)
    throw(ErrorException("Node $(node.name) entry is not readable"))
  end
  spinEnumerationEntryGetIntValue(hNodeEntry[], hNodeVal)

  # Set value
  if !writable(node.name, node.hNode)
    throw(ErrorException("Node $(node.name) is not writable"))
  end
  spinEnumerationSetIntValue(node.hNode[], hNodeVal[])

  # Readback
  get(node)
end


#
# Boolean mnodes
#

struct SpinBooleanNode <: AbstractSpinNode
  name::String
  hNode::Ref{spinNodeHandle}
  SpinBooleanNode(cam, name::String, nodemap=CameraNodeMap()) = new(name, _getnode(cam, name, nodemap))
end

function get(node::SpinBooleanNode)
  if !readable(node.name, node.hNode)
    throw(ErrorException("Node $(node.name) is not readable"))
  end
  hval = Ref(bool8_t(0))
  spinBooleanGetValue(node.hNode[], hval)
  return hval[] == 1 ? true : false
end

function set!(node::SpinBooleanNode, value::Bool)
  if !writable(node.name, node.hNode)
    throw(ErrorException("Node $(node.name) is not writable"))
  end
  spinBooleanSetValue(node.hNode[], value)
  get(node)
end

