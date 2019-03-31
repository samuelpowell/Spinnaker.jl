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

abstract type AbstractNode end

#
# Integer nodes
#

struct IntegerNode <: AbstractNode
  name::String
  hNode::Ref{spinNodeHandle}
  IntegerNode(name::String, nodemap=CameraNodeMap()) = IntegerNode(name, _getnode(name, nodemap))
end

function range(node::IntegerNode)
  hMin = Ref(Int64(0.0))
  hMax = Ref(Int64(0.0))
  spinIntegerGetMin(hNode[], hMin)
  spinIntegerGetMax(hNode[], hMax)
  return (hMin[], hMax[])
end

function set!(node::IntegerNode, value::Number)
  if !writable(node.hNode)
    throw(ErrorException("Node $(node.name) is not writable"))
  end
  range = range(node)
  value < range[1] && @warn "Requested value ($value) is smaller than minimum ($(range[1])), value will be clamped."
  value > range[2] && @warn "Requested value ($value) is greater than minimum ($(range[2])), value will be clamped."
  spinIntegerSetValue(node.hNode[], Int64(clamp(value, range[1], range[2])))
  get(node)  
end

function get(node::IntegerNode)
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

struct FloatNode <: AbstractNode
  name::String
  hNode::Ref{spinNodeHandle}
  FloatNode(name::String, nodemap=CameraNodeMap()) = FloatNode(name, _getnode(name, nodemap))
end

function range(node::FloatNode)
  hMin = Ref(Float64(0.0))
  hMax = Ref(Float64(0.0))
  spinFloatGetMin(hNode[], hMin)
  spinFloatGetMax(hNode[], hMax)
  return (hMin[], hMax[])
end

function set!(node::FloatNode, value::Number)
  if !writable(node.hNode)
    throw(ErrorException("Node $(node.name) is not writable"))
  end
  range = range(node)
  value < range[1] && @warn "Requested value ($value) is smaller than minimum ($(range[1])), value will be clamped."
  value > range[2] && @warn "Requested value ($value) is greater than minimum ($(range[2])), value will be clamped."
  spinFloatSetValue(node.hNode[], Float64(clamp(value, range[1], range[2])))
  get(node)  
end

function get(node::FloatNode)
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

struct EnumNode <: AbstractNode
  name::String
  hNode::Ref{spinNodeHandle}
  EnumNode(name::String, nodemap=CameraNodeMap()) = EnumNode(name, _getnode(name, nodemap))
end

function get(node::EnumNode)
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

function set!(node::EnumNode, value)
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

struct BooleanNode <: AbstractNode
  name::String
  hNode::Ref{spinNodeHandle}
  BooleanNode(name::String, nodemap=CameraNodeMap()) = BooleanNode(name, _getnode(name, nodemap))
end

function get(node::BooleanNode)
  if !readable(node.hNode)
    throw(ErrorException("Node $(node.name) is not readable"))
  end
  hval = Ref(bool8_t(0))
  spinBooleanGetValue(node.hNode[], hval)
  return hval[] == 1 ? true : false
end

function set!(node::BooleanNode, value::Bool)
  if !writable(node.hNode)
    throw(ErrorException("Node $(node.name) is not writable"))
  end
  spinBooleanSetValue(hNode[], value)
  get(node)``
end
