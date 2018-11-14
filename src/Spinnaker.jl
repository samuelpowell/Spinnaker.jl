module Spinnaker

import Libdl

# define libarary names
const libSpinnaker_C = "libSpinnaker_C"
const libSpinVideo_C = "libSpinVideo_C"

const MAX_BUFFER_LEN = Csize_t(255)

# include API wrapper
include("wrapper/CEnum.jl")
using .CEnum

include("wrapper/spin_common.jl")
include("wrapper/spin_api.jl")
#include("wrapper/QuickSpinC.h.jl")
#include("wrapper/SpinVideoC.h.jl")

# export everything
foreach(names(@__MODULE__, all=true)) do s
  if startswith(string(s), "spin")
    @eval export $s
  end
end







end # module
