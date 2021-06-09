# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# camera/digitalio.jl: Camera object digital io features

"""
  line_mode(::Camera, state::Symbol)
  Sets the DigitalIO Line Mode. State can either be "Input" or "Output"
"""
function line_mode(cam::Camera, state::String)
  @assert state in ["Input", "Output"] "State can only be either \"Input\" or \"Output\""
  set!(SpinEnumNode(cam, "LineMode"), state)
  return nothing
end

"""
  v3_3_enable(::Camera, state::Bool)
  Sets the DigitalIO 3.3V line state.
"""
v3_3_enable(cam::Camera, state::Bool) = set!(SpinBooleanNode(cam, "V3_3Enable"), state)

