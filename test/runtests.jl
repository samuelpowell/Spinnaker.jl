using Test, ImageCore, Dates
function is_ci()
    get(ENV, "TRAVIS", "") == "true" ||
        get(ENV, "APPVEYOR", "") in ("true", "True") ||
        get(ENV, "CI", "") in ("true", "True")
end

using Spinnaker

if is_ci()
    @info "CI testing is disabled due to the need for a Spinnaker-compatible camera during tests."
else
    camlist = CameraList()
    if length(camlist) < 1
        error("""Spinnaker could not find a compatible camera.
        Tests require that a Spinnaker-compatible camera is connected and discoverable.
        If such a camera is connected, check that it is discoverable in SpinView""")
    else
        include("camera_interaction_test.jl")
        include("camera_finalizer_test.jl")
    end
end
