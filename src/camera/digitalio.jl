# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# camera/digitalio.jl: Camera object digital io features

"""
  line_mode(::Camera, state::Symbol)
  Sets the DigitalIO Line Mode. State can either be `:input` or `:output`.
"""
function line_mode(cam::Camera, state::Symbol)
  @assert state in [:input, :output] "State can only be either :input or :output"
  if state == :input
    set!(SpinEnumNode(cam, "LineMode"), LineMode_Input)
  elseif state == :output
    set!(SpinEnumNode(cam, "LineMode"), LineMode_Output)
  end
  return nothing
end

"""
  v3_3_enable(::Camera, state::Bool)
  Sets the DigitalIO 3.3V line state.
"""
v3_3_enable(cam::Camera, state::Bool) = set!(SpinBooleanNode(cam, "V3_3Enable"), state)

