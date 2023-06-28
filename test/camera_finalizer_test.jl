@testset "finalize the same camera multiple times concurrently" begin
    start_time = now()
    stop = Ref(false)
    @async begin
        while now() - start_time < Second(10)
            GC.gc(true)
            sleep(0.1)
        end
        stop[] = true
    end
    t1 = @async begin
        while !stop[]
            camlist = CameraList()
            cam = camlist[0]
            start!(cam)
            try
                sleep(0.01)
                framerate!(cam, 55.0)
                gain_lims = gain_limits(cam)
                @async gain!(cam, rand(gain_lims[1]:gain_lims[2]))
                getimage(cam)
                sleep(0.01)
            finally
                stop!(cam)
            end
            yield()
        end
    end
    t2 = @async begin
        while !stop[]
            camlist = CameraList()
            cam = camlist[0]
            start!(cam)
            try
                sleep(0.01)
                framerate!(cam, 55.0)
                gain_lims = gain_limits(cam)
                @async gain!(cam, rand(gain_lims[1]:gain_lims[2]))
                getimage(cam)
                sleep(0.01)
            finally
                stop!(cam)
            end
            yield()
        end
    end
    fetch(t1)
    fetch(t2)
end
