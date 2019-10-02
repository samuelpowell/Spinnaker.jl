using Spinnaker, Test, ImageCore

@testset "Camera Interaction" begin
    camlist = CameraList()
    @test length(camlist) >= 1
    cam = camlist[0]
    @test typeof(cam) == Spinnaker.Camera

    @testset "Set continuous mode" begin
        triggermode!(cam, "Off")
        @test triggermode(cam) == "Off"

        acquisitionmode!(cam, "Continuous")
        @test acquisitionmode(cam) == "Continuous"

        framerate!(cam, 60)
        @test framerate(cam) == 60
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
        start!(cam)
        img = getimage(cam, Gray{N0f8}, normalize=true)
        @test all(size(img) .> 0)
        stop!(cam)
    end
end
