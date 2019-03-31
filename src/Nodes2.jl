# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# Node.jl: helper function to access interface to Camera nodes


function _getnode(name::String, nodemap)
  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  _nodemap!(cam, hNodeMap, nodemap) 
  hNode = Ref(spinNodeHandle(C_NULL))
  spinNodeMapGetNode(hNodeMap[], name, hNode);
  return hNode
end

abstract type AbstractSpinNode end

#
# Integer nodes
#

struct SpinIntegerNode <: AbstractSpinNode
  name::String
  hNode::Ref{spinNodeHandle}
  SpinIntegerNode(name::String, nodemap=CameraNodeMap()) = SpinIntegerNode(name, _getnode(name, nodemap))
end

function range(node::SpinIntegerNode)
  hMin = Ref(Int64(0.0))
  hMax = Ref(Int64(0.0))
  spinIntegerGetMin(hNode[], hMin)
  spinIntegerGetMax(hNode[], hMax)
  return (hMin[], hMax[])
end

function set!(node::SpinIntegerNode, value::Number)
  if !writable(node.hNode)
    throw(ErrorException("Node $(node.name) is not writable"))
  end
  range = range(node)
  value < range[1] && @warn "Requested value ($value) is smaller than minimum ($(range[1])), value will be clamped."
  value > range[2] && @warn "Requested value ($value) is greater than minimum ($(range[2])), value will be clamped."
  spinIntegerSetValue(node.hNode[], Int64(clamp(value, range[1], range[2])))
  get(node)  
end

function get(node::SpinIntegerNode)
  if !readable(node.hNode)
    throw(ErrorException("Node $(node.name) is not readable"))
  end
  hval = Ref(Int64(0))
  spinIntegerSetValue(node.hNode[], hval)
  return hval[]
end



#
# Floating point nodes
#

struct SpinFloatNode <: AbstractSpinNode
  name::String
  hNode::Ref{spinNodeHandle}
  SpinFloatNode(name::String, nodemap=CameraNodeMap()) = SpinFloatNode(name, _getnode(name, nodemap))
end

function range(node::SpinFloatNode)
  hMin = Ref(Float64(0.0))
  hMax = Ref(Float64(0.0))
  spinFloatGetMin(hNode[], hMin)
  spinFloatGetMax(hNode[], hMax)
  return (hMin[], hMax[])
end

function set!(node::SpinFloatNode, value::Number)
  if !writable(node.hNode)
    throw(ErrorException("Node $(node.name) is not writable"))
  end
  range = range(node)
  value < range[1] && @warn "Requested value ($value) is smaller than minimum ($(range[1])), value will be clamped."
  value > range[2] && @warn "Requested value ($value) is greater than minimum ($(range[2])), value will be clamped."
  spinFloatSetValue(node.hNode[], Float64(clamp(value, range[1], range[2])))
  get(node)  
end

function get(node::SpinFloatNode)
  if !readable(node.hNode)
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
  SpinEnumNode(name::String, nodemap=CameraNodeMap()) = SpinEnumNode(name, _getnode(name, nodemap))
end

function get(node::SpinEnumNode)
  if !readable(node.hNode)
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
  if !readable(node.hNode)
    throw(ErrorException("Node $(node.name) is not readable"))
  end
  hNodeEntry = Ref(spinNodeHandle(C_NULL))
  hNodeVal = Ref(Int64(0))
  spinEnumerationGetEntryByName(node.hNode[], value, hNodeEntry)

  # Get integer value from string
  if !readable(hNodeEntry)
    throw(ErrorException("Node $(node.name) entry is not readable"))
  end
  spinEnumerationEntryGetIntValue(hNodeEntry[], hNodeVal)

  # Set value
  if !writable(node.hNode)
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
  SpinBooleanNode(name::String, nodemap=CameraNodeMap()) = SpinBooleanNode(name, _getnode(name, nodemap))
end

function get(node::SpinBooleanNode)
  if !readable(node.hNode)
    throw(ErrorException("Node $(node.name) is not readable"))
  end
  hval = Ref(bool8_t(0))
  spinBooleanGetValue(node.hNode[], hval)
  return hval[] == 1 ? true : false
end

function set!(node::SpinBooleanNode, value::Bool)
  if !writable(node.hNode)
    throw(ErrorException("Node $(node.name) is not writable"))
  end
  spinBooleanSetValue(hNode[], value)
  get(node)``
end
