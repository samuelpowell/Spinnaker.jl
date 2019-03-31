
# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# Stream.jl: functions to control stream interface

"""
	buffermode(::Camera) -> String

	The current stream buffer mode of the camera.
"""
function buffermode(cam::Camera)
	IEnumNode(cam::Camera, "StreamBufferHandlingMode", nodemap = CameraTLStreamNodeMap())
end


"""
	buffermode!(::Camera, mode::String) -> String

	Set the stream buffer mode of the camera, options include:
	 - OldestFirst
	 - OldestFirstOverwrite
	 - NewestFirst
	 - NewestFirstOverwrite
	 - NewestOnly

	See https://www.ptgrey.com/tan/11174 for more details.
"""
function buffermode!(cam::Camera, mode::String)
	IEnumNode!(cam, "StreamBufferHandlingMode", mode, nodemap=CameraTLStreamNodeMap())
end


"""
	buffercount(::Camera) -> (Int, String)

	Return the buffer count mode and specified number of buffers.
"""
function buffercount(cam::Camera)
	count = IIntegerNode(cam, "StreamBufferCountResult", nodemap=CameraTLStreamNodeMap())
	mode = IEnumNode(cam, "StreamBufferCountMode", nodemap=CameraTLStreamNodeMap())
	return Int(count), mode
end


"""
	buffercount!(::Camera) -> (Int, String)

	Set buffer count mode to automatic. Returns the buffer count and mode.
"""
function buffercount!(cam::Camera)
	IEnumNode!(cam, "StreamBufferCountMode", "Auto", nodemap=CameraTLStreamNodeMap())
	buffercount(cam)
end


"""
	buffercount!(::Camera, count) -> (Int, String)

	Set buffer count mode to manual, and specify the number of buffers. Returns the
	buffer count and mode.
"""
function buffercount!(cam::Camera, count)
	IEnumNode!(cam, "StreamBufferCountMode", "Manual", nodemap=CameraTLStreamNodeMap())
	IIntegerNode!(cam, "StreamBufferCountManual", count, nodemap=CameraTLStreamNodeMap())
	buffercount(cam)
end


"""
	bufferunderrun(::Camera) -> Int

	The number of buffer underruns on the camera stream.
"""
function bufferunderrun(cam::Camera)
	IIntegerNode(cam, "StreamBufferUnderrunCount", nodemap = CameraTLStreamNodeMap())
end


"""
	bufferfailed(::Camera) -> Int

	The number of failed (invalid) buffers on the camera stream.
"""
function bufferfailed(cam::Camera)
	IIntegerNode(cam, "StreamFailedBufferCount", nodemap = CameraTLStreamNodeMap())
end


