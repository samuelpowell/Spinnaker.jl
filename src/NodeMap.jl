# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# Node.jl: helper function to access node maps

abstract type AbstractNodeMap end

function _nodemap(cam, nm::AbstractNodeMap)
  hNodeMap = Ref(spinNodeMapHandle(C_NULL))
  _nodemap!(cam, hNodeMap, nm) 
  return hNodeMap
end

struct CameraNodeMap <: AbstractNodeMap end

function _nodemap!(cam, hNodeMap, nm::CameraNodeMap) 
  spinCameraGetNodeMap(cam, hNodeMap)
end

struct CameraTLDeviceNodeMap <: AbstractNodeMap end

function _nodemap!(cam, hNodeMap, nm::CameraTLDeviceNodeMap)
  spinCameraGetTLDeviceNodeMap(cam, hNodeMap)
end

struct CameraTLStreamNodeMap <: AbstractNodeMap end

function _nodemap!(cam, hNodeMap, nm::CameraTLStreamNodeMap)
  spinCameraGetTLStreamNodeMap(cam, hNodeMap)
end