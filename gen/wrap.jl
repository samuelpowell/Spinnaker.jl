# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# wrap.jl: automatically wrap C API using Clang.jl

# This wrapper uses the Gnuic/refactor branch of Clang.jl to provide proper enumeration
# support. Implementation guided by:
#   https://github.com/JuliaDiffEq/Sundials.jl (general)
#   https://github.com/JuliaAttic/CUDArt.jl/ (error rewriter)

using Clang: init

const incpath = normpath("/usr/include/spinnaker/spinc")

if !isdir(incpath)
  error("Spinnaker SDK C header not found, please install manually.")
end

const outpath = normpath(@__DIR__, "..", "src", "wrapper")
mkpath(outpath)

const spinnaker_headers = readdir(incpath)

const clang_path = "/usr/lib/clang/6.0"
const clang_includes = [joinpath(clang_path, "include")]

# TODO: should we use actually use Clang.jl installation here?
# const CLANG_INCLUDE = joinpath(@__DIR__, "..", "deps", "usr", "include", "clang-c") |> normpath
# const CLANG_HEADERS = [joinpath(CLANG_INCLUDE, cHeader) for cHeader in readdir(CLANG_INCLUDE) if endswith(cHeader, ".h")]

headerlibmap = Dict("SpinnakerC.h"       => "libSpinnaker_C",
                    "QuickSpinC.h"       => "libSpinnaker_C",
                    "SpinnakerGenApiC.h" => "libSpinnaker_C",
                    "SpinVideoC.h"       => "libSpinVideo_C")


function library_file(header::AbstractString)
  header_name = basename(header)
  if(haskey(headerlibmap, header_name))
    return headerlibmap[header_name]
  else
    @warn "$header has unknown library association, using libSpinnaker_C"
    return "libSpinnaker_C"
  end
end

# Test if header should be wrapped
function header_filter(top_hdr::AbstractString, cursor_header::AbstractString)
  return (top_hdr == cursor_header) # Do not wrap nested includes
end

# Test if element should be wrapped
function cursor_filter(name::AbstractString, cursor)
  return true
end
#
# if typeof(cursor) == Clang.LibClang.CXCursor
#     # Wrap only spin, and quickSpin prefaced functions
#     return occursin(r"^(quickSpin|spin)", name)
# else
#     # Else, wrap everything
#     return true
# end

# Add error checking to generated functions
rewriter(arg) = arg
# rewriter(A::Array) = [rewriter(a) for a in A]
# rewriter(s::Symbol) = string(s)

const skip_expr = []
const skip_error_check = []
function rewriter(ex::Expr)

    # Skip sepcified expressions
    if in(ex, skip_expr)
        return :()
    end

    # Only process function calls
    ex.head == :function || return ex

    decl, body = ex.args[1], ex.args[2]
    ccallexpr = body.args[1]
    rettype = ccallexpr.args[3]

    if rettype == :spinError
        fname = decl.args[1]
        if !in(fname, skip_error_check)
            body.args[1] = Expr(:call, :checkerror, deepcopy(ccallexpr))
        end
    end

    return ex
end


# Build wrapping context
const context = init(
  headers = map(x -> joinpath(incpath, x), spinnaker_headers),
  output_file = joinpath(outpath, "spin_api.jl"),
  common_file = joinpath(outpath, "spin_common.jl"),
  clang_args = [
  "-D", "__STDC_LIMIT_MACROS",
  "-D", "__STDC_CONSTANT_MACROS",
  "-v"
  ],
  clang_diagnostics = true,
  clang_includes = [clang_includes; incpath],
  header_library = library_file,
  header_wrapped = header_filter,
  cursor_wrapped = cursor_filter,
  rewriter = rewriter
)

run(context)

# Manual changes
@warn "Manual changes to wrapper are required, see wrap.jl"
# spinStringGetValue Cstring -> Ptr{UInt8}
# spinEnumerationEntryGetSymbolic Cstrong -> Ptr{UInt8}

# Remove unused files
rm(joinpath(outpath, "LibTemplate.jl"))
rm(joinpath(outpath, "ctypes.jl"))


@info "Warpper written to $outpath"
