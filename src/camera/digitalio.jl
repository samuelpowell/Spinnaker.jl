# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# camera/digitalio.jl: Camera object digital io features

"""
  line_mode!(::Camera, state::Symbol)

  Sets the DigitalIO Line Mode. State can either be "Input" or "Output"
"""
function line_mode!(cam::Camera, state::String)
  @assert state in ["Input", "Output"] "State can only be either \"Input\" or \"Output\""
  set!(SpinEnumNode(cam, "LineMode"), state)
  return nothing
end
@deprecate line_mode(cam::Camera, state::String) line_mode!(cam::Camera, state::String)

"""
  line_mode(::Camera)

  Gets the DigitalIO Line Mode. State can either be "Input" or "Output"
"""
line_mode(cam::Camera) = get(SpinEnumNode(cam, "LineMode"))

"""
  line_inverter!(::Camera, enable::Bool)

  Sets the DigitalIO LineInverter state.
"""
function line_inverter!(cam::Camera, state::Bool)
  set!(SpinBooleanNode(cam, "LineInverter"), state)
  return nothing
end

"""
  line_inverter(::Camera)

  Read the DigitalIO LineInverter state.
"""
line_inverter(cam::Camera) = get(SpinBooleanNode(cam, "LineInverter"))

"""
  v3_3_enable!(::Camera, state::Bool)

  Sets the DigitalIO 3.3V line state.
"""
v3_3_enable!(cam::Camera, state::Bool) = set!(SpinBooleanNode(cam, "V3_3Enable"), state)
@deprecate v3_3_enable(cam::Camera, state::Bool) v3_3_enable!(cam::Camera, state::Bool)

"""
  v3_3_enable(::Camera)

  Gets the DigitalIO 3.3V line state.
"""
v3_3_enable(cam::Camera) = get(SpinBooleanNode(cam, "V3_3Enable"))