
# Spinnaker.jl: wrapper for FLIR/Point Grey Spinnaker SDK
# Copyright (C) 2019 Samuel Powell

# event.jl: functions to control event notification

"""
    supportedeventsources(cam::Camera) -> String[]

    Return all supported event sources.
"""

function supportedeventsources(cam::Camera)  
  possiblesources = [
    "AcquisitionTrigger","AcquisitionStart","AcquisitionEnd","AcquisitionTransferStart","AcquisitionTransferEnd","AcquisitionError", 
    "FrameTrigger","FrameStart","FrameEnd","FrameBurstStart","FrameBurstEnd","FrameTransferStart","FrameTransferEnd", 
    "ExposureStart","ExposureEnd", "Stream0TransferStart","Stream0TransferEnd","Stream0TransferPause","Stream0TransferResume",
    "Stream0TransferBlockStart","Stream0TransferBlockEnd","Stream0TransferBlockTrigger",
    "Stream0TransferBurstStart","Stream0TransferBurstEnd",
    "Stream0TransferOverflow",
    "SequencerSetChange",
    "Counter0Start","Counter0End",
    "Counter1Start","Counter1End",
    "Timer0Start","Timer0End",
    "Timer1Start","Timer1End",
    "Encoder0Stopped","Encoder0Restarted",
    "Encoder1Stopped","Encoder1Restarted",
    "Line0RisingEdge","Line0FallingEdge",
    "Line1RisingEdge","Line1FallingEdge",
    "Line0AnyEdge","LinkTrigger0",
    "Line1AnyEdge","LinkTrigger1",
    "ActionLate",
    "LinkSpeedChange",
    "Error",
    "Test",
    "PrimaryApplicationSwitch"
  ]
  startingsource = eventsource(cam)
  supported = String[]
  for source in possiblesources
    try
      eventsource!(cam,source)
      push!(supported,source)
    catch e
      if !(occursin("SPINNAKER_ERR_INVALID_HANDLE(-1006)",sprint(showerror, e)) || occursin("entry is not readable",sprint(showerror, e)))
        rethrow()
      end
    end
  end
  eventsource!(cam,startingsource)
  return supported
end

"""
	eventsource!(cam::Camera, source::String) -> String

	Set the event source, supported options can be returned using supportedeventsources(cam)
"""
function eventsource!(cam::Camera, source::String)
  set!(SpinEnumNode(cam, "EventSelector"), source)
  eventsource(cam)
end

"""
	eventsource(::Camera) -> String

	Get the event source.
"""
function eventsource(cam::Camera)
	get(SpinEnumNode(cam, "EventSelector"))
end

"""
	eventnotification(::Camera) -> String

	Return whether event notification is enabled
"""
function eventnotification(cam::Camera)
	get(SpinEnumNode(cam, "EventNotification")) == "On"
end

"""
	eventnotification!(::Camera, state::Bool) -> String

	Return whether event notification is enabled
"""
function eventnotification!(cam::Camera, state::Bool)
    str = state ? "On" : "Off"
	set!(SpinEnumNode(cam, "EventNotification"), str)
    eventnotification(cam)
end


### EXPERIMENTAL BELOW HERE


#function registereventcallback(cam::Camera,f::Function)
#  c_f = @cfunction($f, Cvoid, (Cstring,C_NULL))
#  event = spinDeviceEvent(C_NULL)
#  spinDeviceEventCreate(Ref(event),c_f,C_NULL)
#  spinCameraRegisterDeviceEventEx(cam,event,"EventExposureEnd")
#  return event
#end



#typedef void(*spinDeviceEventFunction)(const spinDeviceEventData hEventData, const char* pEventName, void* pUserData);
function printevent(hEventData::spinDeviceEventData, pEventName::Cstring, pUserData::Ptr{Cvoid})::Cvoid
  println("event happened")
end

function test(cam::Camera)
  c_f = @cfunction(printevent, Cvoid, (Ptr{Cvoid}, Cstring, Ref{Cvoid}))
  event = spinDeviceEvent(C_NULL)
  
  #spinDeviceEventCreate(spinDeviceEvent* phDeviceEvent, spinDeviceEventFunction pFunction, void* pUserData);
  spinDeviceEventCreate(Ref{event}, c_f, Ptr{Cvoid})
  
  #spinCameraRegisterDeviceEvent(spinCamera hCamera, spinDeviceEvent hDeviceEvent);
  spinCameraRegisterDeviceEventEx(cam, event, "EventExposureEnd")
  return event
end
  
  
"""
Example c code
NOTE: This code is out of date. Various names and argument requirements have changed

// Create and register ExposureEvent
spinEvent eventExposureEnd = NULL;
error = spinEventCreate(&eventExposureEnd, onSpecificDeviceEvent, NULL);
error = spinCameraRegisterEvent(hCam, eventExposureEnd, "EventExposureEnd");
// Create a function to occur upon specific event occurrences;
//ensure exact same function signature is used

void onSpecificDeviceEvent(const char* pEventName, void* pUserData)
{
    printf("\t// Specific device event %s...\n", pEventName, (char*)pUserData);
}
"""


