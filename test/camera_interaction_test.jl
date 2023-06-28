@testset "Camera Interaction" begin
    cam = camlist[0]
    @test typeof(cam) == Spinnaker.Camera

    @testset "Set continuous mode" begin
        triggermode!(cam, "Off")
        @test triggermode(cam) == "Off"

        acquisitionmode!(cam, "Continuous")
        @test acquisitionmode(cam) == "Continuous"

        framerates = framerate_limits(cam)
        framerate!(cam, framerates[end])
        @test isapprox(framerate(cam), framerates[end])
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
end
