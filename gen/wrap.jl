# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2018 Samuel Powell

# wrap.jl: automatically wrap C API using Clang.jl

# Implementaion guided by https://github.com/JuliaDiffEq/Sundials.jl

using Clang
using Clang.wrap_c

const incpath = normpath("/usr/include/spinnaker/spinc")

if !isdir(incpath)
    error("Spinnaker SDK C header not found, please install manually.")
end

const outpath = normpath(@__DIR__, "..", "src", "wrapper")
mkpath(outpath)

const spinnaker_headers = readdir(incpath)
const clang_path = "/usr/lib/clang/6.0"
const clang_includes = [joinpath(clang_path, "include")]

function julia_file(header::AbstractString)
    src_name = basename(header)
    return joinpath(outpath, string(src_name, ".jl"))
end

headerlibmap = Dict("SpinnakerC.h"       => "libSpinnaker_C",
                    "QuickSpinC.h"       => "libSpinnaker_C",
                    "SpinnakerGenApiC.h" => "libSpinnaker_C",
                    "SpinVideoC.h"       => "libSpinVideo_C")


function library_file(header::AbstractString)
    header_name = basename(header)
    if(haskey(headerlibmap, header_name))
        return headerlibmap[header_name]
    else
        @error "Wrapping $header failed: unknown library association"
    end
end

# Test if header should be wrapped
function wrap_header(top_hdr::AbstractString, cursor_header::AbstractString)
    # Do not wrap nested includes
    return (top_hdr == cursor_header)
end

# Test if element should be wrapped
function wrap_cursor(name::AbstractString, cursor)
    # Wrap only spin, and quickSpin prefaced functions
    if typeof(cursor) == Clang.cindex.FunctionDecl
        return occursin(r"^(quickSpin|spin)", name)
    else
        return true
    end
end

# Build wrapping context
const context = wrap_c.init(
    headers = map(x -> joinpath(incpath, x), spinnaker_headers),
    common_file  = joinpath(outpath, "definitions.jl"),
    clang_args = [
        "-D", "__STDC_LIMIT_MACROS",
        "-D", "__STDC_CONSTANT_MACROS",
        "-v"
    ],
    clang_diagnostics = true,
    clang_includes = [clang_includes; incpath],
    header_outputfile = julia_file,
    header_library = library_file,
    header_wrapped=wrap_header,
    cursor_wrapped=wrap_cursor
    )

run(context)

@info "Warpper written to $outpath"
