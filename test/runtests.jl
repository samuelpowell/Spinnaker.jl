using Test, ImageCore
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
        @testset "Camera Interaction" begin
            cam = camlist[0]
            @test typeof(cam) == Spinnaker.Camera

            @testset "Set continuous mode" begin
                triggermode!(cam, "Off")
                @test triggermode(cam) == "Off"

                acquisitionmode!(cam, "Continuous")
                @test acquisitionmode(cam) == "Continuous"

                max_framerate = framerate_limits(cam)[end]
                framerate!(cam, max_framerate)
                @test isapprox(framerate(cam), max_framerate)
            end

            @testset "Set exposure" begin
                exposure!(cam, 4000)
                exp, mode = exposure(cam)
                @test isapprox(exp, 4000, rtol=0.1)
                @test mode == "Off"

                exposure!(cam)
                exp, mode = exposure(cam)
                @test mode == "Continuous"
            end

            @testset "Read image" begin
                @testset "Mono8" begin
                    pixelformat!(cam, "Mono8")
                    @assert pixelformat(cam) == "Mono8"
                    start!(cam)
                    img = getimage(cam, Gray{N0f8}, normalize=true)
                    @test all(size(img) .> 0)
                    stop!(cam)
                end
            end

            @testset "Digital IO" begin
                line_inverter!(cam, true)
                @test line_inverter(cam)
                line_inverter!(cam, false)
                @test !line_inverter(cam)

                line_mode!(cam, "Input")
                @test line_mode(cam) == "Input"
                line_mode!(cam, "Output")
                @test line_mode(cam) == "Output"

                v3_3_enable!(cam, true)
                @test v3_3_enable(cam)
                v3_3_enable!(cam, false)
                @test !v3_3_enable(cam)

                @testset "deprecated" begin
                    @test_deprecated ine_mode(cam, "Input")
                    @test line_mode(cam) == "Input"
                    @test_deprecated line_mode(cam, "Output")
                    @test line_mode(cam) == "Output"

                    @test_deprecated v3_3_enable(cam, true)
                    @test v3_3_enable(cam)
                    @test_deprecated v3_3_enable(cam, false)
                    @test !v3_3_enable(cam)
                end
            end
        end

        @testset "#90: duplicate initialization crash" begin
            CameraList()
            CameraList()
            GC.gc(true)
        end
    end
end
