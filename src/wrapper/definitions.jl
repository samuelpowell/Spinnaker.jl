# Automatically generated using Clang.jl wrap_c, version 0.0.0


# begin enum _spinLUTSelectorEnums
const _spinLUTSelectorEnums = UInt32
const LUTSelector_LUT1 = 0 |> UInt32
const NUM_LUTSELECTOR = 1 |> UInt32
# end enum _spinLUTSelectorEnums

const spinLUTSelectorEnums = Cvoid

# begin enum _spinExposureModeEnums
const _spinExposureModeEnums = UInt32
const ExposureMode_Timed = 0 |> UInt32
const ExposureMode_TriggerWidth = 1 |> UInt32
const NUM_EXPOSUREMODE = 2 |> UInt32
# end enum _spinExposureModeEnums

const spinExposureModeEnums = Cvoid

# begin enum _spinAcquisitionModeEnums
const _spinAcquisitionModeEnums = UInt32
const AcquisitionMode_Continuous = 0 |> UInt32
const AcquisitionMode_SingleFrame = 1 |> UInt32
const AcquisitionMode_MultiFrame = 2 |> UInt32
const NUM_ACQUISITIONMODE = 3 |> UInt32
# end enum _spinAcquisitionModeEnums

const spinAcquisitionModeEnums = Cvoid

# begin enum _spinTriggerSourceEnums
const _spinTriggerSourceEnums = UInt32
const TriggerSource_Software = 0 |> UInt32
const TriggerSource_Line0 = 1 |> UInt32
const TriggerSource_Line1 = 2 |> UInt32
const TriggerSource_Line2 = 3 |> UInt32
const TriggerSource_Line3 = 4 |> UInt32
const TriggerSource_UserOutput0 = 5 |> UInt32
const TriggerSource_UserOutput1 = 6 |> UInt32
const TriggerSource_UserOutput2 = 7 |> UInt32
const TriggerSource_UserOutput3 = 8 |> UInt32
const TriggerSource_Counter0Start = 9 |> UInt32
const TriggerSource_Counter1Start = 10 |> UInt32
const TriggerSource_Counter0End = 11 |> UInt32
const TriggerSource_Counter1End = 12 |> UInt32
const TriggerSource_LogicBlock0 = 13 |> UInt32
const TriggerSource_LogicBlock1 = 14 |> UInt32
const TriggerSource_Action0 = 15 |> UInt32
const NUM_TRIGGERSOURCE = 16 |> UInt32
# end enum _spinTriggerSourceEnums

const spinTriggerSourceEnums = Cvoid

# begin enum _spinTriggerActivationEnums
const _spinTriggerActivationEnums = UInt32
const TriggerActivation_LevelLow = 0 |> UInt32
const TriggerActivation_LevelHigh = 1 |> UInt32
const TriggerActivation_FallingEdge = 2 |> UInt32
const TriggerActivation_RisingEdge = 3 |> UInt32
const TriggerActivation_AnyEdge = 4 |> UInt32
const NUM_TRIGGERACTIVATION = 5 |> UInt32
# end enum _spinTriggerActivationEnums

const spinTriggerActivationEnums = Cvoid

# begin enum _spinSensorShutterModeEnums
const _spinSensorShutterModeEnums = UInt32
const SensorShutterMode_Global = 0 |> UInt32
const SensorShutterMode_Rolling = 1 |> UInt32
const SensorShutterMode_GlobalReset = 2 |> UInt32
const NUM_SENSORSHUTTERMODE = 3 |> UInt32
# end enum _spinSensorShutterModeEnums

const spinSensorShutterModeEnums = Cvoid

# begin enum _spinTriggerModeEnums
const _spinTriggerModeEnums = UInt32
const TriggerMode_Off = 0 |> UInt32
const TriggerMode_On = 1 |> UInt32
const NUM_TRIGGERMODE = 2 |> UInt32
# end enum _spinTriggerModeEnums

const spinTriggerModeEnums = Cvoid

# begin enum _spinTriggerOverlapEnums
const _spinTriggerOverlapEnums = UInt32
const TriggerOverlap_Off = 0 |> UInt32
const TriggerOverlap_ReadOut = 1 |> UInt32
const TriggerOverlap_PreviousFrame = 2 |> UInt32
const NUM_TRIGGEROVERLAP = 3 |> UInt32
# end enum _spinTriggerOverlapEnums

const spinTriggerOverlapEnums = Cvoid

# begin enum _spinTriggerSelectorEnums
const _spinTriggerSelectorEnums = UInt32
const TriggerSelector_AcquisitionStart = 0 |> UInt32
const TriggerSelector_FrameStart = 1 |> UInt32
const TriggerSelector_FrameBurstStart = 2 |> UInt32
const NUM_TRIGGERSELECTOR = 3 |> UInt32
# end enum _spinTriggerSelectorEnums

const spinTriggerSelectorEnums = Cvoid

# begin enum _spinExposureAutoEnums
const _spinExposureAutoEnums = UInt32
const ExposureAuto_Off = 0 |> UInt32
const ExposureAuto_Once = 1 |> UInt32
const ExposureAuto_Continuous = 2 |> UInt32
const NUM_EXPOSUREAUTO = 3 |> UInt32
# end enum _spinExposureAutoEnums

const spinExposureAutoEnums = Cvoid

# begin enum _spinEventSelectorEnums
const _spinEventSelectorEnums = UInt32
const EventSelector_Error = 0 |> UInt32
const EventSelector_ExposureEnd = 1 |> UInt32
const EventSelector_SerialPortReceive = 2 |> UInt32
const NUM_EVENTSELECTOR = 3 |> UInt32
# end enum _spinEventSelectorEnums

const spinEventSelectorEnums = Cvoid

# begin enum _spinEventNotificationEnums
const _spinEventNotificationEnums = UInt32
const EventNotification_On = 0 |> UInt32
const EventNotification_Off = 1 |> UInt32
const NUM_EVENTNOTIFICATION = 2 |> UInt32
# end enum _spinEventNotificationEnums

const spinEventNotificationEnums = Cvoid

# begin enum _spinLogicBlockSelectorEnums
const _spinLogicBlockSelectorEnums = UInt32
const LogicBlockSelector_LogicBlock0 = 0 |> UInt32
const LogicBlockSelector_LogicBlock1 = 1 |> UInt32
const NUM_LOGICBLOCKSELECTOR = 2 |> UInt32
# end enum _spinLogicBlockSelectorEnums

const spinLogicBlockSelectorEnums = Cvoid

# begin enum _spinLogicBlockLUTInputActivationEnums
const _spinLogicBlockLUTInputActivationEnums = UInt32
const LogicBlockLUTInputActivation_LevelLow = 0 |> UInt32
const LogicBlockLUTInputActivation_LevelHigh = 1 |> UInt32
const LogicBlockLUTInputActivation_FallingEdge = 2 |> UInt32
const LogicBlockLUTInputActivation_RisingEdge = 3 |> UInt32
const LogicBlockLUTInputActivation_AnyEdge = 4 |> UInt32
const NUM_LOGICBLOCKLUTINPUTACTIVATION = 5 |> UInt32
# end enum _spinLogicBlockLUTInputActivationEnums

const spinLogicBlockLUTInputActivationEnums = Cvoid

# begin enum _spinLogicBlockLUTInputSelectorEnums
const _spinLogicBlockLUTInputSelectorEnums = UInt32
const LogicBlockLUTInputSelector_Input0 = 0 |> UInt32
const LogicBlockLUTInputSelector_Input1 = 1 |> UInt32
const LogicBlockLUTInputSelector_Input2 = 2 |> UInt32
const LogicBlockLUTInputSelector_Input3 = 3 |> UInt32
const NUM_LOGICBLOCKLUTINPUTSELECTOR = 4 |> UInt32
# end enum _spinLogicBlockLUTInputSelectorEnums

const spinLogicBlockLUTInputSelectorEnums = Cvoid

# begin enum _spinLogicBlockLUTInputSourceEnums
const _spinLogicBlockLUTInputSourceEnums = UInt32
const LogicBlockLUTInputSource_Zero = 0 |> UInt32
const LogicBlockLUTInputSource_Line0 = 1 |> UInt32
const LogicBlockLUTInputSource_Line1 = 2 |> UInt32
const LogicBlockLUTInputSource_Line2 = 3 |> UInt32
const LogicBlockLUTInputSource_Line3 = 4 |> UInt32
const LogicBlockLUTInputSource_UserOutput0 = 5 |> UInt32
const LogicBlockLUTInputSource_UserOutput1 = 6 |> UInt32
const LogicBlockLUTInputSource_UserOutput2 = 7 |> UInt32
const LogicBlockLUTInputSource_UserOutput3 = 8 |> UInt32
const LogicBlockLUTInputSource_Counter0Start = 9 |> UInt32
const LogicBlockLUTInputSource_Counter1Start = 10 |> UInt32
const LogicBlockLUTInputSource_Counter0End = 11 |> UInt32
const LogicBlockLUTInputSource_Counter1End = 12 |> UInt32
const LogicBlockLUTInputSource_LogicBlock0 = 13 |> UInt32
const LogicBlockLUTInputSource_LogicBlock1 = 14 |> UInt32
const LogicBlockLUTInputSource_ExposureStart = 15 |> UInt32
const LogicBlockLUTInputSource_ExposureEnd = 16 |> UInt32
const LogicBlockLUTInputSource_FrameTriggerWait = 17 |> UInt32
const LogicBlockLUTInputSource_AcquisitionActive = 18 |> UInt32
const NUM_LOGICBLOCKLUTINPUTSOURCE = 19 |> UInt32
# end enum _spinLogicBlockLUTInputSourceEnums

const spinLogicBlockLUTInputSourceEnums = Cvoid

# begin enum _spinLogicBlockLUTSelectorEnums
const _spinLogicBlockLUTSelectorEnums = UInt32
const LogicBlockLUTSelector_Value = 0 |> UInt32
const LogicBlockLUTSelector_Enable = 1 |> UInt32
const NUM_LOGICBLOCKLUTSELECTOR = 2 |> UInt32
# end enum _spinLogicBlockLUTSelectorEnums

const spinLogicBlockLUTSelectorEnums = Cvoid

# begin enum _spinColorTransformationSelectorEnums
const _spinColorTransformationSelectorEnums = UInt32
const ColorTransformationSelector_RGBtoRGB = 0 |> UInt32
const ColorTransformationSelector_RGBtoYUV = 1 |> UInt32
const NUM_COLORTRANSFORMATIONSELECTOR = 2 |> UInt32
# end enum _spinColorTransformationSelectorEnums

const spinColorTransformationSelectorEnums = Cvoid

# begin enum _spinRgbTransformLightSourceEnums
const _spinRgbTransformLightSourceEnums = UInt32
const RgbTransformLightSource_General = 0 |> UInt32
const RgbTransformLightSource_Tungsten2800K = 1 |> UInt32
const RgbTransformLightSource_WarmFluorescent3000K = 2 |> UInt32
const RgbTransformLightSource_CoolFluorescent4000K = 3 |> UInt32
const RgbTransformLightSource_Daylight5000K = 4 |> UInt32
const RgbTransformLightSource_Cloudy6500K = 5 |> UInt32
const RgbTransformLightSource_Shade8000K = 6 |> UInt32
const RgbTransformLightSource_Custom = 7 |> UInt32
const NUM_RGBTRANSFORMLIGHTSOURCE = 8 |> UInt32
# end enum _spinRgbTransformLightSourceEnums

const spinRgbTransformLightSourceEnums = Cvoid

# begin enum _spinColorTransformationValueSelectorEnums
const _spinColorTransformationValueSelectorEnums = UInt32
const ColorTransformationValueSelector_Gain00 = 0 |> UInt32
const ColorTransformationValueSelector_Gain01 = 1 |> UInt32
const ColorTransformationValueSelector_Gain02 = 2 |> UInt32
const ColorTransformationValueSelector_Gain10 = 3 |> UInt32
const ColorTransformationValueSelector_Gain11 = 4 |> UInt32
const ColorTransformationValueSelector_Gain12 = 5 |> UInt32
const ColorTransformationValueSelector_Gain20 = 6 |> UInt32
const ColorTransformationValueSelector_Gain21 = 7 |> UInt32
const ColorTransformationValueSelector_Gain22 = 8 |> UInt32
const ColorTransformationValueSelector_Offset0 = 9 |> UInt32
const ColorTransformationValueSelector_Offset1 = 10 |> UInt32
const ColorTransformationValueSelector_Offset2 = 11 |> UInt32
const NUM_COLORTRANSFORMATIONVALUESELECTOR = 12 |> UInt32
# end enum _spinColorTransformationValueSelectorEnums

const spinColorTransformationValueSelectorEnums = Cvoid

# begin enum _spinDeviceRegistersEndiannessEnums
const _spinDeviceRegistersEndiannessEnums = UInt32
const DeviceRegistersEndianness_Little = 0 |> UInt32
const DeviceRegistersEndianness_Big = 1 |> UInt32
const NUM_DEVICEREGISTERSENDIANNESS = 2 |> UInt32
# end enum _spinDeviceRegistersEndiannessEnums

const spinDeviceRegistersEndiannessEnums = Cvoid

# begin enum _spinDeviceScanTypeEnums
const _spinDeviceScanTypeEnums = UInt32
const DeviceScanType_Areascan = 0 |> UInt32
const NUM_DEVICESCANTYPE = 1 |> UInt32
# end enum _spinDeviceScanTypeEnums

const spinDeviceScanTypeEnums = Cvoid

# begin enum _spinDeviceCharacterSetEnums
const _spinDeviceCharacterSetEnums = UInt32
const DeviceCharacterSet_UTF8 = 0 |> UInt32
const DeviceCharacterSet_ASCII = 1 |> UInt32
const NUM_DEVICECHARACTERSET = 2 |> UInt32
# end enum _spinDeviceCharacterSetEnums

const spinDeviceCharacterSetEnums = Cvoid

# begin enum _spinDeviceTLTypeEnums
const _spinDeviceTLTypeEnums = UInt32
const DeviceTLType_GigEVision = 0 |> UInt32
const DeviceTLType_CameraLink = 1 |> UInt32
const DeviceTLType_CameraLinkHS = 2 |> UInt32
const DeviceTLType_CoaXPress = 3 |> UInt32
const DeviceTLType_USB3Vision = 4 |> UInt32
const DeviceTLType_Custom = 5 |> UInt32
const NUM_DEVICETLTYPE = 6 |> UInt32
# end enum _spinDeviceTLTypeEnums

const spinDeviceTLTypeEnums = Cvoid

# begin enum _spinDevicePowerSupplySelectorEnums
const _spinDevicePowerSupplySelectorEnums = UInt32
const DevicePowerSupplySelector_External = 0 |> UInt32
const NUM_DEVICEPOWERSUPPLYSELECTOR = 1 |> UInt32
# end enum _spinDevicePowerSupplySelectorEnums

const spinDevicePowerSupplySelectorEnums = Cvoid

# begin enum _spinDeviceTemperatureSelectorEnums
const _spinDeviceTemperatureSelectorEnums = UInt32
const DeviceTemperatureSelector_Sensor = 0 |> UInt32
const NUM_DEVICETEMPERATURESELECTOR = 1 |> UInt32
# end enum _spinDeviceTemperatureSelectorEnums

const spinDeviceTemperatureSelectorEnums = Cvoid

# begin enum _spinDeviceIndicatorModeEnums
const _spinDeviceIndicatorModeEnums = UInt32
const DeviceIndicatorMode_Inactive = 0 |> UInt32
const DeviceIndicatorMode_Active = 1 |> UInt32
const DeviceIndicatorMode_ErrorStatus = 2 |> UInt32
const NUM_DEVICEINDICATORMODE = 3 |> UInt32
# end enum _spinDeviceIndicatorModeEnums

const spinDeviceIndicatorModeEnums = Cvoid

# begin enum _spinAutoExposureControlPriorityEnums
const _spinAutoExposureControlPriorityEnums = UInt32
const AutoExposureControlPriority_Gain = 0 |> UInt32
const AutoExposureControlPriority_ExposureTime = 1 |> UInt32
const NUM_AUTOEXPOSURECONTROLPRIORITY = 2 |> UInt32
# end enum _spinAutoExposureControlPriorityEnums

const spinAutoExposureControlPriorityEnums = Cvoid

# begin enum _spinAutoExposureMeteringModeEnums
const _spinAutoExposureMeteringModeEnums = UInt32
const AutoExposureMeteringMode_Average = 0 |> UInt32
const AutoExposureMeteringMode_Spot = 1 |> UInt32
const AutoExposureMeteringMode_Partial = 2 |> UInt32
const AutoExposureMeteringMode_CenterWeighted = 3 |> UInt32
const AutoExposureMeteringMode_HistgramPeak = 4 |> UInt32
const NUM_AUTOEXPOSUREMETERINGMODE = 5 |> UInt32
# end enum _spinAutoExposureMeteringModeEnums

const spinAutoExposureMeteringModeEnums = Cvoid

# begin enum _spinBalanceWhiteAutoProfileEnums
const _spinBalanceWhiteAutoProfileEnums = UInt32
const BalanceWhiteAutoProfile_Indoor = 0 |> UInt32
const BalanceWhiteAutoProfile_Outdoor = 1 |> UInt32
const NUM_BALANCEWHITEAUTOPROFILE = 2 |> UInt32
# end enum _spinBalanceWhiteAutoProfileEnums

const spinBalanceWhiteAutoProfileEnums = Cvoid

# begin enum _spinAutoAlgorithmSelectorEnums
const _spinAutoAlgorithmSelectorEnums = UInt32
const AutoAlgorithmSelector_Awb = 0 |> UInt32
const AutoAlgorithmSelector_Ae = 1 |> UInt32
const NUM_AUTOALGORITHMSELECTOR = 2 |> UInt32
# end enum _spinAutoAlgorithmSelectorEnums

const spinAutoAlgorithmSelectorEnums = Cvoid

# begin enum _spinAutoExposureTargetGreyValueAutoEnums
const _spinAutoExposureTargetGreyValueAutoEnums = UInt32
const AutoExposureTargetGreyValueAuto_Off = 0 |> UInt32
const AutoExposureTargetGreyValueAuto_Continuous = 1 |> UInt32
const NUM_AUTOEXPOSURETARGETGREYVALUEAUTO = 2 |> UInt32
# end enum _spinAutoExposureTargetGreyValueAutoEnums

const spinAutoExposureTargetGreyValueAutoEnums = Cvoid

# begin enum _spinAutoExposureLightingModeEnums
const _spinAutoExposureLightingModeEnums = UInt32
const AutoExposureLightingMode_AutoDetect = 0 |> UInt32
const AutoExposureLightingMode_Backlight = 1 |> UInt32
const AutoExposureLightingMode_Frontlight = 2 |> UInt32
const AutoExposureLightingMode_Normal = 3 |> UInt32
const NUM_AUTOEXPOSURELIGHTINGMODE = 4 |> UInt32
# end enum _spinAutoExposureLightingModeEnums

const spinAutoExposureLightingModeEnums = Cvoid

# begin enum _spinGevIEEE1588StatusEnums
const _spinGevIEEE1588StatusEnums = UInt32
const GevIEEE1588Status_Initializing = 0 |> UInt32
const GevIEEE1588Status_Faulty = 1 |> UInt32
const GevIEEE1588Status_Disabled = 2 |> UInt32
const GevIEEE1588Status_Listening = 3 |> UInt32
const GevIEEE1588Status_PreMaster = 4 |> UInt32
const GevIEEE1588Status_Master = 5 |> UInt32
const GevIEEE1588Status_Passive = 6 |> UInt32
const GevIEEE1588Status_Uncalibrated = 7 |> UInt32
const GevIEEE1588Status_Slave = 8 |> UInt32
const NUM_GEVIEEE1588STATUS = 9 |> UInt32
# end enum _spinGevIEEE1588StatusEnums

const spinGevIEEE1588StatusEnums = Cvoid

# begin enum _spinGevIEEE1588ModeEnums
const _spinGevIEEE1588ModeEnums = UInt32
const GevIEEE1588Mode_Auto = 0 |> UInt32
const GevIEEE1588Mode_SlaveOnly = 1 |> UInt32
const NUM_GEVIEEE1588MODE = 2 |> UInt32
# end enum _spinGevIEEE1588ModeEnums

const spinGevIEEE1588ModeEnums = Cvoid

# begin enum _spinGevIEEE1588ClockAccuracyEnums
const _spinGevIEEE1588ClockAccuracyEnums = UInt32
const GevIEEE1588ClockAccuracy_Unknown = 0 |> UInt32
const NUM_GEVIEEE1588CLOCKACCURACY = 1 |> UInt32
# end enum _spinGevIEEE1588ClockAccuracyEnums

const spinGevIEEE1588ClockAccuracyEnums = Cvoid

# begin enum _spinGevCCPEnums
const _spinGevCCPEnums = UInt32
const GevCCP_OpenAccess = 0 |> UInt32
const GevCCP_ExclusiveAccess = 1 |> UInt32
const GevCCP_ControlAccess = 2 |> UInt32
const NUM_GEVCCP = 3 |> UInt32
# end enum _spinGevCCPEnums

const spinGevCCPEnums = Cvoid

# begin enum _spinGevSupportedOptionSelectorEnums
const _spinGevSupportedOptionSelectorEnums = UInt32
const GevSupportedOptionSelector_UserDefinedName = 0 |> UInt32
const GevSupportedOptionSelector_SerialNumber = 1 |> UInt32
const GevSupportedOptionSelector_HeartbeatDisable = 2 |> UInt32
const GevSupportedOptionSelector_LinkSpeed = 3 |> UInt32
const GevSupportedOptionSelector_CCPApplicationSocket = 4 |> UInt32
const GevSupportedOptionSelector_ManifestTable = 5 |> UInt32
const GevSupportedOptionSelector_TestData = 6 |> UInt32
const GevSupportedOptionSelector_DiscoveryAckDelay = 7 |> UInt32
const GevSupportedOptionSelector_DiscoveryAckDelayWritable = 8 |> UInt32
const GevSupportedOptionSelector_ExtendedStatusCodes = 9 |> UInt32
const GevSupportedOptionSelector_Action = 10 |> UInt32
const GevSupportedOptionSelector_PendingAck = 11 |> UInt32
const GevSupportedOptionSelector_EventData = 12 |> UInt32
const GevSupportedOptionSelector_Event = 13 |> UInt32
const GevSupportedOptionSelector_PacketResend = 14 |> UInt32
const GevSupportedOptionSelector_WriteMem = 15 |> UInt32
const GevSupportedOptionSelector_CommandsConcatenation = 16 |> UInt32
const GevSupportedOptionSelector_IPConfigurationLLA = 17 |> UInt32
const GevSupportedOptionSelector_IPConfigurationDHCP = 18 |> UInt32
const GevSupportedOptionSelector_IPConfigurationPersistentIP = 19 |> UInt32
const GevSupportedOptionSelector_StreamChannelSourceSocket = 20 |> UInt32
const GevSupportedOptionSelector_MessageChannelSourceSocket = 21 |> UInt32
const NUM_GEVSUPPORTEDOPTIONSELECTOR = 22 |> UInt32
# end enum _spinGevSupportedOptionSelectorEnums

const spinGevSupportedOptionSelectorEnums = Cvoid

# begin enum _spinBlackLevelSelectorEnums
const _spinBlackLevelSelectorEnums = UInt32
const BlackLevelSelector_All = 0 |> UInt32
const BlackLevelSelector_Analog = 1 |> UInt32
const BlackLevelSelector_Digital = 2 |> UInt32
const NUM_BLACKLEVELSELECTOR = 3 |> UInt32
# end enum _spinBlackLevelSelectorEnums

const spinBlackLevelSelectorEnums = Cvoid

# begin enum _spinBalanceWhiteAutoEnums
const _spinBalanceWhiteAutoEnums = UInt32
const BalanceWhiteAuto_Off = 0 |> UInt32
const BalanceWhiteAuto_Once = 1 |> UInt32
const BalanceWhiteAuto_Continuous = 2 |> UInt32
const NUM_BALANCEWHITEAUTO = 3 |> UInt32
# end enum _spinBalanceWhiteAutoEnums

const spinBalanceWhiteAutoEnums = Cvoid

# begin enum _spinGainAutoEnums
const _spinGainAutoEnums = UInt32
const GainAuto_Off = 0 |> UInt32
const GainAuto_Once = 1 |> UInt32
const GainAuto_Continuous = 2 |> UInt32
const NUM_GAINAUTO = 3 |> UInt32
# end enum _spinGainAutoEnums

const spinGainAutoEnums = Cvoid

# begin enum _spinBalanceRatioSelectorEnums
const _spinBalanceRatioSelectorEnums = UInt32
const BalanceRatioSelector_Red = 0 |> UInt32
const BalanceRatioSelector_Blue = 1 |> UInt32
const NUM_BALANCERATIOSELECTOR = 2 |> UInt32
# end enum _spinBalanceRatioSelectorEnums

const spinBalanceRatioSelectorEnums = Cvoid

# begin enum _spinGainSelectorEnums
const _spinGainSelectorEnums = UInt32
const GainSelector_All = 0 |> UInt32
const NUM_GAINSELECTOR = 1 |> UInt32
# end enum _spinGainSelectorEnums

const spinGainSelectorEnums = Cvoid

# begin enum _spinDefectCorrectionModeEnums
const _spinDefectCorrectionModeEnums = UInt32
const DefectCorrectionMode_Average = 0 |> UInt32
const DefectCorrectionMode_Highlight = 1 |> UInt32
const DefectCorrectionMode_Zero = 2 |> UInt32
const NUM_DEFECTCORRECTIONMODE = 3 |> UInt32
# end enum _spinDefectCorrectionModeEnums

const spinDefectCorrectionModeEnums = Cvoid

# begin enum _spinUserSetSelectorEnums
const _spinUserSetSelectorEnums = UInt32
const UserSetSelector_Default = 0 |> UInt32
const UserSetSelector_UserSet0 = 1 |> UInt32
const UserSetSelector_UserSet1 = 2 |> UInt32
const NUM_USERSETSELECTOR = 3 |> UInt32
# end enum _spinUserSetSelectorEnums

const spinUserSetSelectorEnums = Cvoid

# begin enum _spinUserSetDefaultEnums
const _spinUserSetDefaultEnums = UInt32
const UserSetDefault_Default = 0 |> UInt32
const UserSetDefault_UserSet0 = 1 |> UInt32
const UserSetDefault_UserSet1 = 2 |> UInt32
const NUM_USERSETDEFAULT = 3 |> UInt32
# end enum _spinUserSetDefaultEnums

const spinUserSetDefaultEnums = Cvoid

# begin enum _spinSerialPortBaudRateEnums
const _spinSerialPortBaudRateEnums = UInt32
const SerialPortBaudRate_Baud300 = 0 |> UInt32
const SerialPortBaudRate_Baud600 = 1 |> UInt32
const SerialPortBaudRate_Baud1200 = 2 |> UInt32
const SerialPortBaudRate_Baud2400 = 3 |> UInt32
const SerialPortBaudRate_Baud4800 = 4 |> UInt32
const SerialPortBaudRate_Baud9600 = 5 |> UInt32
const SerialPortBaudRate_Baud14400 = 6 |> UInt32
const SerialPortBaudRate_Baud19200 = 7 |> UInt32
const SerialPortBaudRate_Baud38400 = 8 |> UInt32
const SerialPortBaudRate_Baud57600 = 9 |> UInt32
const SerialPortBaudRate_Baud115200 = 10 |> UInt32
const SerialPortBaudRate_Baud230400 = 11 |> UInt32
const SerialPortBaudRate_Baud460800 = 12 |> UInt32
const SerialPortBaudRate_Baud921600 = 13 |> UInt32
const NUM_SERIALPORTBAUDRATE = 14 |> UInt32
# end enum _spinSerialPortBaudRateEnums

const spinSerialPortBaudRateEnums = Cvoid

# begin enum _spinSerialPortParityEnums
const _spinSerialPortParityEnums = UInt32
const SerialPortParity_None = 0 |> UInt32
const SerialPortParity_Odd = 1 |> UInt32
const SerialPortParity_Even = 2 |> UInt32
const SerialPortParity_Mark = 3 |> UInt32
const SerialPortParity_Space = 4 |> UInt32
const NUM_SERIALPORTPARITY = 5 |> UInt32
# end enum _spinSerialPortParityEnums

const spinSerialPortParityEnums = Cvoid

# begin enum _spinSerialPortSelectorEnums
const _spinSerialPortSelectorEnums = UInt32
const SerialPortSelector_SerialPort0 = 0 |> UInt32
const NUM_SERIALPORTSELECTOR = 1 |> UInt32
# end enum _spinSerialPortSelectorEnums

const spinSerialPortSelectorEnums = Cvoid

# begin enum _spinSerialPortStopBitsEnums
const _spinSerialPortStopBitsEnums = UInt32
const SerialPortStopBits_Bits1 = 0 |> UInt32
const SerialPortStopBits_Bits1AndAHalf = 1 |> UInt32
const SerialPortStopBits_Bits2 = 2 |> UInt32
const NUM_SERIALPORTSTOPBITS = 3 |> UInt32
# end enum _spinSerialPortStopBitsEnums

const spinSerialPortStopBitsEnums = Cvoid

# begin enum _spinSerialPortSourceEnums
const _spinSerialPortSourceEnums = UInt32
const SerialPortSource_Line0 = 0 |> UInt32
const SerialPortSource_Line1 = 1 |> UInt32
const SerialPortSource_Line2 = 2 |> UInt32
const SerialPortSource_Line3 = 3 |> UInt32
const SerialPortSource_Off = 4 |> UInt32
const NUM_SERIALPORTSOURCE = 5 |> UInt32
# end enum _spinSerialPortSourceEnums

const spinSerialPortSourceEnums = Cvoid

# begin enum _spinSequencerModeEnums
const _spinSequencerModeEnums = UInt32
const SequencerMode_Off = 0 |> UInt32
const SequencerMode_On = 1 |> UInt32
const NUM_SEQUENCERMODE = 2 |> UInt32
# end enum _spinSequencerModeEnums

const spinSequencerModeEnums = Cvoid

# begin enum _spinSequencerConfigurationValidEnums
const _spinSequencerConfigurationValidEnums = UInt32
const SequencerConfigurationValid_No = 0 |> UInt32
const SequencerConfigurationValid_Yes = 1 |> UInt32
const NUM_SEQUENCERCONFIGURATIONVALID = 2 |> UInt32
# end enum _spinSequencerConfigurationValidEnums

const spinSequencerConfigurationValidEnums = Cvoid

# begin enum _spinSequencerSetValidEnums
const _spinSequencerSetValidEnums = UInt32
const SequencerSetValid_No = 0 |> UInt32
const SequencerSetValid_Yes = 1 |> UInt32
const NUM_SEQUENCERSETVALID = 2 |> UInt32
# end enum _spinSequencerSetValidEnums

const spinSequencerSetValidEnums = Cvoid

# begin enum _spinSequencerTriggerActivationEnums
const _spinSequencerTriggerActivationEnums = UInt32
const SequencerTriggerActivation_RisingEdge = 0 |> UInt32
const SequencerTriggerActivation_FallingEdge = 1 |> UInt32
const SequencerTriggerActivation_AnyEdge = 2 |> UInt32
const SequencerTriggerActivation_LevelHigh = 3 |> UInt32
const SequencerTriggerActivation_LevelLow = 4 |> UInt32
const NUM_SEQUENCERTRIGGERACTIVATION = 5 |> UInt32
# end enum _spinSequencerTriggerActivationEnums

const spinSequencerTriggerActivationEnums = Cvoid

# begin enum _spinSequencerConfigurationModeEnums
const _spinSequencerConfigurationModeEnums = UInt32
const SequencerConfigurationMode_Off = 0 |> UInt32
const SequencerConfigurationMode_On = 1 |> UInt32
const NUM_SEQUENCERCONFIGURATIONMODE = 2 |> UInt32
# end enum _spinSequencerConfigurationModeEnums

const spinSequencerConfigurationModeEnums = Cvoid

# begin enum _spinSequencerTriggerSourceEnums
const _spinSequencerTriggerSourceEnums = UInt32
const SequencerTriggerSource_Off = 0 |> UInt32
const SequencerTriggerSource_FrameStart = 1 |> UInt32
const NUM_SEQUENCERTRIGGERSOURCE = 2 |> UInt32
# end enum _spinSequencerTriggerSourceEnums

const spinSequencerTriggerSourceEnums = Cvoid

# begin enum _spinTransferQueueModeEnums
const _spinTransferQueueModeEnums = UInt32
const TransferQueueMode_FirstInFirstOut = 0 |> UInt32
const NUM_TRANSFERQUEUEMODE = 1 |> UInt32
# end enum _spinTransferQueueModeEnums

const spinTransferQueueModeEnums = Cvoid

# begin enum _spinTransferOperationModeEnums
const _spinTransferOperationModeEnums = UInt32
const TransferOperationMode_Continuous = 0 |> UInt32
const TransferOperationMode_MultiBlock = 1 |> UInt32
const NUM_TRANSFEROPERATIONMODE = 2 |> UInt32
# end enum _spinTransferOperationModeEnums

const spinTransferOperationModeEnums = Cvoid

# begin enum _spinTransferControlModeEnums
const _spinTransferControlModeEnums = UInt32
const TransferControlMode_Basic = 0 |> UInt32
const TransferControlMode_Automatic = 1 |> UInt32
const TransferControlMode_UserControlled = 2 |> UInt32
const NUM_TRANSFERCONTROLMODE = 3 |> UInt32
# end enum _spinTransferControlModeEnums

const spinTransferControlModeEnums = Cvoid

# begin enum _spinChunkGainSelectorEnums
const _spinChunkGainSelectorEnums = UInt32
const ChunkGainSelector_All = 0 |> UInt32
const ChunkGainSelector_Red = 1 |> UInt32
const ChunkGainSelector_Green = 2 |> UInt32
const ChunkGainSelector_Blue = 3 |> UInt32
const NUM_CHUNKGAINSELECTOR = 4 |> UInt32
# end enum _spinChunkGainSelectorEnums

const spinChunkGainSelectorEnums = Cvoid

# begin enum _spinChunkSelectorEnums
const _spinChunkSelectorEnums = UInt32
const ChunkSelector_Image = 0 |> UInt32
const ChunkSelector_CRC = 1 |> UInt32
const ChunkSelector_FrameID = 2 |> UInt32
const ChunkSelector_OffsetX = 3 |> UInt32
const ChunkSelector_OffsetY = 4 |> UInt32
const ChunkSelector_Width = 5 |> UInt32
const ChunkSelector_Height = 6 |> UInt32
const ChunkSelector_ExposureTime = 7 |> UInt32
const ChunkSelector_Gain = 8 |> UInt32
const ChunkSelector_BlackLevel = 9 |> UInt32
const ChunkSelector_PixelFormat = 10 |> UInt32
const ChunkSelector_Timestamp = 11 |> UInt32
const ChunkSelector_SequencerSetActive = 12 |> UInt32
const ChunkSelector_SerialData = 13 |> UInt32
const ChunkSelector_ExposureEndLineStatusAll = 14 |> UInt32
const NUM_CHUNKSELECTOR = 15 |> UInt32
# end enum _spinChunkSelectorEnums

const spinChunkSelectorEnums = Cvoid

# begin enum _spinChunkBlackLevelSelectorEnums
const _spinChunkBlackLevelSelectorEnums = UInt32
const ChunkBlackLevelSelector_All = 0 |> UInt32
const NUM_CHUNKBLACKLEVELSELECTOR = 1 |> UInt32
# end enum _spinChunkBlackLevelSelectorEnums

const spinChunkBlackLevelSelectorEnums = Cvoid

# begin enum _spinChunkPixelFormatEnums
const _spinChunkPixelFormatEnums = UInt32
const ChunkPixelFormat_Mono8 = 0 |> UInt32
const ChunkPixelFormat_Mono12Packed = 1 |> UInt32
const ChunkPixelFormat_Mono16 = 2 |> UInt32
const ChunkPixelFormat_RGB8Packed = 3 |> UInt32
const ChunkPixelFormat_YUV422Packed = 4 |> UInt32
const ChunkPixelFormat_BayerGR8 = 5 |> UInt32
const ChunkPixelFormat_BayerRG8 = 6 |> UInt32
const ChunkPixelFormat_BayerGB8 = 7 |> UInt32
const ChunkPixelFormat_BayerBG8 = 8 |> UInt32
const ChunkPixelFormat_YCbCr601_422_8_CbYCrY = 9 |> UInt32
const NUM_CHUNKPIXELFORMAT = 10 |> UInt32
# end enum _spinChunkPixelFormatEnums

const spinChunkPixelFormatEnums = Cvoid

# begin enum _spinFileOperationStatusEnums
const _spinFileOperationStatusEnums = UInt32
const FileOperationStatus_Success = 0 |> UInt32
const FileOperationStatus_Failure = 1 |> UInt32
const FileOperationStatus_Overflow = 2 |> UInt32
const NUM_FILEOPERATIONSTATUS = 3 |> UInt32
# end enum _spinFileOperationStatusEnums

const spinFileOperationStatusEnums = Cvoid

# begin enum _spinFileOpenModeEnums
const _spinFileOpenModeEnums = UInt32
const FileOpenMode_Read = 0 |> UInt32
const FileOpenMode_Write = 1 |> UInt32
const FileOpenMode_ReadWrite = 2 |> UInt32
const NUM_FILEOPENMODE = 3 |> UInt32
# end enum _spinFileOpenModeEnums

const spinFileOpenModeEnums = Cvoid

# begin enum _spinFileOperationSelectorEnums
const _spinFileOperationSelectorEnums = UInt32
const FileOperationSelector_Open = 0 |> UInt32
const FileOperationSelector_Close = 1 |> UInt32
const FileOperationSelector_Read = 2 |> UInt32
const FileOperationSelector_Write = 3 |> UInt32
const FileOperationSelector_Delete = 4 |> UInt32
const NUM_FILEOPERATIONSELECTOR = 5 |> UInt32
# end enum _spinFileOperationSelectorEnums

const spinFileOperationSelectorEnums = Cvoid

# begin enum _spinFileSelectorEnums
const _spinFileSelectorEnums = UInt32
const FileSelector_UserSetDefault = 0 |> UInt32
const FileSelector_UserSet0 = 1 |> UInt32
const FileSelector_UserSet1 = 2 |> UInt32
const FileSelector_UserFile1 = 3 |> UInt32
const FileSelector_SerialPort0 = 4 |> UInt32
const NUM_FILESELECTOR = 5 |> UInt32
# end enum _spinFileSelectorEnums

const spinFileSelectorEnums = Cvoid

# begin enum _spinBinningSelectorEnums
const _spinBinningSelectorEnums = UInt32
const BinningSelector_All = 0 |> UInt32
const BinningSelector_Sensor = 1 |> UInt32
const BinningSelector_ISP = 2 |> UInt32
const NUM_BINNINGSELECTOR = 3 |> UInt32
# end enum _spinBinningSelectorEnums

const spinBinningSelectorEnums = Cvoid

# begin enum _spinTestPatternGeneratorSelectorEnums
const _spinTestPatternGeneratorSelectorEnums = UInt32
const TestPatternGeneratorSelector_Sensor = 0 |> UInt32
const TestPatternGeneratorSelector_PipelineStart = 1 |> UInt32
const NUM_TESTPATTERNGENERATORSELECTOR = 2 |> UInt32
# end enum _spinTestPatternGeneratorSelectorEnums

const spinTestPatternGeneratorSelectorEnums = Cvoid

# begin enum _spinTestPatternEnums
const _spinTestPatternEnums = UInt32
const TestPattern_Off = 0 |> UInt32
const TestPattern_Increment = 1 |> UInt32
const TestPattern_SensorTestPattern = 2 |> UInt32
const NUM_TESTPATTERN = 3 |> UInt32
# end enum _spinTestPatternEnums

const spinTestPatternEnums = Cvoid

# begin enum _spinPixelColorFilterEnums
const _spinPixelColorFilterEnums = UInt32
const PixelColorFilter_None = 0 |> UInt32
const PixelColorFilter_BayerRG = 1 |> UInt32
const PixelColorFilter_BayerGB = 2 |> UInt32
const PixelColorFilter_BayerGR = 3 |> UInt32
const PixelColorFilter_BayerBG = 4 |> UInt32
const NUM_PIXELCOLORFILTER = 5 |> UInt32
# end enum _spinPixelColorFilterEnums

const spinPixelColorFilterEnums = Cvoid

# begin enum _spinAdcBitDepthEnums
const _spinAdcBitDepthEnums = UInt32
const AdcBitDepth_Bit8 = 0 |> UInt32
const AdcBitDepth_Bit10 = 1 |> UInt32
const AdcBitDepth_Bit12 = 2 |> UInt32
const AdcBitDepth_Bit14 = 3 |> UInt32
const NUM_ADCBITDEPTH = 4 |> UInt32
# end enum _spinAdcBitDepthEnums

const spinAdcBitDepthEnums = Cvoid

# begin enum _spinDecimationHorizontalModeEnums
const _spinDecimationHorizontalModeEnums = UInt32
const DecimationHorizontalMode_Discard = 0 |> UInt32
const NUM_DECIMATIONHORIZONTALMODE = 1 |> UInt32
# end enum _spinDecimationHorizontalModeEnums

const spinDecimationHorizontalModeEnums = Cvoid

# begin enum _spinBinningVerticalModeEnums
const _spinBinningVerticalModeEnums = UInt32
const BinningVerticalMode_Sum = 0 |> UInt32
const BinningVerticalMode_Average = 1 |> UInt32
const NUM_BINNINGVERTICALMODE = 2 |> UInt32
# end enum _spinBinningVerticalModeEnums

const spinBinningVerticalModeEnums = Cvoid

# begin enum _spinPixelSizeEnums
const _spinPixelSizeEnums = UInt32
const PixelSize_Bpp1 = 0 |> UInt32
const PixelSize_Bpp2 = 1 |> UInt32
const PixelSize_Bpp4 = 2 |> UInt32
const PixelSize_Bpp8 = 3 |> UInt32
const PixelSize_Bpp10 = 4 |> UInt32
const PixelSize_Bpp12 = 5 |> UInt32
const PixelSize_Bpp14 = 6 |> UInt32
const PixelSize_Bpp16 = 7 |> UInt32
const PixelSize_Bpp20 = 8 |> UInt32
const PixelSize_Bpp24 = 9 |> UInt32
const PixelSize_Bpp30 = 10 |> UInt32
const PixelSize_Bpp32 = 11 |> UInt32
const PixelSize_Bpp36 = 12 |> UInt32
const PixelSize_Bpp48 = 13 |> UInt32
const PixelSize_Bpp64 = 14 |> UInt32
const PixelSize_Bpp96 = 15 |> UInt32
const NUM_PIXELSIZE = 16 |> UInt32
# end enum _spinPixelSizeEnums

const spinPixelSizeEnums = Cvoid

# begin enum _spinDecimationSelectorEnums
const _spinDecimationSelectorEnums = UInt32
const DecimationSelector_All = 0 |> UInt32
const DecimationSelector_Sensor = 1 |> UInt32
const NUM_DECIMATIONSELECTOR = 2 |> UInt32
# end enum _spinDecimationSelectorEnums

const spinDecimationSelectorEnums = Cvoid

# begin enum _spinImageCompressionModeEnums
const _spinImageCompressionModeEnums = UInt32
const ImageCompressionMode_Off = 0 |> UInt32
const ImageCompressionMode_Lossless = 1 |> UInt32
const NUM_IMAGECOMPRESSIONMODE = 2 |> UInt32
# end enum _spinImageCompressionModeEnums

const spinImageCompressionModeEnums = Cvoid

# begin enum _spinBinningHorizontalModeEnums
const _spinBinningHorizontalModeEnums = UInt32
const BinningHorizontalMode_Sum = 0 |> UInt32
const BinningHorizontalMode_Average = 1 |> UInt32
const NUM_BINNINGHORIZONTALMODE = 2 |> UInt32
# end enum _spinBinningHorizontalModeEnums

const spinBinningHorizontalModeEnums = Cvoid

# begin enum _spinPixelFormatEnums
const _spinPixelFormatEnums = UInt32
const PixelFormat_Mono8 = 0 |> UInt32
const PixelFormat_Mono16 = 1 |> UInt32
const PixelFormat_RGB8Packed = 2 |> UInt32
const PixelFormat_BayerGR8 = 3 |> UInt32
const PixelFormat_BayerRG8 = 4 |> UInt32
const PixelFormat_BayerGB8 = 5 |> UInt32
const PixelFormat_BayerBG8 = 6 |> UInt32
const PixelFormat_BayerGR16 = 7 |> UInt32
const PixelFormat_BayerRG16 = 8 |> UInt32
const PixelFormat_BayerGB16 = 9 |> UInt32
const PixelFormat_BayerBG16 = 10 |> UInt32
const PixelFormat_Mono12Packed = 11 |> UInt32
const PixelFormat_BayerGR12Packed = 12 |> UInt32
const PixelFormat_BayerRG12Packed = 13 |> UInt32
const PixelFormat_BayerGB12Packed = 14 |> UInt32
const PixelFormat_BayerBG12Packed = 15 |> UInt32
const PixelFormat_YUV411Packed = 16 |> UInt32
const PixelFormat_YUV422Packed = 17 |> UInt32
const PixelFormat_YUV444Packed = 18 |> UInt32
const PixelFormat_Mono12p = 19 |> UInt32
const PixelFormat_BayerGR12p = 20 |> UInt32
const PixelFormat_BayerRG12p = 21 |> UInt32
const PixelFormat_BayerGB12p = 22 |> UInt32
const PixelFormat_BayerBG12p = 23 |> UInt32
const PixelFormat_YCbCr8 = 24 |> UInt32
const PixelFormat_YCbCr422_8 = 25 |> UInt32
const PixelFormat_YCbCr411_8 = 26 |> UInt32
const PixelFormat_BGR8 = 27 |> UInt32
const PixelFormat_BGRa8 = 28 |> UInt32
const PixelFormat_Mono10Packed = 29 |> UInt32
const PixelFormat_BayerGR10Packed = 30 |> UInt32
const PixelFormat_BayerRG10Packed = 31 |> UInt32
const PixelFormat_BayerGB10Packed = 32 |> UInt32
const PixelFormat_BayerBG10Packed = 33 |> UInt32
const PixelFormat_Mono10p = 34 |> UInt32
const PixelFormat_BayerGR10p = 35 |> UInt32
const PixelFormat_BayerRG10p = 36 |> UInt32
const PixelFormat_BayerGB10p = 37 |> UInt32
const PixelFormat_BayerBG10p = 38 |> UInt32
const PixelFormat_Mono1p = 39 |> UInt32
const PixelFormat_Mono2p = 40 |> UInt32
const PixelFormat_Mono4p = 41 |> UInt32
const PixelFormat_Mono8s = 42 |> UInt32
const PixelFormat_Mono10 = 43 |> UInt32
const PixelFormat_Mono12 = 44 |> UInt32
const PixelFormat_Mono14 = 45 |> UInt32
const PixelFormat_BayerBG10 = 46 |> UInt32
const PixelFormat_BayerBG12 = 47 |> UInt32
const PixelFormat_BayerGB10 = 48 |> UInt32
const PixelFormat_BayerGB12 = 49 |> UInt32
const PixelFormat_BayerGR10 = 50 |> UInt32
const PixelFormat_BayerGR12 = 51 |> UInt32
const PixelFormat_BayerRG10 = 52 |> UInt32
const PixelFormat_BayerRG12 = 53 |> UInt32
const PixelFormat_RGBa8 = 54 |> UInt32
const PixelFormat_RGBa10 = 55 |> UInt32
const PixelFormat_RGBa10p = 56 |> UInt32
const PixelFormat_RGBa12 = 57 |> UInt32
const PixelFormat_RGBa12p = 58 |> UInt32
const PixelFormat_RGBa14 = 59 |> UInt32
const PixelFormat_RGBa16 = 60 |> UInt32
const PixelFormat_RGB8 = 61 |> UInt32
const PixelFormat_RGB8_Planar = 62 |> UInt32
const PixelFormat_RGB10 = 63 |> UInt32
const PixelFormat_RGB10_Planar = 64 |> UInt32
const PixelFormat_RGB10p = 65 |> UInt32
const PixelFormat_RGB10p32 = 66 |> UInt32
const PixelFormat_RGB12 = 67 |> UInt32
const PixelFormat_RGB12_Planar = 68 |> UInt32
const PixelFormat_RGB12p = 69 |> UInt32
const PixelFormat_RGB14 = 70 |> UInt32
const PixelFormat_RGB16 = 71 |> UInt32
const PixelFormat_RGB16_Planar = 72 |> UInt32
const PixelFormat_RGB565p = 73 |> UInt32
const PixelFormat_BGRa10 = 74 |> UInt32
const PixelFormat_BGRa10p = 75 |> UInt32
const PixelFormat_BGRa12 = 76 |> UInt32
const PixelFormat_BGRa12p = 77 |> UInt32
const PixelFormat_BGRa14 = 78 |> UInt32
const PixelFormat_BGRa16 = 79 |> UInt32
const PixelFormat_BGR10 = 80 |> UInt32
const PixelFormat_BGR10p = 81 |> UInt32
const PixelFormat_BGR12 = 82 |> UInt32
const PixelFormat_BGR12p = 83 |> UInt32
const PixelFormat_BGR14 = 84 |> UInt32
const PixelFormat_BGR16 = 85 |> UInt32
const PixelFormat_BGR565p = 86 |> UInt32
const PixelFormat_R8 = 87 |> UInt32
const PixelFormat_R10 = 88 |> UInt32
const PixelFormat_R12 = 89 |> UInt32
const PixelFormat_R16 = 90 |> UInt32
const PixelFormat_G8 = 91 |> UInt32
const PixelFormat_G10 = 92 |> UInt32
const PixelFormat_G12 = 93 |> UInt32
const PixelFormat_G16 = 94 |> UInt32
const PixelFormat_B8 = 95 |> UInt32
const PixelFormat_B10 = 96 |> UInt32
const PixelFormat_B12 = 97 |> UInt32
const PixelFormat_B16 = 98 |> UInt32
const PixelFormat_Coord3D_ABC8 = 99 |> UInt32
const PixelFormat_Coord3D_ABC8_Planar = 100 |> UInt32
const PixelFormat_Coord3D_ABC10p = 101 |> UInt32
const PixelFormat_Coord3D_ABC10p_Planar = 102 |> UInt32
const PixelFormat_Coord3D_ABC12p = 103 |> UInt32
const PixelFormat_Coord3D_ABC12p_Planar = 104 |> UInt32
const PixelFormat_Coord3D_ABC16 = 105 |> UInt32
const PixelFormat_Coord3D_ABC16_Planar = 106 |> UInt32
const PixelFormat_Coord3D_ABC32f = 107 |> UInt32
const PixelFormat_Coord3D_ABC32f_Planar = 108 |> UInt32
const PixelFormat_Coord3D_AC8 = 109 |> UInt32
const PixelFormat_Coord3D_AC8_Planar = 110 |> UInt32
const PixelFormat_Coord3D_AC10p = 111 |> UInt32
const PixelFormat_Coord3D_AC10p_Planar = 112 |> UInt32
const PixelFormat_Coord3D_AC12p = 113 |> UInt32
const PixelFormat_Coord3D_AC12p_Planar = 114 |> UInt32
const PixelFormat_Coord3D_AC16 = 115 |> UInt32
const PixelFormat_Coord3D_AC16_Planar = 116 |> UInt32
const PixelFormat_Coord3D_AC32f = 117 |> UInt32
const PixelFormat_Coord3D_AC32f_Planar = 118 |> UInt32
const PixelFormat_Coord3D_A8 = 119 |> UInt32
const PixelFormat_Coord3D_A10p = 120 |> UInt32
const PixelFormat_Coord3D_A12p = 121 |> UInt32
const PixelFormat_Coord3D_A16 = 122 |> UInt32
const PixelFormat_Coord3D_A32f = 123 |> UInt32
const PixelFormat_Coord3D_B8 = 124 |> UInt32
const PixelFormat_Coord3D_B10p = 125 |> UInt32
const PixelFormat_Coord3D_B12p = 126 |> UInt32
const PixelFormat_Coord3D_B16 = 127 |> UInt32
const PixelFormat_Coord3D_B32f = 128 |> UInt32
const PixelFormat_Coord3D_C8 = 129 |> UInt32
const PixelFormat_Coord3D_C10p = 130 |> UInt32
const PixelFormat_Coord3D_C12p = 131 |> UInt32
const PixelFormat_Coord3D_C16 = 132 |> UInt32
const PixelFormat_Coord3D_C32f = 133 |> UInt32
const PixelFormat_Confidence1 = 134 |> UInt32
const PixelFormat_Confidence1p = 135 |> UInt32
const PixelFormat_Confidence8 = 136 |> UInt32
const PixelFormat_Confidence16 = 137 |> UInt32
const PixelFormat_Confidence32f = 138 |> UInt32
const PixelFormat_BiColorBGRG8 = 139 |> UInt32
const PixelFormat_BiColorBGRG10 = 140 |> UInt32
const PixelFormat_BiColorBGRG10p = 141 |> UInt32
const PixelFormat_BiColorBGRG12 = 142 |> UInt32
const PixelFormat_BiColorBGRG12p = 143 |> UInt32
const PixelFormat_BiColorRGBG8 = 144 |> UInt32
const PixelFormat_BiColorRGBG10 = 145 |> UInt32
const PixelFormat_BiColorRGBG10p = 146 |> UInt32
const PixelFormat_BiColorRGBG12 = 147 |> UInt32
const PixelFormat_BiColorRGBG12p = 148 |> UInt32
const PixelFormat_SCF1WBWG8 = 149 |> UInt32
const PixelFormat_SCF1WBWG10 = 150 |> UInt32
const PixelFormat_SCF1WBWG10p = 151 |> UInt32
const PixelFormat_SCF1WBWG12 = 152 |> UInt32
const PixelFormat_SCF1WBWG12p = 153 |> UInt32
const PixelFormat_SCF1WBWG14 = 154 |> UInt32
const PixelFormat_SCF1WBWG16 = 155 |> UInt32
const PixelFormat_SCF1WGWB8 = 156 |> UInt32
const PixelFormat_SCF1WGWB10 = 157 |> UInt32
const PixelFormat_SCF1WGWB10p = 158 |> UInt32
const PixelFormat_SCF1WGWB12 = 159 |> UInt32
const PixelFormat_SCF1WGWB12p = 160 |> UInt32
const PixelFormat_SCF1WGWB14 = 161 |> UInt32
const PixelFormat_SCF1WGWB16 = 162 |> UInt32
const PixelFormat_SCF1WGWR8 = 163 |> UInt32
const PixelFormat_SCF1WGWR10 = 164 |> UInt32
const PixelFormat_SCF1WGWR10p = 165 |> UInt32
const PixelFormat_SCF1WGWR12 = 166 |> UInt32
const PixelFormat_SCF1WGWR12p = 167 |> UInt32
const PixelFormat_SCF1WGWR14 = 168 |> UInt32
const PixelFormat_SCF1WGWR16 = 169 |> UInt32
const PixelFormat_SCF1WRWG8 = 170 |> UInt32
const PixelFormat_SCF1WRWG10 = 171 |> UInt32
const PixelFormat_SCF1WRWG10p = 172 |> UInt32
const PixelFormat_SCF1WRWG12 = 173 |> UInt32
const PixelFormat_SCF1WRWG12p = 174 |> UInt32
const PixelFormat_SCF1WRWG14 = 175 |> UInt32
const PixelFormat_SCF1WRWG16 = 176 |> UInt32
const PixelFormat_YCbCr8_CbYCr = 177 |> UInt32
const PixelFormat_YCbCr10_CbYCr = 178 |> UInt32
const PixelFormat_YCbCr10p_CbYCr = 179 |> UInt32
const PixelFormat_YCbCr12_CbYCr = 180 |> UInt32
const PixelFormat_YCbCr12p_CbYCr = 181 |> UInt32
const PixelFormat_YCbCr411_8_CbYYCrYY = 182 |> UInt32
const PixelFormat_YCbCr422_8_CbYCrY = 183 |> UInt32
const PixelFormat_YCbCr422_10 = 184 |> UInt32
const PixelFormat_YCbCr422_10_CbYCrY = 185 |> UInt32
const PixelFormat_YCbCr422_10p = 186 |> UInt32
const PixelFormat_YCbCr422_10p_CbYCrY = 187 |> UInt32
const PixelFormat_YCbCr422_12 = 188 |> UInt32
const PixelFormat_YCbCr422_12_CbYCrY = 189 |> UInt32
const PixelFormat_YCbCr422_12p = 190 |> UInt32
const PixelFormat_YCbCr422_12p_CbYCrY = 191 |> UInt32
const PixelFormat_YCbCr601_8_CbYCr = 192 |> UInt32
const PixelFormat_YCbCr601_10_CbYCr = 193 |> UInt32
const PixelFormat_YCbCr601_10p_CbYCr = 194 |> UInt32
const PixelFormat_YCbCr601_12_CbYCr = 195 |> UInt32
const PixelFormat_YCbCr601_12p_CbYCr = 196 |> UInt32
const PixelFormat_YCbCr601_411_8_CbYYCrYY = 197 |> UInt32
const PixelFormat_YCbCr601_422_8 = 198 |> UInt32
const PixelFormat_YCbCr601_422_8_CbYCrY = 199 |> UInt32
const PixelFormat_YCbCr601_422_10 = 200 |> UInt32
const PixelFormat_YCbCr601_422_10_CbYCrY = 201 |> UInt32
const PixelFormat_YCbCr601_422_10p = 202 |> UInt32
const PixelFormat_YCbCr601_422_10p_CbYCrY = 203 |> UInt32
const PixelFormat_YCbCr601_422_12 = 204 |> UInt32
const PixelFormat_YCbCr601_422_12_CbYCrY = 205 |> UInt32
const PixelFormat_YCbCr601_422_12p = 206 |> UInt32
const PixelFormat_YCbCr601_422_12p_CbYCrY = 207 |> UInt32
const PixelFormat_YCbCr709_8_CbYCr = 208 |> UInt32
const PixelFormat_YCbCr709_10_CbYCr = 209 |> UInt32
const PixelFormat_YCbCr709_10p_CbYCr = 210 |> UInt32
const PixelFormat_YCbCr709_12_CbYCr = 211 |> UInt32
const PixelFormat_YCbCr709_12p_CbYCr = 212 |> UInt32
const PixelFormat_YCbCr709_411_8_CbYYCrYY = 213 |> UInt32
const PixelFormat_YCbCr709_422_8 = 214 |> UInt32
const PixelFormat_YCbCr709_422_8_CbYCrY = 215 |> UInt32
const PixelFormat_YCbCr709_422_10 = 216 |> UInt32
const PixelFormat_YCbCr709_422_10_CbYCrY = 217 |> UInt32
const PixelFormat_YCbCr709_422_10p = 218 |> UInt32
const PixelFormat_YCbCr709_422_10p_CbYCrY = 219 |> UInt32
const PixelFormat_YCbCr709_422_12 = 220 |> UInt32
const PixelFormat_YCbCr709_422_12_CbYCrY = 221 |> UInt32
const PixelFormat_YCbCr709_422_12p = 222 |> UInt32
const PixelFormat_YCbCr709_422_12p_CbYCrY = 223 |> UInt32
const PixelFormat_YUV8_UYV = 224 |> UInt32
const PixelFormat_YUV411_8_UYYVYY = 225 |> UInt32
const PixelFormat_YUV422_8 = 226 |> UInt32
const PixelFormat_YUV422_8_UYVY = 227 |> UInt32
const PixelFormat_Polarized8 = 228 |> UInt32
const PixelFormat_Polarized10p = 229 |> UInt32
const PixelFormat_Polarized12p = 230 |> UInt32
const PixelFormat_Polarized16 = 231 |> UInt32
const PixelFormat_BayerRGPolarized8 = 232 |> UInt32
const PixelFormat_BayerRGPolarized10p = 233 |> UInt32
const PixelFormat_BayerRGPolarized12p = 234 |> UInt32
const PixelFormat_BayerRGPolarized16 = 235 |> UInt32
const PixelFormat_Raw16 = 236 |> UInt32
const PixelFormat_Raw8 = 237 |> UInt32
const PixelFormat_R12_Jpeg = 238 |> UInt32
const PixelFormat_GR12_Jpeg = 239 |> UInt32
const PixelFormat_GB12_Jpeg = 240 |> UInt32
const PixelFormat_B12_Jpeg = 241 |> UInt32
const UNKNOWN_PIXELFORMAT = 242 |> UInt32
const NUM_PIXELFORMAT = 243 |> UInt32
# end enum _spinPixelFormatEnums

const spinPixelFormatEnums = Cvoid

# begin enum _spinDecimationVerticalModeEnums
const _spinDecimationVerticalModeEnums = UInt32
const DecimationVerticalMode_Discard = 0 |> UInt32
const NUM_DECIMATIONVERTICALMODE = 1 |> UInt32
# end enum _spinDecimationVerticalModeEnums

const spinDecimationVerticalModeEnums = Cvoid

# begin enum _spinLineModeEnums
const _spinLineModeEnums = UInt32
const LineMode_Input = 0 |> UInt32
const LineMode_Output = 1 |> UInt32
const NUM_LINEMODE = 2 |> UInt32
# end enum _spinLineModeEnums

const spinLineModeEnums = Cvoid

# begin enum _spinLineSourceEnums
const _spinLineSourceEnums = UInt32
const LineSource_Off = 0 |> UInt32
const LineSource_Line0 = 1 |> UInt32
const LineSource_Line1 = 2 |> UInt32
const LineSource_Line2 = 3 |> UInt32
const LineSource_Line3 = 4 |> UInt32
const LineSource_UserOutput0 = 5 |> UInt32
const LineSource_UserOutput1 = 6 |> UInt32
const LineSource_UserOutput2 = 7 |> UInt32
const LineSource_UserOutput3 = 8 |> UInt32
const LineSource_Counter0Active = 9 |> UInt32
const LineSource_Counter1Active = 10 |> UInt32
const LineSource_LogicBlock0 = 11 |> UInt32
const LineSource_LogicBlock1 = 12 |> UInt32
const LineSource_ExposureActive = 13 |> UInt32
const LineSource_FrameTriggerWait = 14 |> UInt32
const LineSource_SerialPort0 = 15 |> UInt32
const LineSource_PPSSignal = 16 |> UInt32
const LineSource_AllPixel = 17 |> UInt32
const LineSource_AnyPixel = 18 |> UInt32
const NUM_LINESOURCE = 19 |> UInt32
# end enum _spinLineSourceEnums

const spinLineSourceEnums = Cvoid

# begin enum _spinLineInputFilterSelectorEnums
const _spinLineInputFilterSelectorEnums = UInt32
const LineInputFilterSelector_Deglitch = 0 |> UInt32
const LineInputFilterSelector_Debounce = 1 |> UInt32
const NUM_LINEINPUTFILTERSELECTOR = 2 |> UInt32
# end enum _spinLineInputFilterSelectorEnums

const spinLineInputFilterSelectorEnums = Cvoid

# begin enum _spinUserOutputSelectorEnums
const _spinUserOutputSelectorEnums = UInt32
const UserOutputSelector_UserOutput0 = 0 |> UInt32
const UserOutputSelector_UserOutput1 = 1 |> UInt32
const UserOutputSelector_UserOutput2 = 2 |> UInt32
const UserOutputSelector_UserOutput3 = 3 |> UInt32
const NUM_USEROUTPUTSELECTOR = 4 |> UInt32
# end enum _spinUserOutputSelectorEnums

const spinUserOutputSelectorEnums = Cvoid

# begin enum _spinLineFormatEnums
const _spinLineFormatEnums = UInt32
const LineFormat_NoConnect = 0 |> UInt32
const LineFormat_TriState = 1 |> UInt32
const LineFormat_TTL = 2 |> UInt32
const LineFormat_LVDS = 3 |> UInt32
const LineFormat_RS422 = 4 |> UInt32
const LineFormat_OptoCoupled = 5 |> UInt32
const LineFormat_OpenDrain = 6 |> UInt32
const NUM_LINEFORMAT = 7 |> UInt32
# end enum _spinLineFormatEnums

const spinLineFormatEnums = Cvoid

# begin enum _spinLineSelectorEnums
const _spinLineSelectorEnums = UInt32
const LineSelector_Line0 = 0 |> UInt32
const LineSelector_Line1 = 1 |> UInt32
const LineSelector_Line2 = 2 |> UInt32
const LineSelector_Line3 = 3 |> UInt32
const NUM_LINESELECTOR = 4 |> UInt32
# end enum _spinLineSelectorEnums

const spinLineSelectorEnums = Cvoid

# begin enum _spinExposureActiveModeEnums
const _spinExposureActiveModeEnums = UInt32
const ExposureActiveMode_Line1 = 0 |> UInt32
const ExposureActiveMode_AnyPixels = 1 |> UInt32
const ExposureActiveMode_AllPixels = 2 |> UInt32
const NUM_EXPOSUREACTIVEMODE = 3 |> UInt32
# end enum _spinExposureActiveModeEnums

const spinExposureActiveModeEnums = Cvoid

# begin enum _spinCounterTriggerActivationEnums
const _spinCounterTriggerActivationEnums = UInt32
const CounterTriggerActivation_LevelLow = 0 |> UInt32
const CounterTriggerActivation_LevelHigh = 1 |> UInt32
const CounterTriggerActivation_FallingEdge = 2 |> UInt32
const CounterTriggerActivation_RisingEdge = 3 |> UInt32
const CounterTriggerActivation_AnyEdge = 4 |> UInt32
const NUM_COUNTERTRIGGERACTIVATION = 5 |> UInt32
# end enum _spinCounterTriggerActivationEnums

const spinCounterTriggerActivationEnums = Cvoid

# begin enum _spinCounterSelectorEnums
const _spinCounterSelectorEnums = UInt32
const CounterSelector_Counter0 = 0 |> UInt32
const CounterSelector_Counter1 = 1 |> UInt32
const NUM_COUNTERSELECTOR = 2 |> UInt32
# end enum _spinCounterSelectorEnums

const spinCounterSelectorEnums = Cvoid

# begin enum _spinCounterStatusEnums
const _spinCounterStatusEnums = UInt32
const CounterStatus_CounterIdle = 0 |> UInt32
const CounterStatus_CounterTriggerWait = 1 |> UInt32
const CounterStatus_CounterActive = 2 |> UInt32
const CounterStatus_CounterCompleted = 3 |> UInt32
const CounterStatus_CounterOverflow = 4 |> UInt32
const NUM_COUNTERSTATUS = 5 |> UInt32
# end enum _spinCounterStatusEnums

const spinCounterStatusEnums = Cvoid

# begin enum _spinCounterTriggerSourceEnums
const _spinCounterTriggerSourceEnums = UInt32
const CounterTriggerSource_Off = 0 |> UInt32
const CounterTriggerSource_Line0 = 1 |> UInt32
const CounterTriggerSource_Line1 = 2 |> UInt32
const CounterTriggerSource_Line2 = 3 |> UInt32
const CounterTriggerSource_Line3 = 4 |> UInt32
const CounterTriggerSource_UserOutput0 = 5 |> UInt32
const CounterTriggerSource_UserOutput1 = 6 |> UInt32
const CounterTriggerSource_UserOutput2 = 7 |> UInt32
const CounterTriggerSource_UserOutput3 = 8 |> UInt32
const CounterTriggerSource_Counter0Start = 9 |> UInt32
const CounterTriggerSource_Counter1Start = 10 |> UInt32
const CounterTriggerSource_Counter0End = 11 |> UInt32
const CounterTriggerSource_Counter1End = 12 |> UInt32
const CounterTriggerSource_LogicBlock0 = 13 |> UInt32
const CounterTriggerSource_LogicBlock1 = 14 |> UInt32
const CounterTriggerSource_ExposureStart = 15 |> UInt32
const CounterTriggerSource_ExposureEnd = 16 |> UInt32
const CounterTriggerSource_FrameTriggerWait = 17 |> UInt32
const NUM_COUNTERTRIGGERSOURCE = 18 |> UInt32
# end enum _spinCounterTriggerSourceEnums

const spinCounterTriggerSourceEnums = Cvoid

# begin enum _spinCounterResetSourceEnums
const _spinCounterResetSourceEnums = UInt32
const CounterResetSource_Off = 0 |> UInt32
const CounterResetSource_Line0 = 1 |> UInt32
const CounterResetSource_Line1 = 2 |> UInt32
const CounterResetSource_Line2 = 3 |> UInt32
const CounterResetSource_Line3 = 4 |> UInt32
const CounterResetSource_UserOutput0 = 5 |> UInt32
const CounterResetSource_UserOutput1 = 6 |> UInt32
const CounterResetSource_UserOutput2 = 7 |> UInt32
const CounterResetSource_UserOutput3 = 8 |> UInt32
const CounterResetSource_Counter0Start = 9 |> UInt32
const CounterResetSource_Counter1Start = 10 |> UInt32
const CounterResetSource_Counter0End = 11 |> UInt32
const CounterResetSource_Counter1End = 12 |> UInt32
const CounterResetSource_LogicBlock0 = 13 |> UInt32
const CounterResetSource_LogicBlock1 = 14 |> UInt32
const CounterResetSource_ExposureStart = 15 |> UInt32
const CounterResetSource_ExposureEnd = 16 |> UInt32
const CounterResetSource_FrameTriggerWait = 17 |> UInt32
const NUM_COUNTERRESETSOURCE = 18 |> UInt32
# end enum _spinCounterResetSourceEnums

const spinCounterResetSourceEnums = Cvoid

# begin enum _spinCounterEventSourceEnums
const _spinCounterEventSourceEnums = UInt32
const CounterEventSource_Off = 0 |> UInt32
const CounterEventSource_MHzTick = 1 |> UInt32
const CounterEventSource_Line0 = 2 |> UInt32
const CounterEventSource_Line1 = 3 |> UInt32
const CounterEventSource_Line2 = 4 |> UInt32
const CounterEventSource_Line3 = 5 |> UInt32
const CounterEventSource_UserOutput0 = 6 |> UInt32
const CounterEventSource_UserOutput1 = 7 |> UInt32
const CounterEventSource_UserOutput2 = 8 |> UInt32
const CounterEventSource_UserOutput3 = 9 |> UInt32
const CounterEventSource_Counter0Start = 10 |> UInt32
const CounterEventSource_Counter1Start = 11 |> UInt32
const CounterEventSource_Counter0End = 12 |> UInt32
const CounterEventSource_Counter1End = 13 |> UInt32
const CounterEventSource_LogicBlock0 = 14 |> UInt32
const CounterEventSource_LogicBlock1 = 15 |> UInt32
const CounterEventSource_ExposureStart = 16 |> UInt32
const CounterEventSource_ExposureEnd = 17 |> UInt32
const CounterEventSource_FrameTriggerWait = 18 |> UInt32
const NUM_COUNTEREVENTSOURCE = 19 |> UInt32
# end enum _spinCounterEventSourceEnums

const spinCounterEventSourceEnums = Cvoid

# begin enum _spinCounterEventActivationEnums
const _spinCounterEventActivationEnums = UInt32
const CounterEventActivation_LevelLow = 0 |> UInt32
const CounterEventActivation_LevelHigh = 1 |> UInt32
const CounterEventActivation_FallingEdge = 2 |> UInt32
const CounterEventActivation_RisingEdge = 3 |> UInt32
const CounterEventActivation_AnyEdge = 4 |> UInt32
const NUM_COUNTEREVENTACTIVATION = 5 |> UInt32
# end enum _spinCounterEventActivationEnums

const spinCounterEventActivationEnums = Cvoid

# begin enum _spinCounterResetActivationEnums
const _spinCounterResetActivationEnums = UInt32
const CounterResetActivation_LevelLow = 0 |> UInt32
const CounterResetActivation_LevelHigh = 1 |> UInt32
const CounterResetActivation_FallingEdge = 2 |> UInt32
const CounterResetActivation_RisingEdge = 3 |> UInt32
const CounterResetActivation_AnyEdge = 4 |> UInt32
const NUM_COUNTERRESETACTIVATION = 5 |> UInt32
# end enum _spinCounterResetActivationEnums

const spinCounterResetActivationEnums = Cvoid

# begin enum _spinDeviceTypeEnums
const _spinDeviceTypeEnums = UInt32
const DeviceType_Transmitter = 0 |> UInt32
const DeviceType_Receiver = 1 |> UInt32
const DeviceType_Transceiver = 2 |> UInt32
const DeviceType_Peripheral = 3 |> UInt32
const NUM_DEVICETYPE = 4 |> UInt32
# end enum _spinDeviceTypeEnums

const spinDeviceTypeEnums = Cvoid

# begin enum _spinDeviceConnectionStatusEnums
const _spinDeviceConnectionStatusEnums = UInt32
const DeviceConnectionStatus_Active = 0 |> UInt32
const DeviceConnectionStatus_Inactive = 1 |> UInt32
const NUM_DEVICECONNECTIONSTATUS = 2 |> UInt32
# end enum _spinDeviceConnectionStatusEnums

const spinDeviceConnectionStatusEnums = Cvoid

# begin enum _spinDeviceLinkThroughputLimitModeEnums
const _spinDeviceLinkThroughputLimitModeEnums = UInt32
const DeviceLinkThroughputLimitMode_On = 0 |> UInt32
const DeviceLinkThroughputLimitMode_Off = 1 |> UInt32
const NUM_DEVICELINKTHROUGHPUTLIMITMODE = 2 |> UInt32
# end enum _spinDeviceLinkThroughputLimitModeEnums

const spinDeviceLinkThroughputLimitModeEnums = Cvoid

# begin enum _spinDeviceLinkHeartbeatModeEnums
const _spinDeviceLinkHeartbeatModeEnums = UInt32
const DeviceLinkHeartbeatMode_On = 0 |> UInt32
const DeviceLinkHeartbeatMode_Off = 1 |> UInt32
const NUM_DEVICELINKHEARTBEATMODE = 2 |> UInt32
# end enum _spinDeviceLinkHeartbeatModeEnums

const spinDeviceLinkHeartbeatModeEnums = Cvoid

# begin enum _spinDeviceStreamChannelTypeEnums
const _spinDeviceStreamChannelTypeEnums = UInt32
const DeviceStreamChannelType_Transmitter = 0 |> UInt32
const DeviceStreamChannelType_Receiver = 1 |> UInt32
const NUM_DEVICESTREAMCHANNELTYPE = 2 |> UInt32
# end enum _spinDeviceStreamChannelTypeEnums

const spinDeviceStreamChannelTypeEnums = Cvoid

# begin enum _spinDeviceStreamChannelEndiannessEnums
const _spinDeviceStreamChannelEndiannessEnums = UInt32
const DeviceStreamChannelEndianness_Big = 0 |> UInt32
const DeviceStreamChannelEndianness_Little = 1 |> UInt32
const NUM_DEVICESTREAMCHANNELENDIANNESS = 2 |> UInt32
# end enum _spinDeviceStreamChannelEndiannessEnums

const spinDeviceStreamChannelEndiannessEnums = Cvoid

# begin enum _spinDeviceClockSelectorEnums
const _spinDeviceClockSelectorEnums = UInt32
const DeviceClockSelector_Sensor = 0 |> UInt32
const DeviceClockSelector_SensorDigitization = 1 |> UInt32
const DeviceClockSelector_CameraLink = 2 |> UInt32
const NUM_DEVICECLOCKSELECTOR = 3 |> UInt32
# end enum _spinDeviceClockSelectorEnums

const spinDeviceClockSelectorEnums = Cvoid

# begin enum _spinDeviceSerialPortSelectorEnums
const _spinDeviceSerialPortSelectorEnums = UInt32
const DeviceSerialPortSelector_CameraLink = 0 |> UInt32
const NUM_DEVICESERIALPORTSELECTOR = 1 |> UInt32
# end enum _spinDeviceSerialPortSelectorEnums

const spinDeviceSerialPortSelectorEnums = Cvoid

# begin enum _spinDeviceSerialPortBaudRateEnums
const _spinDeviceSerialPortBaudRateEnums = UInt32
const DeviceSerialPortBaudRate_Baud9600 = 0 |> UInt32
const DeviceSerialPortBaudRate_Baud19200 = 1 |> UInt32
const DeviceSerialPortBaudRate_Baud38400 = 2 |> UInt32
const DeviceSerialPortBaudRate_Baud57600 = 3 |> UInt32
const DeviceSerialPortBaudRate_Baud115200 = 4 |> UInt32
const DeviceSerialPortBaudRate_Baud230400 = 5 |> UInt32
const DeviceSerialPortBaudRate_Baud460800 = 6 |> UInt32
const DeviceSerialPortBaudRate_Baud921600 = 7 |> UInt32
const NUM_DEVICESERIALPORTBAUDRATE = 8 |> UInt32
# end enum _spinDeviceSerialPortBaudRateEnums

const spinDeviceSerialPortBaudRateEnums = Cvoid

# begin enum _spinSensorTapsEnums
const _spinSensorTapsEnums = UInt32
const SensorTaps_One = 0 |> UInt32
const SensorTaps_Two = 1 |> UInt32
const SensorTaps_Three = 2 |> UInt32
const SensorTaps_Four = 3 |> UInt32
const SensorTaps_Eight = 4 |> UInt32
const SensorTaps_Ten = 5 |> UInt32
const NUM_SENSORTAPS = 6 |> UInt32
# end enum _spinSensorTapsEnums

const spinSensorTapsEnums = Cvoid

# begin enum _spinSensorDigitizationTapsEnums
const _spinSensorDigitizationTapsEnums = UInt32
const SensorDigitizationTaps_One = 0 |> UInt32
const SensorDigitizationTaps_Two = 1 |> UInt32
const SensorDigitizationTaps_Three = 2 |> UInt32
const SensorDigitizationTaps_Four = 3 |> UInt32
const SensorDigitizationTaps_Eight = 4 |> UInt32
const SensorDigitizationTaps_Ten = 5 |> UInt32
const NUM_SENSORDIGITIZATIONTAPS = 6 |> UInt32
# end enum _spinSensorDigitizationTapsEnums

const spinSensorDigitizationTapsEnums = Cvoid

# begin enum _spinRegionSelectorEnums
const _spinRegionSelectorEnums = UInt32
const RegionSelector_Region0 = 0 |> UInt32
const RegionSelector_Region1 = 1 |> UInt32
const RegionSelector_Region2 = 2 |> UInt32
const RegionSelector_All = 3 |> UInt32
const NUM_REGIONSELECTOR = 4 |> UInt32
# end enum _spinRegionSelectorEnums

const spinRegionSelectorEnums = Cvoid

# begin enum _spinRegionModeEnums
const _spinRegionModeEnums = UInt32
const RegionMode_Off = 0 |> UInt32
const RegionMode_On = 1 |> UInt32
const NUM_REGIONMODE = 2 |> UInt32
# end enum _spinRegionModeEnums

const spinRegionModeEnums = Cvoid

# begin enum _spinRegionDestinationEnums
const _spinRegionDestinationEnums = UInt32
const RegionDestination_Stream0 = 0 |> UInt32
const RegionDestination_Stream1 = 1 |> UInt32
const RegionDestination_Stream2 = 2 |> UInt32
const NUM_REGIONDESTINATION = 3 |> UInt32
# end enum _spinRegionDestinationEnums

const spinRegionDestinationEnums = Cvoid

# begin enum _spinImageComponentSelectorEnums
const _spinImageComponentSelectorEnums = UInt32
const ImageComponentSelector_Intensity = 0 |> UInt32
const ImageComponentSelector_Color = 1 |> UInt32
const ImageComponentSelector_Infrared = 2 |> UInt32
const ImageComponentSelector_Ultraviolet = 3 |> UInt32
const ImageComponentSelector_Range = 4 |> UInt32
const ImageComponentSelector_Disparity = 5 |> UInt32
const ImageComponentSelector_Confidence = 6 |> UInt32
const ImageComponentSelector_Scatter = 7 |> UInt32
const NUM_IMAGECOMPONENTSELECTOR = 8 |> UInt32
# end enum _spinImageComponentSelectorEnums

const spinImageComponentSelectorEnums = Cvoid

# begin enum _spinPixelFormatInfoSelectorEnums
const _spinPixelFormatInfoSelectorEnums = UInt32
const PixelFormatInfoSelector_Mono1p = 0 |> UInt32
const PixelFormatInfoSelector_Mono2p = 1 |> UInt32
const PixelFormatInfoSelector_Mono4p = 2 |> UInt32
const PixelFormatInfoSelector_Mono8 = 3 |> UInt32
const PixelFormatInfoSelector_Mono8s = 4 |> UInt32
const PixelFormatInfoSelector_Mono10 = 5 |> UInt32
const PixelFormatInfoSelector_Mono10p = 6 |> UInt32
const PixelFormatInfoSelector_Mono12 = 7 |> UInt32
const PixelFormatInfoSelector_Mono12p = 8 |> UInt32
const PixelFormatInfoSelector_Mono14 = 9 |> UInt32
const PixelFormatInfoSelector_Mono16 = 10 |> UInt32
const PixelFormatInfoSelector_BayerBG8 = 11 |> UInt32
const PixelFormatInfoSelector_BayerBG10 = 12 |> UInt32
const PixelFormatInfoSelector_BayerBG10p = 13 |> UInt32
const PixelFormatInfoSelector_BayerBG12 = 14 |> UInt32
const PixelFormatInfoSelector_BayerBG12p = 15 |> UInt32
const PixelFormatInfoSelector_BayerBG16 = 16 |> UInt32
const PixelFormatInfoSelector_BayerGB8 = 17 |> UInt32
const PixelFormatInfoSelector_BayerGB10 = 18 |> UInt32
const PixelFormatInfoSelector_BayerGB10p = 19 |> UInt32
const PixelFormatInfoSelector_BayerGB12 = 20 |> UInt32
const PixelFormatInfoSelector_BayerGB12p = 21 |> UInt32
const PixelFormatInfoSelector_BayerGB16 = 22 |> UInt32
const PixelFormatInfoSelector_BayerGR8 = 23 |> UInt32
const PixelFormatInfoSelector_BayerGR10 = 24 |> UInt32
const PixelFormatInfoSelector_BayerGR10p = 25 |> UInt32
const PixelFormatInfoSelector_BayerGR12 = 26 |> UInt32
const PixelFormatInfoSelector_BayerGR12p = 27 |> UInt32
const PixelFormatInfoSelector_BayerGR16 = 28 |> UInt32
const PixelFormatInfoSelector_BayerRG8 = 29 |> UInt32
const PixelFormatInfoSelector_BayerRG10 = 30 |> UInt32
const PixelFormatInfoSelector_BayerRG10p = 31 |> UInt32
const PixelFormatInfoSelector_BayerRG12 = 32 |> UInt32
const PixelFormatInfoSelector_BayerRG12p = 33 |> UInt32
const PixelFormatInfoSelector_BayerRG16 = 34 |> UInt32
const PixelFormatInfoSelector_RGBa8 = 35 |> UInt32
const PixelFormatInfoSelector_RGBa10 = 36 |> UInt32
const PixelFormatInfoSelector_RGBa10p = 37 |> UInt32
const PixelFormatInfoSelector_RGBa12 = 38 |> UInt32
const PixelFormatInfoSelector_RGBa12p = 39 |> UInt32
const PixelFormatInfoSelector_RGBa14 = 40 |> UInt32
const PixelFormatInfoSelector_RGBa16 = 41 |> UInt32
const PixelFormatInfoSelector_RGB8 = 42 |> UInt32
const PixelFormatInfoSelector_RGB8_Planar = 43 |> UInt32
const PixelFormatInfoSelector_RGB10 = 44 |> UInt32
const PixelFormatInfoSelector_RGB10_Planar = 45 |> UInt32
const PixelFormatInfoSelector_RGB10p = 46 |> UInt32
const PixelFormatInfoSelector_RGB10p32 = 47 |> UInt32
const PixelFormatInfoSelector_RGB12 = 48 |> UInt32
const PixelFormatInfoSelector_RGB12_Planar = 49 |> UInt32
const PixelFormatInfoSelector_RGB12p = 50 |> UInt32
const PixelFormatInfoSelector_RGB14 = 51 |> UInt32
const PixelFormatInfoSelector_RGB16 = 52 |> UInt32
const PixelFormatInfoSelector_RGB16_Planar = 53 |> UInt32
const PixelFormatInfoSelector_RGB565p = 54 |> UInt32
const PixelFormatInfoSelector_BGRa8 = 55 |> UInt32
const PixelFormatInfoSelector_BGRa10 = 56 |> UInt32
const PixelFormatInfoSelector_BGRa10p = 57 |> UInt32
const PixelFormatInfoSelector_BGRa12 = 58 |> UInt32
const PixelFormatInfoSelector_BGRa12p = 59 |> UInt32
const PixelFormatInfoSelector_BGRa14 = 60 |> UInt32
const PixelFormatInfoSelector_BGRa16 = 61 |> UInt32
const PixelFormatInfoSelector_BGR8 = 62 |> UInt32
const PixelFormatInfoSelector_BGR10 = 63 |> UInt32
const PixelFormatInfoSelector_BGR10p = 64 |> UInt32
const PixelFormatInfoSelector_BGR12 = 65 |> UInt32
const PixelFormatInfoSelector_BGR12p = 66 |> UInt32
const PixelFormatInfoSelector_BGR14 = 67 |> UInt32
const PixelFormatInfoSelector_BGR16 = 68 |> UInt32
const PixelFormatInfoSelector_BGR565p = 69 |> UInt32
const PixelFormatInfoSelector_R8 = 70 |> UInt32
const PixelFormatInfoSelector_R10 = 71 |> UInt32
const PixelFormatInfoSelector_R12 = 72 |> UInt32
const PixelFormatInfoSelector_R16 = 73 |> UInt32
const PixelFormatInfoSelector_G8 = 74 |> UInt32
const PixelFormatInfoSelector_G10 = 75 |> UInt32
const PixelFormatInfoSelector_G12 = 76 |> UInt32
const PixelFormatInfoSelector_G16 = 77 |> UInt32
const PixelFormatInfoSelector_B8 = 78 |> UInt32
const PixelFormatInfoSelector_B10 = 79 |> UInt32
const PixelFormatInfoSelector_B12 = 80 |> UInt32
const PixelFormatInfoSelector_B16 = 81 |> UInt32
const PixelFormatInfoSelector_Coord3D_ABC8 = 82 |> UInt32
const PixelFormatInfoSelector_Coord3D_ABC8_Planar = 83 |> UInt32
const PixelFormatInfoSelector_Coord3D_ABC10p = 84 |> UInt32
const PixelFormatInfoSelector_Coord3D_ABC10p_Planar = 85 |> UInt32
const PixelFormatInfoSelector_Coord3D_ABC12p = 86 |> UInt32
const PixelFormatInfoSelector_Coord3D_ABC12p_Planar = 87 |> UInt32
const PixelFormatInfoSelector_Coord3D_ABC16 = 88 |> UInt32
const PixelFormatInfoSelector_Coord3D_ABC16_Planar = 89 |> UInt32
const PixelFormatInfoSelector_Coord3D_ABC32f = 90 |> UInt32
const PixelFormatInfoSelector_Coord3D_ABC32f_Planar = 91 |> UInt32
const PixelFormatInfoSelector_Coord3D_AC8 = 92 |> UInt32
const PixelFormatInfoSelector_Coord3D_AC8_Planar = 93 |> UInt32
const PixelFormatInfoSelector_Coord3D_AC10p = 94 |> UInt32
const PixelFormatInfoSelector_Coord3D_AC10p_Planar = 95 |> UInt32
const PixelFormatInfoSelector_Coord3D_AC12p = 96 |> UInt32
const PixelFormatInfoSelector_Coord3D_AC12p_Planar = 97 |> UInt32
const PixelFormatInfoSelector_Coord3D_AC16 = 98 |> UInt32
const PixelFormatInfoSelector_Coord3D_AC16_Planar = 99 |> UInt32
const PixelFormatInfoSelector_Coord3D_AC32f = 100 |> UInt32
const PixelFormatInfoSelector_Coord3D_AC32f_Planar = 101 |> UInt32
const PixelFormatInfoSelector_Coord3D_A8 = 102 |> UInt32
const PixelFormatInfoSelector_Coord3D_A10p = 103 |> UInt32
const PixelFormatInfoSelector_Coord3D_A12p = 104 |> UInt32
const PixelFormatInfoSelector_Coord3D_A16 = 105 |> UInt32
const PixelFormatInfoSelector_Coord3D_A32f = 106 |> UInt32
const PixelFormatInfoSelector_Coord3D_B8 = 107 |> UInt32
const PixelFormatInfoSelector_Coord3D_B10p = 108 |> UInt32
const PixelFormatInfoSelector_Coord3D_B12p = 109 |> UInt32
const PixelFormatInfoSelector_Coord3D_B16 = 110 |> UInt32
const PixelFormatInfoSelector_Coord3D_B32f = 111 |> UInt32
const PixelFormatInfoSelector_Coord3D_C8 = 112 |> UInt32
const PixelFormatInfoSelector_Coord3D_C10p = 113 |> UInt32
const PixelFormatInfoSelector_Coord3D_C12p = 114 |> UInt32
const PixelFormatInfoSelector_Coord3D_C16 = 115 |> UInt32
const PixelFormatInfoSelector_Coord3D_C32f = 116 |> UInt32
const PixelFormatInfoSelector_Confidence1 = 117 |> UInt32
const PixelFormatInfoSelector_Confidence1p = 118 |> UInt32
const PixelFormatInfoSelector_Confidence8 = 119 |> UInt32
const PixelFormatInfoSelector_Confidence16 = 120 |> UInt32
const PixelFormatInfoSelector_Confidence32f = 121 |> UInt32
const PixelFormatInfoSelector_BiColorBGRG8 = 122 |> UInt32
const PixelFormatInfoSelector_BiColorBGRG10 = 123 |> UInt32
const PixelFormatInfoSelector_BiColorBGRG10p = 124 |> UInt32
const PixelFormatInfoSelector_BiColorBGRG12 = 125 |> UInt32
const PixelFormatInfoSelector_BiColorBGRG12p = 126 |> UInt32
const PixelFormatInfoSelector_BiColorRGBG8 = 127 |> UInt32
const PixelFormatInfoSelector_BiColorRGBG10 = 128 |> UInt32
const PixelFormatInfoSelector_BiColorRGBG10p = 129 |> UInt32
const PixelFormatInfoSelector_BiColorRGBG12 = 130 |> UInt32
const PixelFormatInfoSelector_BiColorRGBG12p = 131 |> UInt32
const PixelFormatInfoSelector_SCF1WBWG8 = 132 |> UInt32
const PixelFormatInfoSelector_SCF1WBWG10 = 133 |> UInt32
const PixelFormatInfoSelector_SCF1WBWG10p = 134 |> UInt32
const PixelFormatInfoSelector_SCF1WBWG12 = 135 |> UInt32
const PixelFormatInfoSelector_SCF1WBWG12p = 136 |> UInt32
const PixelFormatInfoSelector_SCF1WBWG14 = 137 |> UInt32
const PixelFormatInfoSelector_SCF1WBWG16 = 138 |> UInt32
const PixelFormatInfoSelector_SCF1WGWB8 = 139 |> UInt32
const PixelFormatInfoSelector_SCF1WGWB10 = 140 |> UInt32
const PixelFormatInfoSelector_SCF1WGWB10p = 141 |> UInt32
const PixelFormatInfoSelector_SCF1WGWB12 = 142 |> UInt32
const PixelFormatInfoSelector_SCF1WGWB12p = 143 |> UInt32
const PixelFormatInfoSelector_SCF1WGWB14 = 144 |> UInt32
const PixelFormatInfoSelector_SCF1WGWB16 = 145 |> UInt32
const PixelFormatInfoSelector_SCF1WGWR8 = 146 |> UInt32
const PixelFormatInfoSelector_SCF1WGWR10 = 147 |> UInt32
const PixelFormatInfoSelector_SCF1WGWR10p = 148 |> UInt32
const PixelFormatInfoSelector_SCF1WGWR12 = 149 |> UInt32
const PixelFormatInfoSelector_SCF1WGWR12p = 150 |> UInt32
const PixelFormatInfoSelector_SCF1WGWR14 = 151 |> UInt32
const PixelFormatInfoSelector_SCF1WGWR16 = 152 |> UInt32
const PixelFormatInfoSelector_SCF1WRWG8 = 153 |> UInt32
const PixelFormatInfoSelector_SCF1WRWG10 = 154 |> UInt32
const PixelFormatInfoSelector_SCF1WRWG10p = 155 |> UInt32
const PixelFormatInfoSelector_SCF1WRWG12 = 156 |> UInt32
const PixelFormatInfoSelector_SCF1WRWG12p = 157 |> UInt32
const PixelFormatInfoSelector_SCF1WRWG14 = 158 |> UInt32
const PixelFormatInfoSelector_SCF1WRWG16 = 159 |> UInt32
const PixelFormatInfoSelector_YCbCr8 = 160 |> UInt32
const PixelFormatInfoSelector_YCbCr8_CbYCr = 161 |> UInt32
const PixelFormatInfoSelector_YCbCr10_CbYCr = 162 |> UInt32
const PixelFormatInfoSelector_YCbCr10p_CbYCr = 163 |> UInt32
const PixelFormatInfoSelector_YCbCr12_CbYCr = 164 |> UInt32
const PixelFormatInfoSelector_YCbCr12p_CbYCr = 165 |> UInt32
const PixelFormatInfoSelector_YCbCr411_8 = 166 |> UInt32
const PixelFormatInfoSelector_YCbCr411_8_CbYYCrYY = 167 |> UInt32
const PixelFormatInfoSelector_YCbCr422_8 = 168 |> UInt32
const PixelFormatInfoSelector_YCbCr422_8_CbYCrY = 169 |> UInt32
const PixelFormatInfoSelector_YCbCr422_10 = 170 |> UInt32
const PixelFormatInfoSelector_YCbCr422_10_CbYCrY = 171 |> UInt32
const PixelFormatInfoSelector_YCbCr422_10p = 172 |> UInt32
const PixelFormatInfoSelector_YCbCr422_10p_CbYCrY = 173 |> UInt32
const PixelFormatInfoSelector_YCbCr422_12 = 174 |> UInt32
const PixelFormatInfoSelector_YCbCr422_12_CbYCrY = 175 |> UInt32
const PixelFormatInfoSelector_YCbCr422_12p = 176 |> UInt32
const PixelFormatInfoSelector_YCbCr422_12p_CbYCrY = 177 |> UInt32
const PixelFormatInfoSelector_YCbCr601_8_CbYCr = 178 |> UInt32
const PixelFormatInfoSelector_YCbCr601_10_CbYCr = 179 |> UInt32
const PixelFormatInfoSelector_YCbCr601_10p_CbYCr = 180 |> UInt32
const PixelFormatInfoSelector_YCbCr601_12_CbYCr = 181 |> UInt32
const PixelFormatInfoSelector_YCbCr601_12p_CbYCr = 182 |> UInt32
const PixelFormatInfoSelector_YCbCr601_411_8_CbYYCrYY = 183 |> UInt32
const PixelFormatInfoSelector_YCbCr601_422_8 = 184 |> UInt32
const PixelFormatInfoSelector_YCbCr601_422_8_CbYCrY = 185 |> UInt32
const PixelFormatInfoSelector_YCbCr601_422_10 = 186 |> UInt32
const PixelFormatInfoSelector_YCbCr601_422_10_CbYCrY = 187 |> UInt32
const PixelFormatInfoSelector_YCbCr601_422_10p = 188 |> UInt32
const PixelFormatInfoSelector_YCbCr601_422_10p_CbYCrY = 189 |> UInt32
const PixelFormatInfoSelector_YCbCr601_422_12 = 190 |> UInt32
const PixelFormatInfoSelector_YCbCr601_422_12_CbYCrY = 191 |> UInt32
const PixelFormatInfoSelector_YCbCr601_422_12p = 192 |> UInt32
const PixelFormatInfoSelector_YCbCr601_422_12p_CbYCrY = 193 |> UInt32
const PixelFormatInfoSelector_YCbCr709_8_CbYCr = 194 |> UInt32
const PixelFormatInfoSelector_YCbCr709_10_CbYCr = 195 |> UInt32
const PixelFormatInfoSelector_YCbCr709_10p_CbYCr = 196 |> UInt32
const PixelFormatInfoSelector_YCbCr709_12_CbYCr = 197 |> UInt32
const PixelFormatInfoSelector_YCbCr709_12p_CbYCr = 198 |> UInt32
const PixelFormatInfoSelector_YCbCr709_411_8_CbYYCrYY = 199 |> UInt32
const PixelFormatInfoSelector_YCbCr709_422_8 = 200 |> UInt32
const PixelFormatInfoSelector_YCbCr709_422_8_CbYCrY = 201 |> UInt32
const PixelFormatInfoSelector_YCbCr709_422_10 = 202 |> UInt32
const PixelFormatInfoSelector_YCbCr709_422_10_CbYCrY = 203 |> UInt32
const PixelFormatInfoSelector_YCbCr709_422_10p = 204 |> UInt32
const PixelFormatInfoSelector_YCbCr709_422_10p_CbYCrY = 205 |> UInt32
const PixelFormatInfoSelector_YCbCr709_422_12 = 206 |> UInt32
const PixelFormatInfoSelector_YCbCr709_422_12_CbYCrY = 207 |> UInt32
const PixelFormatInfoSelector_YCbCr709_422_12p = 208 |> UInt32
const PixelFormatInfoSelector_YCbCr709_422_12p_CbYCrY = 209 |> UInt32
const PixelFormatInfoSelector_YUV8_UYV = 210 |> UInt32
const PixelFormatInfoSelector_YUV411_8_UYYVYY = 211 |> UInt32
const PixelFormatInfoSelector_YUV422_8 = 212 |> UInt32
const PixelFormatInfoSelector_YUV422_8_UYVY = 213 |> UInt32
const PixelFormatInfoSelector_Polarized8 = 214 |> UInt32
const PixelFormatInfoSelector_Polarized10p = 215 |> UInt32
const PixelFormatInfoSelector_Polarized12p = 216 |> UInt32
const PixelFormatInfoSelector_Polarized16 = 217 |> UInt32
const PixelFormatInfoSelector_BayerRGPolarized8 = 218 |> UInt32
const PixelFormatInfoSelector_BayerRGPolarized10p = 219 |> UInt32
const PixelFormatInfoSelector_BayerRGPolarized12p = 220 |> UInt32
const PixelFormatInfoSelector_BayerRGPolarized16 = 221 |> UInt32
const NUM_PIXELFORMATINFOSELECTOR = 222 |> UInt32
# end enum _spinPixelFormatInfoSelectorEnums

const spinPixelFormatInfoSelectorEnums = Cvoid

# begin enum _spinDeinterlacingEnums
const _spinDeinterlacingEnums = UInt32
const Deinterlacing_Off = 0 |> UInt32
const Deinterlacing_LineDuplication = 1 |> UInt32
const Deinterlacing_Weave = 2 |> UInt32
const NUM_DEINTERLACING = 3 |> UInt32
# end enum _spinDeinterlacingEnums

const spinDeinterlacingEnums = Cvoid

# begin enum _spinImageCompressionRateOptionEnums
const _spinImageCompressionRateOptionEnums = UInt32
const ImageCompressionRateOption_FixBitrate = 0 |> UInt32
const ImageCompressionRateOption_FixQuality = 1 |> UInt32
const NUM_IMAGECOMPRESSIONRATEOPTION = 2 |> UInt32
# end enum _spinImageCompressionRateOptionEnums

const spinImageCompressionRateOptionEnums = Cvoid

# begin enum _spinImageCompressionJPEGFormatOptionEnums
const _spinImageCompressionJPEGFormatOptionEnums = UInt32
const ImageCompressionJPEGFormatOption_Lossless = 0 |> UInt32
const ImageCompressionJPEGFormatOption_BaselineStandard = 1 |> UInt32
const ImageCompressionJPEGFormatOption_BaselineOptimized = 2 |> UInt32
const ImageCompressionJPEGFormatOption_Progressive = 3 |> UInt32
const NUM_IMAGECOMPRESSIONJPEGFORMATOPTION = 4 |> UInt32
# end enum _spinImageCompressionJPEGFormatOptionEnums

const spinImageCompressionJPEGFormatOptionEnums = Cvoid

# begin enum _spinAcquisitionStatusSelectorEnums
const _spinAcquisitionStatusSelectorEnums = UInt32
const AcquisitionStatusSelector_AcquisitionTriggerWait = 0 |> UInt32
const AcquisitionStatusSelector_AcquisitionActive = 1 |> UInt32
const AcquisitionStatusSelector_AcquisitionTransfer = 2 |> UInt32
const AcquisitionStatusSelector_FrameTriggerWait = 3 |> UInt32
const AcquisitionStatusSelector_FrameActive = 4 |> UInt32
const AcquisitionStatusSelector_ExposureActive = 5 |> UInt32
const NUM_ACQUISITIONSTATUSSELECTOR = 6 |> UInt32
# end enum _spinAcquisitionStatusSelectorEnums

const spinAcquisitionStatusSelectorEnums = Cvoid

# begin enum _spinExposureTimeModeEnums
const _spinExposureTimeModeEnums = UInt32
const ExposureTimeMode_Common = 0 |> UInt32
const ExposureTimeMode_Individual = 1 |> UInt32
const NUM_EXPOSURETIMEMODE = 2 |> UInt32
# end enum _spinExposureTimeModeEnums

const spinExposureTimeModeEnums = Cvoid

# begin enum _spinExposureTimeSelectorEnums
const _spinExposureTimeSelectorEnums = UInt32
const ExposureTimeSelector_Common = 0 |> UInt32
const ExposureTimeSelector_Red = 1 |> UInt32
const ExposureTimeSelector_Green = 2 |> UInt32
const ExposureTimeSelector_Blue = 3 |> UInt32
const ExposureTimeSelector_Cyan = 4 |> UInt32
const ExposureTimeSelector_Magenta = 5 |> UInt32
const ExposureTimeSelector_Yellow = 6 |> UInt32
const ExposureTimeSelector_Infrared = 7 |> UInt32
const ExposureTimeSelector_Ultraviolet = 8 |> UInt32
const ExposureTimeSelector_Stage1 = 9 |> UInt32
const ExposureTimeSelector_Stage2 = 10 |> UInt32
const NUM_EXPOSURETIMESELECTOR = 11 |> UInt32
# end enum _spinExposureTimeSelectorEnums

const spinExposureTimeSelectorEnums = Cvoid

# begin enum _spinGainAutoBalanceEnums
const _spinGainAutoBalanceEnums = UInt32
const GainAutoBalance_Off = 0 |> UInt32
const GainAutoBalance_Once = 1 |> UInt32
const GainAutoBalance_Continuous = 2 |> UInt32
const NUM_GAINAUTOBALANCE = 3 |> UInt32
# end enum _spinGainAutoBalanceEnums

const spinGainAutoBalanceEnums = Cvoid

# begin enum _spinBlackLevelAutoEnums
const _spinBlackLevelAutoEnums = UInt32
const BlackLevelAuto_Off = 0 |> UInt32
const BlackLevelAuto_Once = 1 |> UInt32
const BlackLevelAuto_Continuous = 2 |> UInt32
const NUM_BLACKLEVELAUTO = 3 |> UInt32
# end enum _spinBlackLevelAutoEnums

const spinBlackLevelAutoEnums = Cvoid

# begin enum _spinBlackLevelAutoBalanceEnums
const _spinBlackLevelAutoBalanceEnums = UInt32
const BlackLevelAutoBalance_Off = 0 |> UInt32
const BlackLevelAutoBalance_Once = 1 |> UInt32
const BlackLevelAutoBalance_Continuous = 2 |> UInt32
const NUM_BLACKLEVELAUTOBALANCE = 3 |> UInt32
# end enum _spinBlackLevelAutoBalanceEnums

const spinBlackLevelAutoBalanceEnums = Cvoid

# begin enum _spinWhiteClipSelectorEnums
const _spinWhiteClipSelectorEnums = UInt32
const WhiteClipSelector_All = 0 |> UInt32
const WhiteClipSelector_Red = 1 |> UInt32
const WhiteClipSelector_Green = 2 |> UInt32
const WhiteClipSelector_Blue = 3 |> UInt32
const WhiteClipSelector_Y = 4 |> UInt32
const WhiteClipSelector_U = 5 |> UInt32
const WhiteClipSelector_V = 6 |> UInt32
const WhiteClipSelector_Tap1 = 7 |> UInt32
const WhiteClipSelector_Tap2 = 8 |> UInt32
const NUM_WHITECLIPSELECTOR = 9 |> UInt32
# end enum _spinWhiteClipSelectorEnums

const spinWhiteClipSelectorEnums = Cvoid

# begin enum _spinTimerSelectorEnums
const _spinTimerSelectorEnums = UInt32
const TimerSelector_Timer0 = 0 |> UInt32
const TimerSelector_Timer1 = 1 |> UInt32
const TimerSelector_Timer2 = 2 |> UInt32
const NUM_TIMERSELECTOR = 3 |> UInt32
# end enum _spinTimerSelectorEnums

const spinTimerSelectorEnums = Cvoid

# begin enum _spinTimerStatusEnums
const _spinTimerStatusEnums = UInt32
const TimerStatus_TimerIdle = 0 |> UInt32
const TimerStatus_TimerTriggerWait = 1 |> UInt32
const TimerStatus_TimerActive = 2 |> UInt32
const TimerStatus_TimerCompleted = 3 |> UInt32
const NUM_TIMERSTATUS = 4 |> UInt32
# end enum _spinTimerStatusEnums

const spinTimerStatusEnums = Cvoid

# begin enum _spinTimerTriggerSourceEnums
const _spinTimerTriggerSourceEnums = UInt32
const TimerTriggerSource_Off = 0 |> UInt32
const TimerTriggerSource_AcquisitionTrigger = 1 |> UInt32
const TimerTriggerSource_AcquisitionStart = 2 |> UInt32
const TimerTriggerSource_AcquisitionEnd = 3 |> UInt32
const TimerTriggerSource_FrameTrigger = 4 |> UInt32
const TimerTriggerSource_FrameStart = 5 |> UInt32
const TimerTriggerSource_FrameEnd = 6 |> UInt32
const TimerTriggerSource_FrameBurstStart = 7 |> UInt32
const TimerTriggerSource_FrameBurstEnd = 8 |> UInt32
const TimerTriggerSource_LineTrigger = 9 |> UInt32
const TimerTriggerSource_LineStart = 10 |> UInt32
const TimerTriggerSource_LineEnd = 11 |> UInt32
const TimerTriggerSource_ExposureStart = 12 |> UInt32
const TimerTriggerSource_ExposureEnd = 13 |> UInt32
const TimerTriggerSource_Line0 = 14 |> UInt32
const TimerTriggerSource_Line1 = 15 |> UInt32
const TimerTriggerSource_Line2 = 16 |> UInt32
const TimerTriggerSource_UserOutput0 = 17 |> UInt32
const TimerTriggerSource_UserOutput1 = 18 |> UInt32
const TimerTriggerSource_UserOutput2 = 19 |> UInt32
const TimerTriggerSource_Counter0Start = 20 |> UInt32
const TimerTriggerSource_Counter1Start = 21 |> UInt32
const TimerTriggerSource_Counter2Start = 22 |> UInt32
const TimerTriggerSource_Counter0End = 23 |> UInt32
const TimerTriggerSource_Counter1End = 24 |> UInt32
const TimerTriggerSource_Counter2End = 25 |> UInt32
const TimerTriggerSource_Timer0Start = 26 |> UInt32
const TimerTriggerSource_Timer1Start = 27 |> UInt32
const TimerTriggerSource_Timer2Start = 28 |> UInt32
const TimerTriggerSource_Timer0End = 29 |> UInt32
const TimerTriggerSource_Timer1End = 30 |> UInt32
const TimerTriggerSource_Timer2End = 31 |> UInt32
const TimerTriggerSource_Encoder0 = 32 |> UInt32
const TimerTriggerSource_Encoder1 = 33 |> UInt32
const TimerTriggerSource_Encoder2 = 34 |> UInt32
const TimerTriggerSource_SoftwareSignal0 = 35 |> UInt32
const TimerTriggerSource_SoftwareSignal1 = 36 |> UInt32
const TimerTriggerSource_SoftwareSignal2 = 37 |> UInt32
const TimerTriggerSource_Action0 = 38 |> UInt32
const TimerTriggerSource_Action1 = 39 |> UInt32
const TimerTriggerSource_Action2 = 40 |> UInt32
const TimerTriggerSource_LinkTrigger0 = 41 |> UInt32
const TimerTriggerSource_LinkTrigger1 = 42 |> UInt32
const TimerTriggerSource_LinkTrigger2 = 43 |> UInt32
const NUM_TIMERTRIGGERSOURCE = 44 |> UInt32
# end enum _spinTimerTriggerSourceEnums

const spinTimerTriggerSourceEnums = Cvoid

# begin enum _spinTimerTriggerActivationEnums
const _spinTimerTriggerActivationEnums = UInt32
const TimerTriggerActivation_RisingEdge = 0 |> UInt32
const TimerTriggerActivation_FallingEdge = 1 |> UInt32
const TimerTriggerActivation_AnyEdge = 2 |> UInt32
const TimerTriggerActivation_LevelHigh = 3 |> UInt32
const TimerTriggerActivation_LevelLow = 4 |> UInt32
const NUM_TIMERTRIGGERACTIVATION = 5 |> UInt32
# end enum _spinTimerTriggerActivationEnums

const spinTimerTriggerActivationEnums = Cvoid

# begin enum _spinEncoderSelectorEnums
const _spinEncoderSelectorEnums = UInt32
const EncoderSelector_Encoder0 = 0 |> UInt32
const EncoderSelector_Encoder1 = 1 |> UInt32
const EncoderSelector_Encoder2 = 2 |> UInt32
const NUM_ENCODERSELECTOR = 3 |> UInt32
# end enum _spinEncoderSelectorEnums

const spinEncoderSelectorEnums = Cvoid

# begin enum _spinEncoderSourceAEnums
const _spinEncoderSourceAEnums = UInt32
const EncoderSourceA_Off = 0 |> UInt32
const EncoderSourceA_Line0 = 1 |> UInt32
const EncoderSourceA_Line1 = 2 |> UInt32
const EncoderSourceA_Line2 = 3 |> UInt32
const NUM_ENCODERSOURCEA = 4 |> UInt32
# end enum _spinEncoderSourceAEnums

const spinEncoderSourceAEnums = Cvoid

# begin enum _spinEncoderSourceBEnums
const _spinEncoderSourceBEnums = UInt32
const EncoderSourceB_Off = 0 |> UInt32
const EncoderSourceB_Line0 = 1 |> UInt32
const EncoderSourceB_Line1 = 2 |> UInt32
const EncoderSourceB_Line2 = 3 |> UInt32
const NUM_ENCODERSOURCEB = 4 |> UInt32
# end enum _spinEncoderSourceBEnums

const spinEncoderSourceBEnums = Cvoid

# begin enum _spinEncoderModeEnums
const _spinEncoderModeEnums = UInt32
const EncoderMode_FourPhase = 0 |> UInt32
const EncoderMode_HighResolution = 1 |> UInt32
const NUM_ENCODERMODE = 2 |> UInt32
# end enum _spinEncoderModeEnums

const spinEncoderModeEnums = Cvoid

# begin enum _spinEncoderOutputModeEnums
const _spinEncoderOutputModeEnums = UInt32
const EncoderOutputMode_Off = 0 |> UInt32
const EncoderOutputMode_PositionUp = 1 |> UInt32
const EncoderOutputMode_PositionDown = 2 |> UInt32
const EncoderOutputMode_DirectionUp = 3 |> UInt32
const EncoderOutputMode_DirectionDown = 4 |> UInt32
const EncoderOutputMode_Motion = 5 |> UInt32
const NUM_ENCODEROUTPUTMODE = 6 |> UInt32
# end enum _spinEncoderOutputModeEnums

const spinEncoderOutputModeEnums = Cvoid

# begin enum _spinEncoderStatusEnums
const _spinEncoderStatusEnums = UInt32
const EncoderStatus_EncoderUp = 0 |> UInt32
const EncoderStatus_EncoderDown = 1 |> UInt32
const EncoderStatus_EncoderIdle = 2 |> UInt32
const EncoderStatus_EncoderStatic = 3 |> UInt32
const NUM_ENCODERSTATUS = 4 |> UInt32
# end enum _spinEncoderStatusEnums

const spinEncoderStatusEnums = Cvoid

# begin enum _spinEncoderResetSourceEnums
const _spinEncoderResetSourceEnums = UInt32
const EncoderResetSource_Off = 0 |> UInt32
const EncoderResetSource_AcquisitionTrigger = 1 |> UInt32
const EncoderResetSource_AcquisitionStart = 2 |> UInt32
const EncoderResetSource_AcquisitionEnd = 3 |> UInt32
const EncoderResetSource_FrameTrigger = 4 |> UInt32
const EncoderResetSource_FrameStart = 5 |> UInt32
const EncoderResetSource_FrameEnd = 6 |> UInt32
const EncoderResetSource_ExposureStart = 7 |> UInt32
const EncoderResetSource_ExposureEnd = 8 |> UInt32
const EncoderResetSource_Line0 = 9 |> UInt32
const EncoderResetSource_Line1 = 10 |> UInt32
const EncoderResetSource_Line2 = 11 |> UInt32
const EncoderResetSource_Counter0Start = 12 |> UInt32
const EncoderResetSource_Counter1Start = 13 |> UInt32
const EncoderResetSource_Counter2Start = 14 |> UInt32
const EncoderResetSource_Counter0End = 15 |> UInt32
const EncoderResetSource_Counter1End = 16 |> UInt32
const EncoderResetSource_Counter2End = 17 |> UInt32
const EncoderResetSource_Timer0Start = 18 |> UInt32
const EncoderResetSource_Timer1Start = 19 |> UInt32
const EncoderResetSource_Timer2Start = 20 |> UInt32
const EncoderResetSource_Timer0End = 21 |> UInt32
const EncoderResetSource_Timer1End = 22 |> UInt32
const EncoderResetSource_Timer2End = 23 |> UInt32
const EncoderResetSource_UserOutput0 = 24 |> UInt32
const EncoderResetSource_UserOutput1 = 25 |> UInt32
const EncoderResetSource_UserOutput2 = 26 |> UInt32
const EncoderResetSource_SoftwareSignal0 = 27 |> UInt32
const EncoderResetSource_SoftwareSignal1 = 28 |> UInt32
const EncoderResetSource_SoftwareSignal2 = 29 |> UInt32
const EncoderResetSource_Action0 = 30 |> UInt32
const EncoderResetSource_Action1 = 31 |> UInt32
const EncoderResetSource_Action2 = 32 |> UInt32
const EncoderResetSource_LinkTrigger0 = 33 |> UInt32
const EncoderResetSource_LinkTrigger1 = 34 |> UInt32
const EncoderResetSource_LinkTrigger2 = 35 |> UInt32
const NUM_ENCODERRESETSOURCE = 36 |> UInt32
# end enum _spinEncoderResetSourceEnums

const spinEncoderResetSourceEnums = Cvoid

# begin enum _spinEncoderResetActivationEnums
const _spinEncoderResetActivationEnums = UInt32
const EncoderResetActivation_RisingEdge = 0 |> UInt32
const EncoderResetActivation_FallingEdge = 1 |> UInt32
const EncoderResetActivation_AnyEdge = 2 |> UInt32
const EncoderResetActivation_LevelHigh = 3 |> UInt32
const EncoderResetActivation_LevelLow = 4 |> UInt32
const NUM_ENCODERRESETACTIVATION = 5 |> UInt32
# end enum _spinEncoderResetActivationEnums

const spinEncoderResetActivationEnums = Cvoid

# begin enum _spinSoftwareSignalSelectorEnums
const _spinSoftwareSignalSelectorEnums = UInt32
const SoftwareSignalSelector_SoftwareSignal0 = 0 |> UInt32
const SoftwareSignalSelector_SoftwareSignal1 = 1 |> UInt32
const SoftwareSignalSelector_SoftwareSignal2 = 2 |> UInt32
const NUM_SOFTWARESIGNALSELECTOR = 3 |> UInt32
# end enum _spinSoftwareSignalSelectorEnums

const spinSoftwareSignalSelectorEnums = Cvoid

# begin enum _spinActionUnconditionalModeEnums
const _spinActionUnconditionalModeEnums = UInt32
const ActionUnconditionalMode_Off = 0 |> UInt32
const ActionUnconditionalMode_On = 1 |> UInt32
const NUM_ACTIONUNCONDITIONALMODE = 2 |> UInt32
# end enum _spinActionUnconditionalModeEnums

const spinActionUnconditionalModeEnums = Cvoid

# begin enum _spinSourceSelectorEnums
const _spinSourceSelectorEnums = UInt32
const SourceSelector_Source0 = 0 |> UInt32
const SourceSelector_Source1 = 1 |> UInt32
const SourceSelector_Source2 = 2 |> UInt32
const SourceSelector_All = 3 |> UInt32
const NUM_SOURCESELECTOR = 4 |> UInt32
# end enum _spinSourceSelectorEnums

const spinSourceSelectorEnums = Cvoid

# begin enum _spinTransferSelectorEnums
const _spinTransferSelectorEnums = UInt32
const TransferSelector_Stream0 = 0 |> UInt32
const TransferSelector_Stream1 = 1 |> UInt32
const TransferSelector_Stream2 = 2 |> UInt32
const TransferSelector_All = 3 |> UInt32
const NUM_TRANSFERSELECTOR = 4 |> UInt32
# end enum _spinTransferSelectorEnums

const spinTransferSelectorEnums = Cvoid

# begin enum _spinTransferTriggerSelectorEnums
const _spinTransferTriggerSelectorEnums = UInt32
const TransferTriggerSelector_TransferStart = 0 |> UInt32
const TransferTriggerSelector_TransferStop = 1 |> UInt32
const TransferTriggerSelector_TransferAbort = 2 |> UInt32
const TransferTriggerSelector_TransferPause = 3 |> UInt32
const TransferTriggerSelector_TransferResume = 4 |> UInt32
const TransferTriggerSelector_TransferActive = 5 |> UInt32
const TransferTriggerSelector_TransferBurstStart = 6 |> UInt32
const TransferTriggerSelector_TransferBurstStop = 7 |> UInt32
const NUM_TRANSFERTRIGGERSELECTOR = 8 |> UInt32
# end enum _spinTransferTriggerSelectorEnums

const spinTransferTriggerSelectorEnums = Cvoid

# begin enum _spinTransferTriggerModeEnums
const _spinTransferTriggerModeEnums = UInt32
const TransferTriggerMode_Off = 0 |> UInt32
const TransferTriggerMode_On = 1 |> UInt32
const NUM_TRANSFERTRIGGERMODE = 2 |> UInt32
# end enum _spinTransferTriggerModeEnums

const spinTransferTriggerModeEnums = Cvoid

# begin enum _spinTransferTriggerSourceEnums
const _spinTransferTriggerSourceEnums = UInt32
const TransferTriggerSource_Line0 = 0 |> UInt32
const TransferTriggerSource_Line1 = 1 |> UInt32
const TransferTriggerSource_Line2 = 2 |> UInt32
const TransferTriggerSource_Counter0Start = 3 |> UInt32
const TransferTriggerSource_Counter1Start = 4 |> UInt32
const TransferTriggerSource_Counter2Start = 5 |> UInt32
const TransferTriggerSource_Counter0End = 6 |> UInt32
const TransferTriggerSource_Counter1End = 7 |> UInt32
const TransferTriggerSource_Counter2End = 8 |> UInt32
const TransferTriggerSource_Timer0Start = 9 |> UInt32
const TransferTriggerSource_Timer1Start = 10 |> UInt32
const TransferTriggerSource_Timer2Start = 11 |> UInt32
const TransferTriggerSource_Timer0End = 12 |> UInt32
const TransferTriggerSource_Timer1End = 13 |> UInt32
const TransferTriggerSource_Timer2End = 14 |> UInt32
const TransferTriggerSource_SoftwareSignal0 = 15 |> UInt32
const TransferTriggerSource_SoftwareSignal1 = 16 |> UInt32
const TransferTriggerSource_SoftwareSignal2 = 17 |> UInt32
const TransferTriggerSource_Action0 = 18 |> UInt32
const TransferTriggerSource_Action1 = 19 |> UInt32
const TransferTriggerSource_Action2 = 20 |> UInt32
const NUM_TRANSFERTRIGGERSOURCE = 21 |> UInt32
# end enum _spinTransferTriggerSourceEnums

const spinTransferTriggerSourceEnums = Cvoid

# begin enum _spinTransferTriggerActivationEnums
const _spinTransferTriggerActivationEnums = UInt32
const TransferTriggerActivation_RisingEdge = 0 |> UInt32
const TransferTriggerActivation_FallingEdge = 1 |> UInt32
const TransferTriggerActivation_AnyEdge = 2 |> UInt32
const TransferTriggerActivation_LevelHigh = 3 |> UInt32
const TransferTriggerActivation_LevelLow = 4 |> UInt32
const NUM_TRANSFERTRIGGERACTIVATION = 5 |> UInt32
# end enum _spinTransferTriggerActivationEnums

const spinTransferTriggerActivationEnums = Cvoid

# begin enum _spinTransferStatusSelectorEnums
const _spinTransferStatusSelectorEnums = UInt32
const TransferStatusSelector_Streaming = 0 |> UInt32
const TransferStatusSelector_Paused = 1 |> UInt32
const TransferStatusSelector_Stopping = 2 |> UInt32
const TransferStatusSelector_Stopped = 3 |> UInt32
const TransferStatusSelector_QueueOverflow = 4 |> UInt32
const NUM_TRANSFERSTATUSSELECTOR = 5 |> UInt32
# end enum _spinTransferStatusSelectorEnums

const spinTransferStatusSelectorEnums = Cvoid

# begin enum _spinTransferComponentSelectorEnums
const _spinTransferComponentSelectorEnums = UInt32
const TransferComponentSelector_Red = 0 |> UInt32
const TransferComponentSelector_Green = 1 |> UInt32
const TransferComponentSelector_Blue = 2 |> UInt32
const TransferComponentSelector_All = 3 |> UInt32
const NUM_TRANSFERCOMPONENTSELECTOR = 4 |> UInt32
# end enum _spinTransferComponentSelectorEnums

const spinTransferComponentSelectorEnums = Cvoid

# begin enum _spinScan3dDistanceUnitEnums
const _spinScan3dDistanceUnitEnums = UInt32
const Scan3dDistanceUnit_Millimeter = 0 |> UInt32
const Scan3dDistanceUnit_Inch = 1 |> UInt32
const NUM_SCAN3DDISTANCEUNIT = 2 |> UInt32
# end enum _spinScan3dDistanceUnitEnums

const spinScan3dDistanceUnitEnums = Cvoid

# begin enum _spinScan3dCoordinateSystemEnums
const _spinScan3dCoordinateSystemEnums = UInt32
const Scan3dCoordinateSystem_Cartesian = 0 |> UInt32
const Scan3dCoordinateSystem_Spherical = 1 |> UInt32
const Scan3dCoordinateSystem_Cylindrical = 2 |> UInt32
const NUM_SCAN3DCOORDINATESYSTEM = 3 |> UInt32
# end enum _spinScan3dCoordinateSystemEnums

const spinScan3dCoordinateSystemEnums = Cvoid

# begin enum _spinScan3dOutputModeEnums
const _spinScan3dOutputModeEnums = UInt32
const Scan3dOutputMode_UncalibratedC = 0 |> UInt32
const Scan3dOutputMode_CalibratedABC_Grid = 1 |> UInt32
const Scan3dOutputMode_CalibratedABC_PointCloud = 2 |> UInt32
const Scan3dOutputMode_CalibratedAC = 3 |> UInt32
const Scan3dOutputMode_CalibratedAC_Linescan = 4 |> UInt32
const Scan3dOutputMode_CalibratedC = 5 |> UInt32
const Scan3dOutputMode_CalibratedC_Linescan = 6 |> UInt32
const Scan3dOutputMode_RectifiedC = 7 |> UInt32
const Scan3dOutputMode_RectifiedC_Linescan = 8 |> UInt32
const Scan3dOutputMode_DisparityC = 9 |> UInt32
const Scan3dOutputMode_DisparityC_Linescan = 10 |> UInt32
const NUM_SCAN3DOUTPUTMODE = 11 |> UInt32
# end enum _spinScan3dOutputModeEnums

const spinScan3dOutputModeEnums = Cvoid

# begin enum _spinScan3dCoordinateSystemReferenceEnums
const _spinScan3dCoordinateSystemReferenceEnums = UInt32
const Scan3dCoordinateSystemReference_Anchor = 0 |> UInt32
const Scan3dCoordinateSystemReference_Transformed = 1 |> UInt32
const NUM_SCAN3DCOORDINATESYSTEMREFERENCE = 2 |> UInt32
# end enum _spinScan3dCoordinateSystemReferenceEnums

const spinScan3dCoordinateSystemReferenceEnums = Cvoid

# begin enum _spinScan3dCoordinateSelectorEnums
const _spinScan3dCoordinateSelectorEnums = UInt32
const Scan3dCoordinateSelector_CoordinateA = 0 |> UInt32
const Scan3dCoordinateSelector_CoordinateB = 1 |> UInt32
const Scan3dCoordinateSelector_CoordinateC = 2 |> UInt32
const NUM_SCAN3DCOORDINATESELECTOR = 3 |> UInt32
# end enum _spinScan3dCoordinateSelectorEnums

const spinScan3dCoordinateSelectorEnums = Cvoid

# begin enum _spinScan3dCoordinateTransformSelectorEnums
const _spinScan3dCoordinateTransformSelectorEnums = UInt32
const Scan3dCoordinateTransformSelector_RotationX = 0 |> UInt32
const Scan3dCoordinateTransformSelector_RotationY = 1 |> UInt32
const Scan3dCoordinateTransformSelector_RotationZ = 2 |> UInt32
const Scan3dCoordinateTransformSelector_TranslationX = 3 |> UInt32
const Scan3dCoordinateTransformSelector_TranslationY = 4 |> UInt32
const Scan3dCoordinateTransformSelector_TranslationZ = 5 |> UInt32
const NUM_SCAN3DCOORDINATETRANSFORMSELECTOR = 6 |> UInt32
# end enum _spinScan3dCoordinateTransformSelectorEnums

const spinScan3dCoordinateTransformSelectorEnums = Cvoid

# begin enum _spinScan3dCoordinateReferenceSelectorEnums
const _spinScan3dCoordinateReferenceSelectorEnums = UInt32
const Scan3dCoordinateReferenceSelector_RotationX = 0 |> UInt32
const Scan3dCoordinateReferenceSelector_RotationY = 1 |> UInt32
const Scan3dCoordinateReferenceSelector_RotationZ = 2 |> UInt32
const Scan3dCoordinateReferenceSelector_TranslationX = 3 |> UInt32
const Scan3dCoordinateReferenceSelector_TranslationY = 4 |> UInt32
const Scan3dCoordinateReferenceSelector_TranslationZ = 5 |> UInt32
const NUM_SCAN3DCOORDINATEREFERENCESELECTOR = 6 |> UInt32
# end enum _spinScan3dCoordinateReferenceSelectorEnums

const spinScan3dCoordinateReferenceSelectorEnums = Cvoid

# begin enum _spinChunkImageComponentEnums
const _spinChunkImageComponentEnums = UInt32
const ChunkImageComponent_Intensity = 0 |> UInt32
const ChunkImageComponent_Color = 1 |> UInt32
const ChunkImageComponent_Infrared = 2 |> UInt32
const ChunkImageComponent_Ultraviolet = 3 |> UInt32
const ChunkImageComponent_Range = 4 |> UInt32
const ChunkImageComponent_Disparity = 5 |> UInt32
const ChunkImageComponent_Confidence = 6 |> UInt32
const ChunkImageComponent_Scatter = 7 |> UInt32
const NUM_CHUNKIMAGECOMPONENT = 8 |> UInt32
# end enum _spinChunkImageComponentEnums

const spinChunkImageComponentEnums = Cvoid

# begin enum _spinChunkCounterSelectorEnums
const _spinChunkCounterSelectorEnums = UInt32
const ChunkCounterSelector_Counter0 = 0 |> UInt32
const ChunkCounterSelector_Counter1 = 1 |> UInt32
const ChunkCounterSelector_Counter2 = 2 |> UInt32
const NUM_CHUNKCOUNTERSELECTOR = 3 |> UInt32
# end enum _spinChunkCounterSelectorEnums

const spinChunkCounterSelectorEnums = Cvoid

# begin enum _spinChunkTimerSelectorEnums
const _spinChunkTimerSelectorEnums = UInt32
const ChunkTimerSelector_Timer0 = 0 |> UInt32
const ChunkTimerSelector_Timer1 = 1 |> UInt32
const ChunkTimerSelector_Timer2 = 2 |> UInt32
const NUM_CHUNKTIMERSELECTOR = 3 |> UInt32
# end enum _spinChunkTimerSelectorEnums

const spinChunkTimerSelectorEnums = Cvoid

# begin enum _spinChunkEncoderSelectorEnums
const _spinChunkEncoderSelectorEnums = UInt32
const ChunkEncoderSelector_Encoder0 = 0 |> UInt32
const ChunkEncoderSelector_Encoder1 = 1 |> UInt32
const ChunkEncoderSelector_Encoder2 = 2 |> UInt32
const NUM_CHUNKENCODERSELECTOR = 3 |> UInt32
# end enum _spinChunkEncoderSelectorEnums

const spinChunkEncoderSelectorEnums = Cvoid

# begin enum _spinChunkEncoderStatusEnums
const _spinChunkEncoderStatusEnums = UInt32
const ChunkEncoderStatus_EncoderUp = 0 |> UInt32
const ChunkEncoderStatus_EncoderDown = 1 |> UInt32
const ChunkEncoderStatus_EncoderIdle = 2 |> UInt32
const ChunkEncoderStatus_EncoderStatic = 3 |> UInt32
const NUM_CHUNKENCODERSTATUS = 4 |> UInt32
# end enum _spinChunkEncoderStatusEnums

const spinChunkEncoderStatusEnums = Cvoid

# begin enum _spinChunkExposureTimeSelectorEnums
const _spinChunkExposureTimeSelectorEnums = UInt32
const ChunkExposureTimeSelector_Common = 0 |> UInt32
const ChunkExposureTimeSelector_Red = 1 |> UInt32
const ChunkExposureTimeSelector_Green = 2 |> UInt32
const ChunkExposureTimeSelector_Blue = 3 |> UInt32
const ChunkExposureTimeSelector_Cyan = 4 |> UInt32
const ChunkExposureTimeSelector_Magenta = 5 |> UInt32
const ChunkExposureTimeSelector_Yellow = 6 |> UInt32
const ChunkExposureTimeSelector_Infrared = 7 |> UInt32
const ChunkExposureTimeSelector_Ultraviolet = 8 |> UInt32
const ChunkExposureTimeSelector_Stage1 = 9 |> UInt32
const ChunkExposureTimeSelector_Stage2 = 10 |> UInt32
const NUM_CHUNKEXPOSURETIMESELECTOR = 11 |> UInt32
# end enum _spinChunkExposureTimeSelectorEnums

const spinChunkExposureTimeSelectorEnums = Cvoid

# begin enum _spinChunkSourceIDEnums
const _spinChunkSourceIDEnums = UInt32
const ChunkSourceID_Source0 = 0 |> UInt32
const ChunkSourceID_Source1 = 1 |> UInt32
const ChunkSourceID_Source2 = 2 |> UInt32
const NUM_CHUNKSOURCEID = 3 |> UInt32
# end enum _spinChunkSourceIDEnums

const spinChunkSourceIDEnums = Cvoid

# begin enum _spinChunkRegionIDEnums
const _spinChunkRegionIDEnums = UInt32
const ChunkRegionID_Region0 = 0 |> UInt32
const ChunkRegionID_Region1 = 1 |> UInt32
const ChunkRegionID_Region2 = 2 |> UInt32
const NUM_CHUNKREGIONID = 3 |> UInt32
# end enum _spinChunkRegionIDEnums

const spinChunkRegionIDEnums = Cvoid

# begin enum _spinChunkTransferStreamIDEnums
const _spinChunkTransferStreamIDEnums = UInt32
const ChunkTransferStreamID_Stream0 = 0 |> UInt32
const ChunkTransferStreamID_Stream1 = 1 |> UInt32
const ChunkTransferStreamID_Stream2 = 2 |> UInt32
const ChunkTransferStreamID_Stream3 = 3 |> UInt32
const NUM_CHUNKTRANSFERSTREAMID = 4 |> UInt32
# end enum _spinChunkTransferStreamIDEnums

const spinChunkTransferStreamIDEnums = Cvoid

# begin enum _spinChunkScan3dDistanceUnitEnums
const _spinChunkScan3dDistanceUnitEnums = UInt32
const ChunkScan3dDistanceUnit_Millimeter = 0 |> UInt32
const ChunkScan3dDistanceUnit_Inch = 1 |> UInt32
const NUM_CHUNKSCAN3DDISTANCEUNIT = 2 |> UInt32
# end enum _spinChunkScan3dDistanceUnitEnums

const spinChunkScan3dDistanceUnitEnums = Cvoid

# begin enum _spinChunkScan3dOutputModeEnums
const _spinChunkScan3dOutputModeEnums = UInt32
const ChunkScan3dOutputMode_UncalibratedC = 0 |> UInt32
const ChunkScan3dOutputMode_CalibratedABC_Grid = 1 |> UInt32
const ChunkScan3dOutputMode_CalibratedABC_PointCloud = 2 |> UInt32
const ChunkScan3dOutputMode_CalibratedAC = 3 |> UInt32
const ChunkScan3dOutputMode_CalibratedAC_Linescan = 4 |> UInt32
const ChunkScan3dOutputMode_CalibratedC = 5 |> UInt32
const ChunkScan3dOutputMode_CalibratedC_Linescan = 6 |> UInt32
const ChunkScan3dOutputMode_RectifiedC = 7 |> UInt32
const ChunkScan3dOutputMode_RectifiedC_Linescan = 8 |> UInt32
const ChunkScan3dOutputMode_DisparityC = 9 |> UInt32
const ChunkScan3dOutputMode_DisparityC_Linescan = 10 |> UInt32
const NUM_CHUNKSCAN3DOUTPUTMODE = 11 |> UInt32
# end enum _spinChunkScan3dOutputModeEnums

const spinChunkScan3dOutputModeEnums = Cvoid

# begin enum _spinChunkScan3dCoordinateSystemEnums
const _spinChunkScan3dCoordinateSystemEnums = UInt32
const ChunkScan3dCoordinateSystem_Cartesian = 0 |> UInt32
const ChunkScan3dCoordinateSystem_Spherical = 1 |> UInt32
const ChunkScan3dCoordinateSystem_Cylindrical = 2 |> UInt32
const NUM_CHUNKSCAN3DCOORDINATESYSTEM = 3 |> UInt32
# end enum _spinChunkScan3dCoordinateSystemEnums

const spinChunkScan3dCoordinateSystemEnums = Cvoid

# begin enum _spinChunkScan3dCoordinateSystemReferenceEnums
const _spinChunkScan3dCoordinateSystemReferenceEnums = UInt32
const ChunkScan3dCoordinateSystemReference_Anchor = 0 |> UInt32
const ChunkScan3dCoordinateSystemReference_Transformed = 1 |> UInt32
const NUM_CHUNKSCAN3DCOORDINATESYSTEMREFERENCE = 2 |> UInt32
# end enum _spinChunkScan3dCoordinateSystemReferenceEnums

const spinChunkScan3dCoordinateSystemReferenceEnums = Cvoid

# begin enum _spinChunkScan3dCoordinateSelectorEnums
const _spinChunkScan3dCoordinateSelectorEnums = UInt32
const ChunkScan3dCoordinateSelector_CoordinateA = 0 |> UInt32
const ChunkScan3dCoordinateSelector_CoordinateB = 1 |> UInt32
const ChunkScan3dCoordinateSelector_CoordinateC = 2 |> UInt32
const NUM_CHUNKSCAN3DCOORDINATESELECTOR = 3 |> UInt32
# end enum _spinChunkScan3dCoordinateSelectorEnums

const spinChunkScan3dCoordinateSelectorEnums = Cvoid

# begin enum _spinChunkScan3dCoordinateTransformSelectorEnums
const _spinChunkScan3dCoordinateTransformSelectorEnums = UInt32
const ChunkScan3dCoordinateTransformSelector_RotationX = 0 |> UInt32
const ChunkScan3dCoordinateTransformSelector_RotationY = 1 |> UInt32
const ChunkScan3dCoordinateTransformSelector_RotationZ = 2 |> UInt32
const ChunkScan3dCoordinateTransformSelector_TranslationX = 3 |> UInt32
const ChunkScan3dCoordinateTransformSelector_TranslationY = 4 |> UInt32
const ChunkScan3dCoordinateTransformSelector_TranslationZ = 5 |> UInt32
const NUM_CHUNKSCAN3DCOORDINATETRANSFORMSELECTOR = 6 |> UInt32
# end enum _spinChunkScan3dCoordinateTransformSelectorEnums

const spinChunkScan3dCoordinateTransformSelectorEnums = Cvoid

# begin enum _spinChunkScan3dCoordinateReferenceSelectorEnums
const _spinChunkScan3dCoordinateReferenceSelectorEnums = UInt32
const ChunkScan3dCoordinateReferenceSelector_RotationX = 0 |> UInt32
const ChunkScan3dCoordinateReferenceSelector_RotationY = 1 |> UInt32
const ChunkScan3dCoordinateReferenceSelector_RotationZ = 2 |> UInt32
const ChunkScan3dCoordinateReferenceSelector_TranslationX = 3 |> UInt32
const ChunkScan3dCoordinateReferenceSelector_TranslationY = 4 |> UInt32
const ChunkScan3dCoordinateReferenceSelector_TranslationZ = 5 |> UInt32
const NUM_CHUNKSCAN3DCOORDINATEREFERENCESELECTOR = 6 |> UInt32
# end enum _spinChunkScan3dCoordinateReferenceSelectorEnums

const spinChunkScan3dCoordinateReferenceSelectorEnums = Cvoid

# begin enum _spinDeviceTapGeometryEnums
const _spinDeviceTapGeometryEnums = UInt32
const DeviceTapGeometry_Geometry_1X_1Y = 0 |> UInt32
const DeviceTapGeometry_Geometry_1X2_1Y = 1 |> UInt32
const DeviceTapGeometry_Geometry_1X2_1Y2 = 2 |> UInt32
const DeviceTapGeometry_Geometry_2X_1Y = 3 |> UInt32
const DeviceTapGeometry_Geometry_2X_1Y2Geometry_2XE_1Y = 4 |> UInt32
const DeviceTapGeometry_Geometry_2XE_1Y2 = 5 |> UInt32
const DeviceTapGeometry_Geometry_2XM_1Y = 6 |> UInt32
const DeviceTapGeometry_Geometry_2XM_1Y2 = 7 |> UInt32
const DeviceTapGeometry_Geometry_1X_1Y2 = 8 |> UInt32
const DeviceTapGeometry_Geometry_1X_2YE = 9 |> UInt32
const DeviceTapGeometry_Geometry_1X3_1Y = 10 |> UInt32
const DeviceTapGeometry_Geometry_3X_1Y = 11 |> UInt32
const DeviceTapGeometry_Geometry_1X = 12 |> UInt32
const DeviceTapGeometry_Geometry_1X2 = 13 |> UInt32
const DeviceTapGeometry_Geometry_2X = 14 |> UInt32
const DeviceTapGeometry_Geometry_2XE = 15 |> UInt32
const DeviceTapGeometry_Geometry_2XM = 16 |> UInt32
const DeviceTapGeometry_Geometry_1X3 = 17 |> UInt32
const DeviceTapGeometry_Geometry_3X = 18 |> UInt32
const DeviceTapGeometry_Geometry_1X4_1Y = 19 |> UInt32
const DeviceTapGeometry_Geometry_4X_1Y = 20 |> UInt32
const DeviceTapGeometry_Geometry_2X2_1Y = 21 |> UInt32
const DeviceTapGeometry_Geometry_2X2E_1YGeometry_2X2M_1Y = 22 |> UInt32
const DeviceTapGeometry_Geometry_1X2_2YE = 23 |> UInt32
const DeviceTapGeometry_Geometry_2X_2YE = 24 |> UInt32
const DeviceTapGeometry_Geometry_2XE_2YE = 25 |> UInt32
const DeviceTapGeometry_Geometry_2XM_2YE = 26 |> UInt32
const DeviceTapGeometry_Geometry_1X4 = 27 |> UInt32
const DeviceTapGeometry_Geometry_4X = 28 |> UInt32
const DeviceTapGeometry_Geometry_2X2 = 29 |> UInt32
const DeviceTapGeometry_Geometry_2X2E = 30 |> UInt32
const DeviceTapGeometry_Geometry_2X2M = 31 |> UInt32
const DeviceTapGeometry_Geometry_1X8_1Y = 32 |> UInt32
const DeviceTapGeometry_Geometry_8X_1Y = 33 |> UInt32
const DeviceTapGeometry_Geometry_4X2_1Y = 34 |> UInt32
const DeviceTapGeometry_Geometry_2X2E_2YE = 35 |> UInt32
const DeviceTapGeometry_Geometry_1X8 = 36 |> UInt32
const DeviceTapGeometry_Geometry_8X = 37 |> UInt32
const DeviceTapGeometry_Geometry_4X2 = 38 |> UInt32
const DeviceTapGeometry_Geometry_4X2E = 39 |> UInt32
const DeviceTapGeometry_Geometry_4X2E_1Y = 40 |> UInt32
const DeviceTapGeometry_Geometry_1X10_1Y = 41 |> UInt32
const DeviceTapGeometry_Geometry_10X_1Y = 42 |> UInt32
const DeviceTapGeometry_Geometry_1X10 = 43 |> UInt32
const DeviceTapGeometry_Geometry_10X = 44 |> UInt32
const NUM_DEVICETAPGEOMETRY = 45 |> UInt32
# end enum _spinDeviceTapGeometryEnums

const spinDeviceTapGeometryEnums = Cvoid

# begin enum _spinGevPhysicalLinkConfigurationEnums
const _spinGevPhysicalLinkConfigurationEnums = UInt32
const GevPhysicalLinkConfiguration_SingleLink = 0 |> UInt32
const GevPhysicalLinkConfiguration_MultiLink = 1 |> UInt32
const GevPhysicalLinkConfiguration_StaticLAG = 2 |> UInt32
const GevPhysicalLinkConfiguration_DynamicLAG = 3 |> UInt32
const NUM_GEVPHYSICALLINKCONFIGURATION = 4 |> UInt32
# end enum _spinGevPhysicalLinkConfigurationEnums

const spinGevPhysicalLinkConfigurationEnums = Cvoid

# begin enum _spinGevCurrentPhysicalLinkConfigurationEnums
const _spinGevCurrentPhysicalLinkConfigurationEnums = UInt32
const GevCurrentPhysicalLinkConfiguration_SingleLink = 0 |> UInt32
const GevCurrentPhysicalLinkConfiguration_MultiLink = 1 |> UInt32
const GevCurrentPhysicalLinkConfiguration_StaticLAG = 2 |> UInt32
const GevCurrentPhysicalLinkConfiguration_DynamicLAG = 3 |> UInt32
const NUM_GEVCURRENTPHYSICALLINKCONFIGURATION = 4 |> UInt32
# end enum _spinGevCurrentPhysicalLinkConfigurationEnums

const spinGevCurrentPhysicalLinkConfigurationEnums = Cvoid

# begin enum _spinGevIPConfigurationStatusEnums
const _spinGevIPConfigurationStatusEnums = UInt32
const GevIPConfigurationStatus_None = 0 |> UInt32
const GevIPConfigurationStatus_PersistentIP = 1 |> UInt32
const GevIPConfigurationStatus_DHCP = 2 |> UInt32
const GevIPConfigurationStatus_LLA = 3 |> UInt32
const GevIPConfigurationStatus_ForceIP = 4 |> UInt32
const NUM_GEVIPCONFIGURATIONSTATUS = 5 |> UInt32
# end enum _spinGevIPConfigurationStatusEnums

const spinGevIPConfigurationStatusEnums = Cvoid

# begin enum _spinGevGVCPExtendedStatusCodesSelectorEnums
const _spinGevGVCPExtendedStatusCodesSelectorEnums = UInt32
const GevGVCPExtendedStatusCodesSelector_Version1_1 = 0 |> UInt32
const GevGVCPExtendedStatusCodesSelector_Version2_0 = 1 |> UInt32
const NUM_GEVGVCPEXTENDEDSTATUSCODESSELECTOR = 2 |> UInt32
# end enum _spinGevGVCPExtendedStatusCodesSelectorEnums

const spinGevGVCPExtendedStatusCodesSelectorEnums = Cvoid

# begin enum _spinGevGVSPExtendedIDModeEnums
const _spinGevGVSPExtendedIDModeEnums = UInt32
const GevGVSPExtendedIDMode_Off = 0 |> UInt32
const GevGVSPExtendedIDMode_On = 1 |> UInt32
const NUM_GEVGVSPEXTENDEDIDMODE = 2 |> UInt32
# end enum _spinGevGVSPExtendedIDModeEnums

const spinGevGVSPExtendedIDModeEnums = Cvoid

# begin enum _spinClConfigurationEnums
const _spinClConfigurationEnums = UInt32
const ClConfiguration_Base = 0 |> UInt32
const ClConfiguration_Medium = 1 |> UInt32
const ClConfiguration_Full = 2 |> UInt32
const ClConfiguration_DualBase = 3 |> UInt32
const ClConfiguration_EightyBit = 4 |> UInt32
const NUM_CLCONFIGURATION = 5 |> UInt32
# end enum _spinClConfigurationEnums

const spinClConfigurationEnums = Cvoid

# begin enum _spinClTimeSlotsCountEnums
const _spinClTimeSlotsCountEnums = UInt32
const ClTimeSlotsCount_One = 0 |> UInt32
const ClTimeSlotsCount_Two = 1 |> UInt32
const ClTimeSlotsCount_Three = 2 |> UInt32
const NUM_CLTIMESLOTSCOUNT = 3 |> UInt32
# end enum _spinClTimeSlotsCountEnums

const spinClTimeSlotsCountEnums = Cvoid

# begin enum _spinCxpLinkConfigurationStatusEnums
const _spinCxpLinkConfigurationStatusEnums = UInt32
const CxpLinkConfigurationStatus_None = 0 |> UInt32
const CxpLinkConfigurationStatus_Pending = 1 |> UInt32
const CxpLinkConfigurationStatus_CXP1_X1 = 2 |> UInt32
const CxpLinkConfigurationStatus_CXP2_X1 = 3 |> UInt32
const CxpLinkConfigurationStatus_CXP3_X1 = 4 |> UInt32
const CxpLinkConfigurationStatus_CXP5_X1 = 5 |> UInt32
const CxpLinkConfigurationStatus_CXP6_X1 = 6 |> UInt32
const CxpLinkConfigurationStatus_CXP1_X2 = 7 |> UInt32
const CxpLinkConfigurationStatus_CXP2_X2 = 8 |> UInt32
const CxpLinkConfigurationStatus_CXP3_X2 = 9 |> UInt32
const CxpLinkConfigurationStatus_CXP5_X2 = 10 |> UInt32
const CxpLinkConfigurationStatus_CXP6_X2 = 11 |> UInt32
const CxpLinkConfigurationStatus_CXP1_X3 = 12 |> UInt32
const CxpLinkConfigurationStatus_CXP2_X3 = 13 |> UInt32
const CxpLinkConfigurationStatus_CXP3_X3 = 14 |> UInt32
const CxpLinkConfigurationStatus_CXP5_X3 = 15 |> UInt32
const CxpLinkConfigurationStatus_CXP6_X3 = 16 |> UInt32
const CxpLinkConfigurationStatus_CXP1_X4 = 17 |> UInt32
const CxpLinkConfigurationStatus_CXP2_X4 = 18 |> UInt32
const CxpLinkConfigurationStatus_CXP3_X4 = 19 |> UInt32
const CxpLinkConfigurationStatus_CXP5_X4 = 20 |> UInt32
const CxpLinkConfigurationStatus_CXP6_X4 = 21 |> UInt32
const CxpLinkConfigurationStatus_CXP1_X5 = 22 |> UInt32
const CxpLinkConfigurationStatus_CXP2_X5 = 23 |> UInt32
const CxpLinkConfigurationStatus_CXP3_X5 = 24 |> UInt32
const CxpLinkConfigurationStatus_CXP5_X5 = 25 |> UInt32
const CxpLinkConfigurationStatus_CXP6_X5 = 26 |> UInt32
const CxpLinkConfigurationStatus_CXP1_X6 = 27 |> UInt32
const CxpLinkConfigurationStatus_CXP2_X6 = 28 |> UInt32
const CxpLinkConfigurationStatus_CXP3_X6 = 29 |> UInt32
const CxpLinkConfigurationStatus_CXP5_X6 = 30 |> UInt32
const CxpLinkConfigurationStatus_CXP6_X6 = 31 |> UInt32
const NUM_CXPLINKCONFIGURATIONSTATUS = 32 |> UInt32
# end enum _spinCxpLinkConfigurationStatusEnums

const spinCxpLinkConfigurationStatusEnums = Cvoid

# begin enum _spinCxpLinkConfigurationPreferredEnums
const _spinCxpLinkConfigurationPreferredEnums = UInt32
const CxpLinkConfigurationPreferred_CXP1_X1 = 0 |> UInt32
const CxpLinkConfigurationPreferred_CXP2_X1 = 1 |> UInt32
const CxpLinkConfigurationPreferred_CXP3_X1 = 2 |> UInt32
const CxpLinkConfigurationPreferred_CXP5_X1 = 3 |> UInt32
const CxpLinkConfigurationPreferred_CXP6_X1 = 4 |> UInt32
const CxpLinkConfigurationPreferred_CXP1_X2 = 5 |> UInt32
const CxpLinkConfigurationPreferred_CXP2_X2 = 6 |> UInt32
const CxpLinkConfigurationPreferred_CXP3_X2 = 7 |> UInt32
const CxpLinkConfigurationPreferred_CXP5_X2 = 8 |> UInt32
const CxpLinkConfigurationPreferred_CXP6_X2 = 9 |> UInt32
const CxpLinkConfigurationPreferred_CXP1_X3 = 10 |> UInt32
const CxpLinkConfigurationPreferred_CXP2_X3 = 11 |> UInt32
const CxpLinkConfigurationPreferred_CXP3_X3 = 12 |> UInt32
const CxpLinkConfigurationPreferred_CXP5_X3 = 13 |> UInt32
const CxpLinkConfigurationPreferred_CXP6_X3 = 14 |> UInt32
const CxpLinkConfigurationPreferred_CXP1_X4 = 15 |> UInt32
const CxpLinkConfigurationPreferred_CXP2_X4 = 16 |> UInt32
const CxpLinkConfigurationPreferred_CXP3_X4 = 17 |> UInt32
const CxpLinkConfigurationPreferred_CXP5_X4 = 18 |> UInt32
const CxpLinkConfigurationPreferred_CXP6_X4 = 19 |> UInt32
const CxpLinkConfigurationPreferred_CXP1_X5 = 20 |> UInt32
const CxpLinkConfigurationPreferred_CXP2_X5 = 21 |> UInt32
const CxpLinkConfigurationPreferred_CXP3_X5 = 22 |> UInt32
const CxpLinkConfigurationPreferred_CXP5_X5 = 23 |> UInt32
const CxpLinkConfigurationPreferred_CXP6_X5 = 24 |> UInt32
const CxpLinkConfigurationPreferred_CXP1_X6 = 25 |> UInt32
const CxpLinkConfigurationPreferred_CXP2_X6 = 26 |> UInt32
const CxpLinkConfigurationPreferred_CXP3_X6 = 27 |> UInt32
const CxpLinkConfigurationPreferred_CXP5_X6 = 28 |> UInt32
const CxpLinkConfigurationPreferred_CXP6_X6 = 29 |> UInt32
const NUM_CXPLINKCONFIGURATIONPREFERRED = 30 |> UInt32
# end enum _spinCxpLinkConfigurationPreferredEnums

const spinCxpLinkConfigurationPreferredEnums = Cvoid

# begin enum _spinCxpLinkConfigurationEnums
const _spinCxpLinkConfigurationEnums = UInt32
const CxpLinkConfiguration_Auto = 0 |> UInt32
const CxpLinkConfiguration_CXP1_X1 = 1 |> UInt32
const CxpLinkConfiguration_CXP2_X1 = 2 |> UInt32
const CxpLinkConfiguration_CXP3_X1 = 3 |> UInt32
const CxpLinkConfiguration_CXP5_X1 = 4 |> UInt32
const CxpLinkConfiguration_CXP6_X1 = 5 |> UInt32
const CxpLinkConfiguration_CXP1_X2 = 6 |> UInt32
const CxpLinkConfiguration_CXP2_X2 = 7 |> UInt32
const CxpLinkConfiguration_CXP3_X2 = 8 |> UInt32
const CxpLinkConfiguration_CXP5_X2 = 9 |> UInt32
const CxpLinkConfiguration_CXP6_X2 = 10 |> UInt32
const CxpLinkConfiguration_CXP1_X3 = 11 |> UInt32
const CxpLinkConfiguration_CXP2_X3 = 12 |> UInt32
const CxpLinkConfiguration_CXP3_X3 = 13 |> UInt32
const CxpLinkConfiguration_CXP5_X3 = 14 |> UInt32
const CxpLinkConfiguration_CXP6_X3 = 15 |> UInt32
const CxpLinkConfiguration_CXP1_X4 = 16 |> UInt32
const CxpLinkConfiguration_CXP2_X4 = 17 |> UInt32
const CxpLinkConfiguration_CXP3_X4 = 18 |> UInt32
const CxpLinkConfiguration_CXP5_X4 = 19 |> UInt32
const CxpLinkConfiguration_CXP6_X4 = 20 |> UInt32
const CxpLinkConfiguration_CXP1_X5 = 21 |> UInt32
const CxpLinkConfiguration_CXP2_X5 = 22 |> UInt32
const CxpLinkConfiguration_CXP3_X5 = 23 |> UInt32
const CxpLinkConfiguration_CXP5_X5 = 24 |> UInt32
const CxpLinkConfiguration_CXP6_X5 = 25 |> UInt32
const CxpLinkConfiguration_CXP1_X6 = 26 |> UInt32
const CxpLinkConfiguration_CXP2_X6 = 27 |> UInt32
const CxpLinkConfiguration_CXP3_X6 = 28 |> UInt32
const CxpLinkConfiguration_CXP5_X6 = 29 |> UInt32
const CxpLinkConfiguration_CXP6_X6 = 30 |> UInt32
const NUM_CXPLINKCONFIGURATION = 31 |> UInt32
# end enum _spinCxpLinkConfigurationEnums

const spinCxpLinkConfigurationEnums = Cvoid

# begin enum _spinCxpConnectionTestModeEnums
const _spinCxpConnectionTestModeEnums = UInt32
const CxpConnectionTestMode_Off = 0 |> UInt32
const CxpConnectionTestMode_Mode1 = 1 |> UInt32
const NUM_CXPCONNECTIONTESTMODE = 2 |> UInt32
# end enum _spinCxpConnectionTestModeEnums

const spinCxpConnectionTestModeEnums = Cvoid

# begin enum _spinCxpPoCxpStatusEnums
const _spinCxpPoCxpStatusEnums = UInt32
const CxpPoCxpStatus_Auto = 0 |> UInt32
const CxpPoCxpStatus_Off = 1 |> UInt32
const CxpPoCxpStatus_Tripped = 2 |> UInt32
const NUM_CXPPOCXPSTATUS = 3 |> UInt32
# end enum _spinCxpPoCxpStatusEnums

const spinCxpPoCxpStatusEnums = Cvoid

struct _spinChunkData
    m_blackLevel::Cdouble
    m_frameID::Int64
    m_exposureTime::Cdouble
    m_timestamp::Int64
    m_exposureEndLineStatusAll::Int64
    m_width::Int64
    m_image::Int64
    m_height::Int64
    m_gain::Cdouble
    m_sequencerSetActive::Int64
    m_cRC::Int64
    m_offsetX::Int64
    m_offsetY::Int64
    m_serialDataLength::Int64
    m_partSelector::Int64
    m_pixelDynamicRangeMin::Int64
    m_pixelDynamicRangeMax::Int64
    m_timestampLatchValue::Int64
    m_lineStatusAll::Int64
    m_counterValue::Int64
    m_timerValue::Cdouble
    m_scanLineSelector::Int64
    m_encoderValue::Int64
    m_linePitch::Int64
    m_transferBlockID::Int64
    m_transferQueueCurrentBlockCount::Int64
    m_streamChannelID::Int64
    m_scan3dCoordinateScale::Cdouble
    m_scan3dCoordinateOffset::Cdouble
    m_scan3dInvalidDataValue::Cdouble
    m_scan3dAxisMin::Cdouble
    m_scan3dAxisMax::Cdouble
    m_scan3dTransformValue::Cdouble
    m_scan3dCoordinateReferenceValue::Cdouble
    m_inferenceResult::Int64
    m_inferenceConfidence::Cdouble
end

const spinChunkData = Cvoid
const spinNodeHandle = Ptr{Cvoid}
const quickSpinStringNode = spinNodeHandle
const quickSpinIntegerNode = spinNodeHandle
const quickSpinFloatNode = spinNodeHandle
const quickSpinBooleanNode = spinNodeHandle
const quickSpinEnumerationNode = spinNodeHandle
const quickSpinCommandNode = spinNodeHandle
const quickSpinRegisterNode = spinNodeHandle

struct _quickSpin
    LUTIndex::quickSpinIntegerNode
    LUTEnable::quickSpinBooleanNode
    LUTValue::quickSpinIntegerNode
    LUTSelector::quickSpinEnumerationNode
    ExposureTime::quickSpinFloatNode
    AcquisitionStop::quickSpinCommandNode
    AcquisitionResultingFrameRate::quickSpinFloatNode
    AcquisitionLineRate::quickSpinFloatNode
    AcquisitionStart::quickSpinCommandNode
    TriggerSoftware::quickSpinCommandNode
    ExposureMode::quickSpinEnumerationNode
    AcquisitionMode::quickSpinEnumerationNode
    AcquisitionFrameCount::quickSpinIntegerNode
    TriggerSource::quickSpinEnumerationNode
    TriggerActivation::quickSpinEnumerationNode
    SensorShutterMode::quickSpinEnumerationNode
    TriggerDelay::quickSpinFloatNode
    TriggerMode::quickSpinEnumerationNode
    AcquisitionFrameRate::quickSpinFloatNode
    TriggerOverlap::quickSpinEnumerationNode
    TriggerSelector::quickSpinEnumerationNode
    AcquisitionFrameRateEnable::quickSpinBooleanNode
    ExposureAuto::quickSpinEnumerationNode
    AcquisitionBurstFrameCount::quickSpinIntegerNode
    EventTest::quickSpinIntegerNode
    EventTestTimestamp::quickSpinIntegerNode
    EventExposureEndFrameID::quickSpinIntegerNode
    EventExposureEnd::quickSpinIntegerNode
    EventExposureEndTimestamp::quickSpinIntegerNode
    EventError::quickSpinIntegerNode
    EventErrorTimestamp::quickSpinIntegerNode
    EventErrorCode::quickSpinIntegerNode
    EventErrorFrameID::quickSpinIntegerNode
    EventSelector::quickSpinEnumerationNode
    EventSerialReceiveOverflow::quickSpinBooleanNode
    EventSerialPortReceive::quickSpinIntegerNode
    EventSerialPortReceiveTimestamp::quickSpinIntegerNode
    EventSerialData::quickSpinStringNode
    EventSerialDataLength::quickSpinIntegerNode
    EventNotification::quickSpinEnumerationNode
    LogicBlockLUTRowIndex::quickSpinIntegerNode
    LogicBlockSelector::quickSpinEnumerationNode
    LogicBlockLUTInputActivation::quickSpinEnumerationNode
    LogicBlockLUTInputSelector::quickSpinEnumerationNode
    LogicBlockLUTInputSource::quickSpinEnumerationNode
    LogicBlockLUTOutputValue::quickSpinBooleanNode
    LogicBlockLUTOutputValueAll::quickSpinIntegerNode
    LogicBlockLUTSelector::quickSpinEnumerationNode
    ColorTransformationValue::quickSpinFloatNode
    ColorTransformationEnable::quickSpinBooleanNode
    ColorTransformationSelector::quickSpinEnumerationNode
    RgbTransformLightSource::quickSpinEnumerationNode
    Saturation::quickSpinFloatNode
    SaturationEnable::quickSpinBooleanNode
    ColorTransformationValueSelector::quickSpinEnumerationNode
    TimestampLatchValue::quickSpinIntegerNode
    TimestampReset::quickSpinCommandNode
    DeviceUserID::quickSpinStringNode
    DeviceTemperature::quickSpinFloatNode
    MaxDeviceResetTime::quickSpinIntegerNode
    DeviceTLVersionMinor::quickSpinIntegerNode
    DeviceSerialNumber::quickSpinStringNode
    DeviceVendorName::quickSpinStringNode
    DeviceRegistersEndianness::quickSpinEnumerationNode
    DeviceManufacturerInfo::quickSpinStringNode
    DeviceLinkSpeed::quickSpinIntegerNode
    LinkUptime::quickSpinIntegerNode
    DeviceEventChannelCount::quickSpinIntegerNode
    TimestampLatch::quickSpinCommandNode
    DeviceScanType::quickSpinEnumerationNode
    DeviceReset::quickSpinCommandNode
    DeviceCharacterSet::quickSpinEnumerationNode
    DeviceLinkThroughputLimit::quickSpinIntegerNode
    DeviceFirmwareVersion::quickSpinStringNode
    DeviceStreamChannelCount::quickSpinIntegerNode
    DeviceTLType::quickSpinEnumerationNode
    DeviceVersion::quickSpinStringNode
    DevicePowerSupplySelector::quickSpinEnumerationNode
    SensorDescription::quickSpinStringNode
    DeviceModelName::quickSpinStringNode
    DeviceTLVersionMajor::quickSpinIntegerNode
    DeviceTemperatureSelector::quickSpinEnumerationNode
    EnumerationCount::quickSpinIntegerNode
    PowerSupplyCurrent::quickSpinFloatNode
    DeviceID::quickSpinStringNode
    DeviceUptime::quickSpinIntegerNode
    DeviceLinkCurrentThroughput::quickSpinIntegerNode
    DeviceMaxThroughput::quickSpinIntegerNode
    FactoryReset::quickSpinCommandNode
    PowerSupplyVoltage::quickSpinFloatNode
    DeviceIndicatorMode::quickSpinEnumerationNode
    DeviceLinkBandwidthReserve::quickSpinFloatNode
    AasRoiOffsetY::quickSpinIntegerNode
    AasRoiOffsetX::quickSpinIntegerNode
    AutoExposureControlPriority::quickSpinEnumerationNode
    BalanceWhiteAutoLowerLimit::quickSpinFloatNode
    BalanceWhiteAutoDamping::quickSpinFloatNode
    AasRoiHeight::quickSpinIntegerNode
    AutoExposureGreyValueUpperLimit::quickSpinFloatNode
    AutoExposureTargetGreyValue::quickSpinFloatNode
    AutoExposureGainLowerLimit::quickSpinFloatNode
    AutoExposureGreyValueLowerLimit::quickSpinFloatNode
    AutoExposureMeteringMode::quickSpinEnumerationNode
    AutoExposureExposureTimeUpperLimit::quickSpinFloatNode
    AutoExposureGainUpperLimit::quickSpinFloatNode
    AutoExposureControlLoopDamping::quickSpinFloatNode
    AutoExposureEVCompensation::quickSpinFloatNode
    AutoExposureExposureTimeLowerLimit::quickSpinFloatNode
    BalanceWhiteAutoProfile::quickSpinEnumerationNode
    AutoAlgorithmSelector::quickSpinEnumerationNode
    AutoExposureTargetGreyValueAuto::quickSpinEnumerationNode
    AasRoiEnable::quickSpinBooleanNode
    AutoExposureLightingMode::quickSpinEnumerationNode
    AasRoiWidth::quickSpinIntegerNode
    BalanceWhiteAutoUpperLimit::quickSpinFloatNode
    LinkErrorCount::quickSpinIntegerNode
    GevCurrentIPConfigurationDHCP::quickSpinBooleanNode
    GevInterfaceSelector::quickSpinIntegerNode
    GevSCPD::quickSpinIntegerNode
    GevTimestampTickFrequency::quickSpinIntegerNode
    GevSCPSPacketSize::quickSpinIntegerNode
    GevCurrentDefaultGateway::quickSpinIntegerNode
    GevSCCFGUnconditionalStreaming::quickSpinBooleanNode
    GevMCTT::quickSpinIntegerNode
    GevSCPSDoNotFragment::quickSpinBooleanNode
    GevCurrentSubnetMask::quickSpinIntegerNode
    GevStreamChannelSelector::quickSpinIntegerNode
    GevCurrentIPAddress::quickSpinIntegerNode
    GevMCSP::quickSpinIntegerNode
    GevGVCPPendingTimeout::quickSpinIntegerNode
    GevIEEE1588Status::quickSpinEnumerationNode
    GevFirstURL::quickSpinStringNode
    GevMACAddress::quickSpinIntegerNode
    GevPersistentSubnetMask::quickSpinIntegerNode
    GevMCPHostPort::quickSpinIntegerNode
    GevSCPHostPort::quickSpinIntegerNode
    GevGVCPPendingAck::quickSpinBooleanNode
    GevSCPInterfaceIndex::quickSpinIntegerNode
    GevSupportedOption::quickSpinBooleanNode
    GevIEEE1588Mode::quickSpinEnumerationNode
    GevCurrentIPConfigurationLLA::quickSpinBooleanNode
    GevSCSP::quickSpinIntegerNode
    GevIEEE1588::quickSpinBooleanNode
    GevSCCFGExtendedChunkData::quickSpinBooleanNode
    GevPersistentIPAddress::quickSpinIntegerNode
    GevCurrentIPConfigurationPersistentIP::quickSpinBooleanNode
    GevIEEE1588ClockAccuracy::quickSpinEnumerationNode
    GevHeartbeatTimeout::quickSpinIntegerNode
    GevPersistentDefaultGateway::quickSpinIntegerNode
    GevCCP::quickSpinEnumerationNode
    GevMCDA::quickSpinIntegerNode
    GevSCDA::quickSpinIntegerNode
    GevSCPDirection::quickSpinIntegerNode
    GevSCPSFireTestPacket::quickSpinBooleanNode
    GevSecondURL::quickSpinStringNode
    GevSupportedOptionSelector::quickSpinEnumerationNode
    GevGVCPHeartbeatDisable::quickSpinBooleanNode
    GevMCRC::quickSpinIntegerNode
    GevSCPSBigEndian::quickSpinBooleanNode
    GevNumberOfInterfaces::quickSpinIntegerNode
    TLParamsLocked::quickSpinIntegerNode
    PayloadSize::quickSpinIntegerNode
    PacketResendRequestCount::quickSpinIntegerNode
    SharpeningEnable::quickSpinBooleanNode
    BlackLevelSelector::quickSpinEnumerationNode
    GammaEnable::quickSpinBooleanNode
    SharpeningAuto::quickSpinBooleanNode
    BlackLevelClampingEnable::quickSpinBooleanNode
    BalanceRatio::quickSpinFloatNode
    BalanceWhiteAuto::quickSpinEnumerationNode
    SharpeningThreshold::quickSpinFloatNode
    GainAuto::quickSpinEnumerationNode
    Sharpening::quickSpinFloatNode
    Gain::quickSpinFloatNode
    BalanceRatioSelector::quickSpinEnumerationNode
    GainSelector::quickSpinEnumerationNode
    BlackLevel::quickSpinFloatNode
    BlackLevelRaw::quickSpinIntegerNode
    Gamma::quickSpinFloatNode
    DefectTableIndex::quickSpinIntegerNode
    DefectTableFactoryRestore::quickSpinCommandNode
    DefectTableCoordinateY::quickSpinIntegerNode
    DefectTableSave::quickSpinCommandNode
    DefectCorrectionMode::quickSpinEnumerationNode
    DefectTableCoordinateX::quickSpinIntegerNode
    DefectTablePixelCount::quickSpinIntegerNode
    DefectCorrectStaticEnable::quickSpinBooleanNode
    DefectTableApply::quickSpinCommandNode
    UserSetFeatureEnable::quickSpinBooleanNode
    UserSetSave::quickSpinCommandNode
    UserSetSelector::quickSpinEnumerationNode
    UserSetLoad::quickSpinCommandNode
    UserSetDefault::quickSpinEnumerationNode
    SerialPortBaudRate::quickSpinEnumerationNode
    SerialPortDataBits::quickSpinIntegerNode
    SerialPortParity::quickSpinEnumerationNode
    SerialTransmitQueueMaxCharacterCount::quickSpinIntegerNode
    SerialReceiveQueueCurrentCharacterCount::quickSpinIntegerNode
    SerialPortSelector::quickSpinEnumerationNode
    SerialPortStopBits::quickSpinEnumerationNode
    SerialReceiveQueueClear::quickSpinCommandNode
    SerialReceiveFramingErrorCount::quickSpinIntegerNode
    SerialTransmitQueueCurrentCharacterCount::quickSpinIntegerNode
    SerialReceiveParityErrorCount::quickSpinIntegerNode
    SerialPortSource::quickSpinEnumerationNode
    SerialReceiveQueueMaxCharacterCount::quickSpinIntegerNode
    SequencerSetStart::quickSpinIntegerNode
    SequencerMode::quickSpinEnumerationNode
    SequencerConfigurationValid::quickSpinEnumerationNode
    SequencerSetValid::quickSpinEnumerationNode
    SequencerSetSelector::quickSpinIntegerNode
    SequencerTriggerActivation::quickSpinEnumerationNode
    SequencerConfigurationMode::quickSpinEnumerationNode
    SequencerSetSave::quickSpinCommandNode
    SequencerTriggerSource::quickSpinEnumerationNode
    SequencerSetActive::quickSpinIntegerNode
    SequencerSetNext::quickSpinIntegerNode
    SequencerSetLoad::quickSpinCommandNode
    SequencerPathSelector::quickSpinIntegerNode
    SequencerFeatureEnable::quickSpinBooleanNode
    TransferBlockCount::quickSpinIntegerNode
    TransferStart::quickSpinCommandNode
    TransferQueueMaxBlockCount::quickSpinIntegerNode
    TransferQueueCurrentBlockCount::quickSpinIntegerNode
    TransferQueueMode::quickSpinEnumerationNode
    TransferOperationMode::quickSpinEnumerationNode
    TransferStop::quickSpinCommandNode
    TransferQueueOverflowCount::quickSpinIntegerNode
    TransferControlMode::quickSpinEnumerationNode
    ChunkBlackLevel::quickSpinFloatNode
    ChunkFrameID::quickSpinIntegerNode
    ChunkSerialData::quickSpinStringNode
    ChunkExposureTime::quickSpinFloatNode
    ChunkSerialReceiveOverflow::quickSpinBooleanNode
    ChunkTimestamp::quickSpinIntegerNode
    ChunkModeActive::quickSpinBooleanNode
    ChunkExposureEndLineStatusAll::quickSpinIntegerNode
    ChunkGainSelector::quickSpinEnumerationNode
    ChunkSelector::quickSpinEnumerationNode
    ChunkBlackLevelSelector::quickSpinEnumerationNode
    ChunkWidth::quickSpinIntegerNode
    ChunkImage::quickSpinIntegerNode
    ChunkHeight::quickSpinIntegerNode
    ChunkPixelFormat::quickSpinEnumerationNode
    ChunkGain::quickSpinFloatNode
    ChunkSequencerSetActive::quickSpinIntegerNode
    ChunkCRC::quickSpinIntegerNode
    ChunkOffsetX::quickSpinIntegerNode
    ChunkOffsetY::quickSpinIntegerNode
    ChunkEnable::quickSpinBooleanNode
    ChunkSerialDataLength::quickSpinIntegerNode
    FileAccessOffset::quickSpinIntegerNode
    FileAccessLength::quickSpinIntegerNode
    FileOperationStatus::quickSpinEnumerationNode
    FileOperationExecute::quickSpinCommandNode
    FileOpenMode::quickSpinEnumerationNode
    FileOperationResult::quickSpinIntegerNode
    FileOperationSelector::quickSpinEnumerationNode
    FileSelector::quickSpinEnumerationNode
    FileSize::quickSpinIntegerNode
    BinningSelector::quickSpinEnumerationNode
    PixelDynamicRangeMin::quickSpinIntegerNode
    PixelDynamicRangeMax::quickSpinIntegerNode
    OffsetY::quickSpinIntegerNode
    BinningHorizontal::quickSpinIntegerNode
    Width::quickSpinIntegerNode
    TestPatternGeneratorSelector::quickSpinEnumerationNode
    CompressionRatio::quickSpinFloatNode
    ReverseX::quickSpinBooleanNode
    ReverseY::quickSpinBooleanNode
    TestPattern::quickSpinEnumerationNode
    PixelColorFilter::quickSpinEnumerationNode
    WidthMax::quickSpinIntegerNode
    AdcBitDepth::quickSpinEnumerationNode
    BinningVertical::quickSpinIntegerNode
    DecimationHorizontalMode::quickSpinEnumerationNode
    BinningVerticalMode::quickSpinEnumerationNode
    OffsetX::quickSpinIntegerNode
    HeightMax::quickSpinIntegerNode
    DecimationHorizontal::quickSpinIntegerNode
    PixelSize::quickSpinEnumerationNode
    SensorHeight::quickSpinIntegerNode
    DecimationSelector::quickSpinEnumerationNode
    IspEnable::quickSpinBooleanNode
    AdaptiveCompressionEnable::quickSpinBooleanNode
    ImageCompressionMode::quickSpinEnumerationNode
    DecimationVertical::quickSpinIntegerNode
    Height::quickSpinIntegerNode
    BinningHorizontalMode::quickSpinEnumerationNode
    PixelFormat::quickSpinEnumerationNode
    SensorWidth::quickSpinIntegerNode
    DecimationVerticalMode::quickSpinEnumerationNode
    TestEventGenerate::quickSpinCommandNode
    TriggerEventTest::quickSpinCommandNode
    GuiXmlManifestAddress::quickSpinIntegerNode
    Test0001::quickSpinIntegerNode
    V3_3Enable::quickSpinBooleanNode
    LineMode::quickSpinEnumerationNode
    LineSource::quickSpinEnumerationNode
    LineInputFilterSelector::quickSpinEnumerationNode
    UserOutputValue::quickSpinBooleanNode
    UserOutputValueAll::quickSpinIntegerNode
    UserOutputSelector::quickSpinEnumerationNode
    LineStatus::quickSpinBooleanNode
    LineFormat::quickSpinEnumerationNode
    LineStatusAll::quickSpinIntegerNode
    LineSelector::quickSpinEnumerationNode
    ExposureActiveMode::quickSpinEnumerationNode
    LineInverter::quickSpinBooleanNode
    LineFilterWidth::quickSpinFloatNode
    CounterTriggerActivation::quickSpinEnumerationNode
    CounterValue::quickSpinIntegerNode
    CounterSelector::quickSpinEnumerationNode
    CounterValueAtReset::quickSpinIntegerNode
    CounterStatus::quickSpinEnumerationNode
    CounterTriggerSource::quickSpinEnumerationNode
    CounterDelay::quickSpinIntegerNode
    CounterResetSource::quickSpinEnumerationNode
    CounterEventSource::quickSpinEnumerationNode
    CounterEventActivation::quickSpinEnumerationNode
    CounterDuration::quickSpinIntegerNode
    CounterResetActivation::quickSpinEnumerationNode
    DeviceType::quickSpinEnumerationNode
    DeviceFamilyName::quickSpinStringNode
    DeviceSFNCVersionMajor::quickSpinIntegerNode
    DeviceSFNCVersionMinor::quickSpinIntegerNode
    DeviceSFNCVersionSubMinor::quickSpinIntegerNode
    DeviceManifestEntrySelector::quickSpinIntegerNode
    DeviceManifestXMLMajorVersion::quickSpinIntegerNode
    DeviceManifestXMLMinorVersion::quickSpinIntegerNode
    DeviceManifestXMLSubMinorVersion::quickSpinIntegerNode
    DeviceManifestSchemaMajorVersion::quickSpinIntegerNode
    DeviceManifestSchemaMinorVersion::quickSpinIntegerNode
    DeviceManifestPrimaryURL::quickSpinStringNode
    DeviceManifestSecondaryURL::quickSpinStringNode
    DeviceTLVersionSubMinor::quickSpinIntegerNode
    DeviceGenCPVersionMajor::quickSpinIntegerNode
    DeviceGenCPVersionMinor::quickSpinIntegerNode
    DeviceConnectionSelector::quickSpinIntegerNode
    DeviceConnectionSpeed::quickSpinIntegerNode
    DeviceConnectionStatus::quickSpinEnumerationNode
    DeviceLinkSelector::quickSpinIntegerNode
    DeviceLinkThroughputLimitMode::quickSpinEnumerationNode
    DeviceLinkConnectionCount::quickSpinIntegerNode
    DeviceLinkHeartbeatMode::quickSpinEnumerationNode
    DeviceLinkHeartbeatTimeout::quickSpinFloatNode
    DeviceLinkCommandTimeout::quickSpinFloatNode
    DeviceStreamChannelSelector::quickSpinIntegerNode
    DeviceStreamChannelType::quickSpinEnumerationNode
    DeviceStreamChannelLink::quickSpinIntegerNode
    DeviceStreamChannelEndianness::quickSpinEnumerationNode
    DeviceStreamChannelPacketSize::quickSpinIntegerNode
    DeviceFeaturePersistenceStart::quickSpinCommandNode
    DeviceFeaturePersistenceEnd::quickSpinCommandNode
    DeviceRegistersStreamingStart::quickSpinCommandNode
    DeviceRegistersStreamingEnd::quickSpinCommandNode
    DeviceRegistersCheck::quickSpinCommandNode
    DeviceRegistersValid::quickSpinBooleanNode
    DeviceClockSelector::quickSpinEnumerationNode
    DeviceClockFrequency::quickSpinFloatNode
    DeviceSerialPortSelector::quickSpinEnumerationNode
    DeviceSerialPortBaudRate::quickSpinEnumerationNode
    Timestamp::quickSpinIntegerNode
    SensorTaps::quickSpinEnumerationNode
    SensorDigitizationTaps::quickSpinEnumerationNode
    RegionSelector::quickSpinEnumerationNode
    RegionMode::quickSpinEnumerationNode
    RegionDestination::quickSpinEnumerationNode
    ImageComponentSelector::quickSpinEnumerationNode
    ImageComponentEnable::quickSpinBooleanNode
    LinePitch::quickSpinIntegerNode
    PixelFormatInfoSelector::quickSpinEnumerationNode
    PixelFormatInfoID::quickSpinIntegerNode
    Deinterlacing::quickSpinEnumerationNode
    ImageCompressionRateOption::quickSpinEnumerationNode
    ImageCompressionQuality::quickSpinIntegerNode
    ImageCompressionBitrate::quickSpinFloatNode
    ImageCompressionJPEGFormatOption::quickSpinEnumerationNode
    AcquisitionAbort::quickSpinCommandNode
    AcquisitionArm::quickSpinCommandNode
    AcquisitionStatusSelector::quickSpinEnumerationNode
    AcquisitionStatus::quickSpinBooleanNode
    TriggerDivider::quickSpinIntegerNode
    TriggerMultiplier::quickSpinIntegerNode
    ExposureTimeMode::quickSpinEnumerationNode
    ExposureTimeSelector::quickSpinEnumerationNode
    GainAutoBalance::quickSpinEnumerationNode
    BlackLevelAuto::quickSpinEnumerationNode
    BlackLevelAutoBalance::quickSpinEnumerationNode
    WhiteClipSelector::quickSpinEnumerationNode
    WhiteClip::quickSpinFloatNode
    LUTValueAll::quickSpinRegisterNode
    UserOutputValueAllMask::quickSpinIntegerNode
    CounterReset::quickSpinCommandNode
    TimerSelector::quickSpinEnumerationNode
    TimerDuration::quickSpinFloatNode
    TimerDelay::quickSpinFloatNode
    TimerReset::quickSpinCommandNode
    TimerValue::quickSpinFloatNode
    TimerStatus::quickSpinEnumerationNode
    TimerTriggerSource::quickSpinEnumerationNode
    TimerTriggerActivation::quickSpinEnumerationNode
    EncoderSelector::quickSpinEnumerationNode
    EncoderSourceA::quickSpinEnumerationNode
    EncoderSourceB::quickSpinEnumerationNode
    EncoderMode::quickSpinEnumerationNode
    EncoderDivider::quickSpinIntegerNode
    EncoderOutputMode::quickSpinEnumerationNode
    EncoderStatus::quickSpinEnumerationNode
    EncoderTimeout::quickSpinFloatNode
    EncoderResetSource::quickSpinEnumerationNode
    EncoderResetActivation::quickSpinEnumerationNode
    EncoderReset::quickSpinCommandNode
    EncoderValue::quickSpinIntegerNode
    EncoderValueAtReset::quickSpinIntegerNode
    SoftwareSignalSelector::quickSpinEnumerationNode
    SoftwareSignalPulse::quickSpinCommandNode
    ActionUnconditionalMode::quickSpinEnumerationNode
    ActionDeviceKey::quickSpinIntegerNode
    ActionQueueSize::quickSpinIntegerNode
    ActionSelector::quickSpinIntegerNode
    ActionGroupMask::quickSpinIntegerNode
    ActionGroupKey::quickSpinIntegerNode
    EventAcquisitionTrigger::quickSpinIntegerNode
    EventAcquisitionTriggerTimestamp::quickSpinIntegerNode
    EventAcquisitionTriggerFrameID::quickSpinIntegerNode
    EventAcquisitionStart::quickSpinIntegerNode
    EventAcquisitionStartTimestamp::quickSpinIntegerNode
    EventAcquisitionStartFrameID::quickSpinIntegerNode
    EventAcquisitionEnd::quickSpinIntegerNode
    EventAcquisitionEndTimestamp::quickSpinIntegerNode
    EventAcquisitionEndFrameID::quickSpinIntegerNode
    EventAcquisitionTransferStart::quickSpinIntegerNode
    EventAcquisitionTransferStartTimestamp::quickSpinIntegerNode
    EventAcquisitionTransferStartFrameID::quickSpinIntegerNode
    EventAcquisitionTransferEnd::quickSpinIntegerNode
    EventAcquisitionTransferEndTimestamp::quickSpinIntegerNode
    EventAcquisitionTransferEndFrameID::quickSpinIntegerNode
    EventAcquisitionError::quickSpinIntegerNode
    EventAcquisitionErrorTimestamp::quickSpinIntegerNode
    EventAcquisitionErrorFrameID::quickSpinIntegerNode
    EventFrameTrigger::quickSpinIntegerNode
    EventFrameTriggerTimestamp::quickSpinIntegerNode
    EventFrameTriggerFrameID::quickSpinIntegerNode
    EventFrameStart::quickSpinIntegerNode
    EventFrameStartTimestamp::quickSpinIntegerNode
    EventFrameStartFrameID::quickSpinIntegerNode
    EventFrameEnd::quickSpinIntegerNode
    EventFrameEndTimestamp::quickSpinIntegerNode
    EventFrameEndFrameID::quickSpinIntegerNode
    EventFrameBurstStart::quickSpinIntegerNode
    EventFrameBurstStartTimestamp::quickSpinIntegerNode
    EventFrameBurstStartFrameID::quickSpinIntegerNode
    EventFrameBurstEnd::quickSpinIntegerNode
    EventFrameBurstEndTimestamp::quickSpinIntegerNode
    EventFrameBurstEndFrameID::quickSpinIntegerNode
    EventFrameTransferStart::quickSpinIntegerNode
    EventFrameTransferStartTimestamp::quickSpinIntegerNode
    EventFrameTransferStartFrameID::quickSpinIntegerNode
    EventFrameTransferEnd::quickSpinIntegerNode
    EventFrameTransferEndTimestamp::quickSpinIntegerNode
    EventFrameTransferEndFrameID::quickSpinIntegerNode
    EventExposureStart::quickSpinIntegerNode
    EventExposureStartTimestamp::quickSpinIntegerNode
    EventExposureStartFrameID::quickSpinIntegerNode
    EventStream0TransferStart::quickSpinIntegerNode
    EventStream0TransferStartTimestamp::quickSpinIntegerNode
    EventStream0TransferStartFrameID::quickSpinIntegerNode
    EventStream0TransferEnd::quickSpinIntegerNode
    EventStream0TransferEndTimestamp::quickSpinIntegerNode
    EventStream0TransferEndFrameID::quickSpinIntegerNode
    EventStream0TransferPause::quickSpinIntegerNode
    EventStream0TransferPauseTimestamp::quickSpinIntegerNode
    EventStream0TransferPauseFrameID::quickSpinIntegerNode
    EventStream0TransferResume::quickSpinIntegerNode
    EventStream0TransferResumeTimestamp::quickSpinIntegerNode
    EventStream0TransferResumeFrameID::quickSpinIntegerNode
    EventStream0TransferBlockStart::quickSpinIntegerNode
    EventStream0TransferBlockStartTimestamp::quickSpinIntegerNode
    EventStream0TransferBlockStartFrameID::quickSpinIntegerNode
    EventStream0TransferBlockEnd::quickSpinIntegerNode
    EventStream0TransferBlockEndTimestamp::quickSpinIntegerNode
    EventStream0TransferBlockEndFrameID::quickSpinIntegerNode
    EventStream0TransferBlockTrigger::quickSpinIntegerNode
    EventStream0TransferBlockTriggerTimestamp::quickSpinIntegerNode
    EventStream0TransferBlockTriggerFrameID::quickSpinIntegerNode
    EventStream0TransferBurstStart::quickSpinIntegerNode
    EventStream0TransferBurstStartTimestamp::quickSpinIntegerNode
    EventStream0TransferBurstStartFrameID::quickSpinIntegerNode
    EventStream0TransferBurstEnd::quickSpinIntegerNode
    EventStream0TransferBurstEndTimestamp::quickSpinIntegerNode
    EventStream0TransferBurstEndFrameID::quickSpinIntegerNode
    EventStream0TransferOverflow::quickSpinIntegerNode
    EventStream0TransferOverflowTimestamp::quickSpinIntegerNode
    EventStream0TransferOverflowFrameID::quickSpinIntegerNode
    EventSequencerSetChange::quickSpinIntegerNode
    EventSequencerSetChangeTimestamp::quickSpinIntegerNode
    EventSequencerSetChangeFrameID::quickSpinIntegerNode
    EventCounter0Start::quickSpinIntegerNode
    EventCounter0StartTimestamp::quickSpinIntegerNode
    EventCounter0StartFrameID::quickSpinIntegerNode
    EventCounter1Start::quickSpinIntegerNode
    EventCounter1StartTimestamp::quickSpinIntegerNode
    EventCounter1StartFrameID::quickSpinIntegerNode
    EventCounter0End::quickSpinIntegerNode
    EventCounter0EndTimestamp::quickSpinIntegerNode
    EventCounter0EndFrameID::quickSpinIntegerNode
    EventCounter1End::quickSpinIntegerNode
    EventCounter1EndTimestamp::quickSpinIntegerNode
    EventCounter1EndFrameID::quickSpinIntegerNode
    EventTimer0Start::quickSpinIntegerNode
    EventTimer0StartTimestamp::quickSpinIntegerNode
    EventTimer0StartFrameID::quickSpinIntegerNode
    EventTimer1Start::quickSpinIntegerNode
    EventTimer1StartTimestamp::quickSpinIntegerNode
    EventTimer1StartFrameID::quickSpinIntegerNode
    EventTimer0End::quickSpinIntegerNode
    EventTimer0EndTimestamp::quickSpinIntegerNode
    EventTimer0EndFrameID::quickSpinIntegerNode
    EventTimer1End::quickSpinIntegerNode
    EventTimer1EndTimestamp::quickSpinIntegerNode
    EventTimer1EndFrameID::quickSpinIntegerNode
    EventEncoder0Stopped::quickSpinIntegerNode
    EventEncoder0StoppedTimestamp::quickSpinIntegerNode
    EventEncoder0StoppedFrameID::quickSpinIntegerNode
    EventEncoder1Stopped::quickSpinIntegerNode
    EventEncoder1StoppedTimestamp::quickSpinIntegerNode
    EventEncoder1StoppedFrameID::quickSpinIntegerNode
    EventEncoder0Restarted::quickSpinIntegerNode
    EventEncoder0RestartedTimestamp::quickSpinIntegerNode
    EventEncoder0RestartedFrameID::quickSpinIntegerNode
    EventEncoder1Restarted::quickSpinIntegerNode
    EventEncoder1RestartedTimestamp::quickSpinIntegerNode
    EventEncoder1RestartedFrameID::quickSpinIntegerNode
    EventLine0RisingEdge::quickSpinIntegerNode
    EventLine0RisingEdgeTimestamp::quickSpinIntegerNode
    EventLine0RisingEdgeFrameID::quickSpinIntegerNode
    EventLine1RisingEdge::quickSpinIntegerNode
    EventLine1RisingEdgeTimestamp::quickSpinIntegerNode
    EventLine1RisingEdgeFrameID::quickSpinIntegerNode
    EventLine0FallingEdge::quickSpinIntegerNode
    EventLine0FallingEdgeTimestamp::quickSpinIntegerNode
    EventLine0FallingEdgeFrameID::quickSpinIntegerNode
    EventLine1FallingEdge::quickSpinIntegerNode
    EventLine1FallingEdgeTimestamp::quickSpinIntegerNode
    EventLine1FallingEdgeFrameID::quickSpinIntegerNode
    EventLine0AnyEdge::quickSpinIntegerNode
    EventLine0AnyEdgeTimestamp::quickSpinIntegerNode
    EventLine0AnyEdgeFrameID::quickSpinIntegerNode
    EventLine1AnyEdge::quickSpinIntegerNode
    EventLine1AnyEdgeTimestamp::quickSpinIntegerNode
    EventLine1AnyEdgeFrameID::quickSpinIntegerNode
    EventLinkTrigger0::quickSpinIntegerNode
    EventLinkTrigger0Timestamp::quickSpinIntegerNode
    EventLinkTrigger0FrameID::quickSpinIntegerNode
    EventLinkTrigger1::quickSpinIntegerNode
    EventLinkTrigger1Timestamp::quickSpinIntegerNode
    EventLinkTrigger1FrameID::quickSpinIntegerNode
    EventActionLate::quickSpinIntegerNode
    EventActionLateTimestamp::quickSpinIntegerNode
    EventActionLateFrameID::quickSpinIntegerNode
    EventLinkSpeedChange::quickSpinIntegerNode
    EventLinkSpeedChangeTimestamp::quickSpinIntegerNode
    EventLinkSpeedChangeFrameID::quickSpinIntegerNode
    FileAccessBuffer::quickSpinRegisterNode
    SourceCount::quickSpinIntegerNode
    SourceSelector::quickSpinEnumerationNode
    TransferSelector::quickSpinEnumerationNode
    TransferBurstCount::quickSpinIntegerNode
    TransferAbort::quickSpinCommandNode
    TransferPause::quickSpinCommandNode
    TransferResume::quickSpinCommandNode
    TransferTriggerSelector::quickSpinEnumerationNode
    TransferTriggerMode::quickSpinEnumerationNode
    TransferTriggerSource::quickSpinEnumerationNode
    TransferTriggerActivation::quickSpinEnumerationNode
    TransferStatusSelector::quickSpinEnumerationNode
    TransferStatus::quickSpinBooleanNode
    TransferComponentSelector::quickSpinEnumerationNode
    TransferStreamChannel::quickSpinIntegerNode
    Scan3dDistanceUnit::quickSpinEnumerationNode
    Scan3dCoordinateSystem::quickSpinEnumerationNode
    Scan3dOutputMode::quickSpinEnumerationNode
    Scan3dCoordinateSystemReference::quickSpinEnumerationNode
    Scan3dCoordinateSelector::quickSpinEnumerationNode
    Scan3dCoordinateScale::quickSpinFloatNode
    Scan3dCoordinateOffset::quickSpinFloatNode
    Scan3dInvalidDataFlag::quickSpinBooleanNode
    Scan3dInvalidDataValue::quickSpinFloatNode
    Scan3dAxisMin::quickSpinFloatNode
    Scan3dAxisMax::quickSpinFloatNode
    Scan3dCoordinateTransformSelector::quickSpinEnumerationNode
    Scan3dTransformValue::quickSpinFloatNode
    Scan3dCoordinateReferenceSelector::quickSpinEnumerationNode
    Scan3dCoordinateReferenceValue::quickSpinFloatNode
    ChunkPartSelector::quickSpinIntegerNode
    ChunkImageComponent::quickSpinEnumerationNode
    ChunkPixelDynamicRangeMin::quickSpinIntegerNode
    ChunkPixelDynamicRangeMax::quickSpinIntegerNode
    ChunkTimestampLatchValue::quickSpinIntegerNode
    ChunkLineStatusAll::quickSpinIntegerNode
    ChunkCounterSelector::quickSpinEnumerationNode
    ChunkCounterValue::quickSpinIntegerNode
    ChunkTimerSelector::quickSpinEnumerationNode
    ChunkTimerValue::quickSpinFloatNode
    ChunkEncoderSelector::quickSpinEnumerationNode
    ChunkScanLineSelector::quickSpinIntegerNode
    ChunkEncoderValue::quickSpinIntegerNode
    ChunkEncoderStatus::quickSpinEnumerationNode
    ChunkExposureTimeSelector::quickSpinEnumerationNode
    ChunkLinePitch::quickSpinIntegerNode
    ChunkSourceID::quickSpinEnumerationNode
    ChunkRegionID::quickSpinEnumerationNode
    ChunkTransferBlockID::quickSpinIntegerNode
    ChunkTransferStreamID::quickSpinEnumerationNode
    ChunkTransferQueueCurrentBlockCount::quickSpinIntegerNode
    ChunkStreamChannelID::quickSpinIntegerNode
    ChunkScan3dDistanceUnit::quickSpinEnumerationNode
    ChunkScan3dOutputMode::quickSpinEnumerationNode
    ChunkScan3dCoordinateSystem::quickSpinEnumerationNode
    ChunkScan3dCoordinateSystemReference::quickSpinEnumerationNode
    ChunkScan3dCoordinateSelector::quickSpinEnumerationNode
    ChunkScan3dCoordinateScale::quickSpinFloatNode
    ChunkScan3dCoordinateOffset::quickSpinFloatNode
    ChunkScan3dInvalidDataFlag::quickSpinBooleanNode
    ChunkScan3dInvalidDataValue::quickSpinFloatNode
    ChunkScan3dAxisMin::quickSpinFloatNode
    ChunkScan3dAxisMax::quickSpinFloatNode
    ChunkScan3dCoordinateTransformSelector::quickSpinEnumerationNode
    ChunkScan3dTransformValue::quickSpinFloatNode
    ChunkScan3dCoordinateReferenceSelector::quickSpinEnumerationNode
    ChunkScan3dCoordinateReferenceValue::quickSpinFloatNode
    TestPendingAck::quickSpinIntegerNode
    DeviceTapGeometry::quickSpinEnumerationNode
    GevPhysicalLinkConfiguration::quickSpinEnumerationNode
    GevCurrentPhysicalLinkConfiguration::quickSpinEnumerationNode
    GevActiveLinkCount::quickSpinIntegerNode
    GevPAUSEFrameReception::quickSpinBooleanNode
    GevPAUSEFrameTransmission::quickSpinBooleanNode
    GevIPConfigurationStatus::quickSpinEnumerationNode
    GevDiscoveryAckDelay::quickSpinIntegerNode
    GevGVCPExtendedStatusCodesSelector::quickSpinEnumerationNode
    GevGVCPExtendedStatusCodes::quickSpinBooleanNode
    GevPrimaryApplicationSwitchoverKey::quickSpinIntegerNode
    GevGVSPExtendedIDMode::quickSpinEnumerationNode
    GevPrimaryApplicationSocket::quickSpinIntegerNode
    GevPrimaryApplicationIPAddress::quickSpinIntegerNode
    GevSCCFGPacketResendDestination::quickSpinBooleanNode
    GevSCCFGAllInTransmission::quickSpinBooleanNode
    GevSCZoneCount::quickSpinIntegerNode
    GevSCZoneDirectionAll::quickSpinIntegerNode
    GevSCZoneConfigurationLock::quickSpinBooleanNode
    aPAUSEMACCtrlFramesTransmitted::quickSpinIntegerNode
    aPAUSEMACCtrlFramesReceived::quickSpinIntegerNode
    ClConfiguration::quickSpinEnumerationNode
    ClTimeSlotsCount::quickSpinEnumerationNode
    CxpLinkConfigurationStatus::quickSpinEnumerationNode
    CxpLinkConfigurationPreferred::quickSpinEnumerationNode
    CxpLinkConfiguration::quickSpinEnumerationNode
    CxpConnectionSelector::quickSpinIntegerNode
    CxpConnectionTestMode::quickSpinEnumerationNode
    CxpConnectionTestErrorCount::quickSpinIntegerNode
    CxpConnectionTestPacketCount::quickSpinIntegerNode
    CxpPoCxpAuto::quickSpinCommandNode
    CxpPoCxpTurnOff::quickSpinCommandNode
    CxpPoCxpTripReset::quickSpinCommandNode
    CxpPoCxpStatus::quickSpinEnumerationNode
    ChunkInferenceResult::quickSpinIntegerNode
    ChunkInferenceConfidence::quickSpinFloatNode
end

const quickSpin = Cvoid
const bool8_t = UInt8
const spinSystem = Ptr{Cvoid}
const spinInterfaceList = Ptr{Cvoid}
const spinInterface = Ptr{Cvoid}
const spinCameraList = Ptr{Cvoid}
const spinCamera = Ptr{Cvoid}
const spinImage = Ptr{Cvoid}
const spinImageStatistics = Ptr{Cvoid}
const spinDeviceEvent = Ptr{Cvoid}
const spinImageEvent = Ptr{Cvoid}
const spinArrivalEvent = Ptr{Cvoid}
const spinRemovalEvent = Ptr{Cvoid}
const spinInterfaceEvent = Ptr{Cvoid}
const spinLogEvent = Ptr{Cvoid}
const spinLogEventData = Ptr{Cvoid}
const spinDeviceEventData = Ptr{Cvoid}
const spinAVIRecorder = Ptr{Cvoid}
const spinVideo = Ptr{Cvoid}
const spinDeviceEventFunction = Ptr{Cvoid}
const spinImageEventFunction = Ptr{Cvoid}
const spinArrivalEventFunction = Ptr{Cvoid}
const spinRemovalEventFunction = Ptr{Cvoid}
const spinLogEventFunction = Ptr{Cvoid}

# begin enum _spinError
const _spinError = Cint
const SPINNAKER_ERR_SUCCESS = 0 |> Int32
const SPINNAKER_ERR_ERROR = -1001 |> Int32
const SPINNAKER_ERR_NOT_INITIALIZED = -1002 |> Int32
const SPINNAKER_ERR_NOT_IMPLEMENTED = -1003 |> Int32
const SPINNAKER_ERR_RESOURCE_IN_USE = -1004 |> Int32
const SPINNAKER_ERR_ACCESS_DENIED = -1005 |> Int32
const SPINNAKER_ERR_INVALID_HANDLE = -1006 |> Int32
const SPINNAKER_ERR_INVALID_ID = -1007 |> Int32
const SPINNAKER_ERR_NO_DATA = -1008 |> Int32
const SPINNAKER_ERR_INVALID_PARAMETER = -1009 |> Int32
const SPINNAKER_ERR_IO = -1010 |> Int32
const SPINNAKER_ERR_TIMEOUT = -1011 |> Int32
const SPINNAKER_ERR_ABORT = -1012 |> Int32
const SPINNAKER_ERR_INVALID_BUFFER = -1013 |> Int32
const SPINNAKER_ERR_NOT_AVAILABLE = -1014 |> Int32
const SPINNAKER_ERR_INVALID_ADDRESS = -1015 |> Int32
const SPINNAKER_ERR_BUFFER_TOO_SMALL = -1016 |> Int32
const SPINNAKER_ERR_INVALID_INDEX = -1017 |> Int32
const SPINNAKER_ERR_PARSING_CHUNK_DATA = -1018 |> Int32
const SPINNAKER_ERR_INVALID_VALUE = -1019 |> Int32
const SPINNAKER_ERR_RESOURCE_EXHAUSTED = -1020 |> Int32
const SPINNAKER_ERR_OUT_OF_MEMORY = -1021 |> Int32
const SPINNAKER_ERR_BUSY = -1022 |> Int32
const GENICAM_ERR_INVALID_ARGUMENT = -2001 |> Int32
const GENICAM_ERR_OUT_OF_RANGE = -2002 |> Int32
const GENICAM_ERR_PROPERTY = -2003 |> Int32
const GENICAM_ERR_RUN_TIME = -2004 |> Int32
const GENICAM_ERR_LOGICAL = -2005 |> Int32
const GENICAM_ERR_ACCESS = -2006 |> Int32
const GENICAM_ERR_TIMEOUT = -2007 |> Int32
const GENICAM_ERR_DYNAMIC_CAST = -2008 |> Int32
const GENICAM_ERR_GENERIC = -2009 |> Int32
const GENICAM_ERR_BAD_ALLOCATION = -2010 |> Int32
const SPINNAKER_ERR_IM_CONVERT = -3001 |> Int32
const SPINNAKER_ERR_IM_COPY = -3002 |> Int32
const SPINNAKER_ERR_IM_MALLOC = -3003 |> Int32
const SPINNAKER_ERR_IM_NOT_SUPPORTED = -3004 |> Int32
const SPINNAKER_ERR_IM_HISTOGRAM_RANGE = -3005 |> Int32
const SPINNAKER_ERR_IM_HISTOGRAM_MEAN = -3006 |> Int32
const SPINNAKER_ERR_IM_MIN_MAX = -3007 |> Int32
const SPINNAKER_ERR_IM_COLOR_CONVERSION = -3008 |> Int32
const SPINNAKER_ERR_CUSTOM_ID = -10000 |> Int32
# end enum _spinError

const spinError = Cvoid

# begin enum _spinColorProcessingAlgorithm
const _spinColorProcessingAlgorithm = UInt32
const DEFAULT = 0 |> UInt32
const NO_COLOR_PROCESSING = 1 |> UInt32
const NEAREST_NEIGHBOR = 2 |> UInt32
const EDGE_SENSING = 3 |> UInt32
const HQ_LINEAR = 4 |> UInt32
const RIGOROUS = 5 |> UInt32
const IPP = 6 |> UInt32
const DIRECTIONAL_FILTER = 7 |> UInt32
const WEIGHTED_DIRECTIONAL_FILTER = 8 |> UInt32
# end enum _spinColorProcessingAlgorithm

const spinColorProcessingAlgorithm = Cvoid

# begin enum _spinStatisticsChannel
const _spinStatisticsChannel = UInt32
const GREY = 0 |> UInt32
const RED = 1 |> UInt32
const GREEN = 2 |> UInt32
const BLUE = 3 |> UInt32
const HUE = 4 |> UInt32
const SATURATION = 5 |> UInt32
const LIGHTNESS = 6 |> UInt32
const NUM_STATISTICS_CHANNELS = 7 |> UInt32
# end enum _spinStatisticsChannel

const spinStatisticsChannel = Cvoid

# begin enum _spinImageFileFormat
const _spinImageFileFormat = Cint
const FROM_FILE_EXT = -1 |> Int32
const PGM = 0 |> Int32
const PPM = 1 |> Int32
const BMP = 2 |> Int32
const JPEG = 3 |> Int32
const JPEG2000 = 4 |> Int32
const TIFF = 5 |> Int32
const PNG = 6 |> Int32
const RAW = 7 |> Int32
const IMAGE_FILE_FORMAT_FORCE_32BITS = 2147483647 |> Int32
# end enum _spinImageFileFormat

const spinImageFileFormat = Cvoid

# begin enum _spinPixelFormatNamespaceID
const _spinPixelFormatNamespaceID = UInt32
const SPINNAKER_PIXELFORMAT_NAMESPACE_UNKNOWN = 0 |> UInt32
const SPINNAKER_PIXELFORMAT_NAMESPACE_GEV = 1 |> UInt32
const SPINNAKER_PIXELFORMAT_NAMESPACE_IIDC = 2 |> UInt32
const SPINNAKER_PIXELFORMAT_NAMESPACE_PFNC_16BIT = 3 |> UInt32
const SPINNAKER_PIXELFORMAT_NAMESPACE_PFNC_32BIT = 4 |> UInt32
const SPINNAKER_PIXELFORMAT_NAMESPACE_CUSTOM_ID = 1000 |> UInt32
# end enum _spinPixelFormatNamespaceID

const spinPixelFormatNamespaceID = Cvoid

# begin enum _spinImageStatus
const _spinImageStatus = Cint
const IMAGE_UNKNOWN_ERROR = -1 |> Int32
const IMAGE_NO_ERROR = 0 |> Int32
const IMAGE_CRC_CHECK_FAILED = 1 |> Int32
const IMAGE_DATA_OVERFLOW = 2 |> Int32
const IMAGE_MISSING_PACKETS = 3 |> Int32
const IMAGE_LEADER_BUFFER_SIZE_INCONSISTENT = 4 |> Int32
const IMAGE_TRAILER_BUFFER_SIZE_INCONSISTENT = 5 |> Int32
const IMAGE_PACKETID_INCONSISTENT = 6 |> Int32
const IMAGE_MISSING_LEADER = 7 |> Int32
const IMAGE_MISSING_TRAILER = 8 |> Int32
const IMAGE_DATA_INCOMPLETE = 9 |> Int32
const IMAGE_INFO_INCONSISTENT = 10 |> Int32
const IMAGE_CHUNK_DATA_INVALID = 11 |> Int32
const IMAGE_NO_SYSTEM_RESOURCES = 12 |> Int32
# end enum _spinImageStatus

const spinImageStatus = Cvoid

# begin enum _spinLogLevel
const _spinLogLevel = Cint
const LOG_LEVEL_OFF = -1 |> Int32
const LOG_LEVEL_FATAL = 0 |> Int32
const LOG_LEVEL_ALERT = 100 |> Int32
const LOG_LEVEL_CRIT = 200 |> Int32
const LOG_LEVEL_ERROR = 300 |> Int32
const LOG_LEVEL_WARN = 400 |> Int32
const LOG_LEVEL_NOTICE = 500 |> Int32
const LOG_LEVEL_INFO = 600 |> Int32
const LOG_LEVEL_DEBUG = 700 |> Int32
const LOG_LEVEL_NOTSET = 800 |> Int32
# end enum _spinLogLevel

const spinnakerLogLevel = Cvoid

# begin enum _spinPayloadTypeInfoIDs
const _spinPayloadTypeInfoIDs = UInt32
const PAYLOAD_TYPE_UNKNOWN = 0 |> UInt32
const PAYLOAD_TYPE_IMAGE = 1 |> UInt32
const PAYLOAD_TYPE_RAW_DATA = 2 |> UInt32
const PAYLOAD_TYPE_FILE = 3 |> UInt32
const PAYLOAD_TYPE_CHUNK_DATA = 4 |> UInt32
const PAYLOAD_TYPE_JPEG = 5 |> UInt32
const PAYLOAD_TYPE_JPEG2000 = 6 |> UInt32
const PAYLOAD_TYPE_H264 = 7 |> UInt32
const PAYLOAD_TYPE_CHUNK_ONLY = 8 |> UInt32
const PAYLOAD_TYPE_DEVICE_SPECIFIC = 9 |> UInt32
const PAYLOAD_TYPE_MULTI_PART = 10 |> UInt32
const PAYLOAD_TYPE_CUSTOM_ID = 1000 |> UInt32
const PAYLOAD_TYPE_EXTENDED_CHUNK = 1001 |> UInt32
# end enum _spinPayloadTypeInfoIDs

const spinPayloadTypeInfoIDs = Cvoid

struct _spinPNGOption
    interlaced::bool8_t
    compressionLevel::UInt32
    reserved::NTuple{16, UInt32}
end

const spinPNGOption = Cvoid

struct _spinPPMOption
    binaryFile::bool8_t
    reserved::NTuple{16, UInt32}
end

const spinPPMOption = Cvoid

struct _spinPGMOption
    binaryFile::bool8_t
    reserved::NTuple{16, UInt32}
end

const spinPGMOption = Cvoid

# begin enum CompressionMethod
const CompressionMethod = UInt32
const NONE = 1 |> UInt32
const PACKBITS = 2 |> UInt32
const DEFLATE = 3 |> UInt32
const ADOBE_DEFLATE = 4 |> UInt32
const CCITTFAX3 = 5 |> UInt32
const CCITTFAX4 = 6 |> UInt32
const LZW = 7 |> UInt32
const JPG = 8 |> UInt32
# end enum CompressionMethod

const spinCompressionMethod = Cvoid

struct _spinTIFFOption
    compression::spinCompressionMethod
    reserved::NTuple{16, UInt32}
end

const spinTIFFOption = Cvoid

struct _spinJPEGOption
    progressive::bool8_t
    quality::UInt32
    reserved::NTuple{16, UInt32}
end

const spinJPEGOption = Cvoid

struct _spinJPG2Option
    quality::UInt32
    reserved::NTuple{16, UInt32}
end

const spinJPG2Option = Cvoid

struct _spinBMPOption
    indexedColor_8bit::bool8_t
    reserved::NTuple{16, UInt32}
end

const spinBMPOption = Cvoid

struct _spinMJPGOption
    frameRate::Cfloat
    quality::UInt32
    reserved::NTuple{256, UInt32}
end

const spinMJPGOption = Cvoid

struct _spinH264Option
    frameRate::Cfloat
    width::UInt32
    height::UInt32
    bitrate::UInt32
    reserved::NTuple{256, UInt32}
end

const spinH264Option = Cvoid

struct _spinAVIOption
    frameRate::Cfloat
    reserved::NTuple{256, UInt32}
end

const spinAVIOption = Cvoid

struct _spinLibraryVersion
    major::UInt32
    minor::UInt32
    _type::UInt32
    build::UInt32
end

const spinLibraryVersion = Cvoid

# begin enum _actionCommandStatus
const _actionCommandStatus = UInt32
const ACTION_COMMAND_STATUS_OK = 0 |> UInt32
const ACTION_COMMAND_STATUS_NO_REF_TIME = 32787 |> UInt32
const ACTION_COMMAND_STATUS_OVERFLOW = 32789 |> UInt32
const ACTION_COMMAND_STATUS_ACTION_LATE = 32790 |> UInt32
const ACTION_COMMAND_STATUS_ERROR = 36863 |> UInt32
# end enum _actionCommandStatus

const actionCommandStatus = Cvoid

struct _actionCommandResult
    DeviceAddress::UInt32
    Status::actionCommandStatus
end

const actionCommandResult = Cvoid
const spinNodeMapHandle = Ptr{Cvoid}
const spinNodeCallbackHandle = Ptr{Cvoid}
const spinNodeCallbackFunction = Ptr{Cvoid}

# begin enum _spinNodeType
const _spinNodeType = Cint
const ValueNode = 0 |> Int32
const BaseNode = 1 |> Int32
const IntegerNode = 2 |> Int32
const BooleanNode = 3 |> Int32
const FloatNode = 4 |> Int32
const CommandNode = 5 |> Int32
const StringNode = 6 |> Int32
const RegisterNode = 7 |> Int32
const EnumerationNode = 8 |> Int32
const EnumEntryNode = 9 |> Int32
const CategoryNode = 10 |> Int32
const PortNode = 11 |> Int32
const UnknownNode = -1 |> Int32
# end enum _spinNodeType

const spinNodeType = Cvoid

# begin enum _spinSign
const _spinSign = UInt32
const Signed = 0 |> UInt32
const Unsigned = 1 |> UInt32
const _UndefinedSign = 2 |> UInt32
# end enum _spinSign

const spinSign = Cvoid

# begin enum _spinAccessMode
const _spinAccessMode = UInt32
const NI = 0 |> UInt32
const NA = 1 |> UInt32
const WO = 2 |> UInt32
const RO = 3 |> UInt32
const RW = 4 |> UInt32
const _UndefinedAccesMode = 5 |> UInt32
const _CycleDetectAccesMode = 6 |> UInt32
# end enum _spinAccessMode

const spinAccessMode = Cvoid

# begin enum _spinVisibility
const _spinVisibility = UInt32
const Beginner = 0 |> UInt32
const Expert = 1 |> UInt32
const Guru = 2 |> UInt32
const Invisible = 3 |> UInt32
const _UndefinedVisibility = 99 |> UInt32
# end enum _spinVisibility

const spinVisibility = Cvoid

# begin enum _spinCachingMode
const _spinCachingMode = UInt32
const NoCache = 0 |> UInt32
const WriteThrough = 1 |> UInt32
const WriteAround = 2 |> UInt32
const _UndefinedCachingMode = 3 |> UInt32
# end enum _spinCachingMode

const spinCachingMode = Cvoid

# begin enum _spinRepresentation
const _spinRepresentation = UInt32
const Linear = 0 |> UInt32
const Logarithmic = 1 |> UInt32
const Boolean = 2 |> UInt32
const PureNumber = 3 |> UInt32
const HexNumber = 4 |> UInt32
const IPV4Address = 5 |> UInt32
const MACAddress = 6 |> UInt32
const _UndefinedRepresentation = 7 |> UInt32
# end enum _spinRepresentation

const spinRepresentation = Cvoid

# begin enum _spinEndianess
const _spinEndianess = UInt32
const BigEndian = 0 |> UInt32
const LittleEndian = 1 |> UInt32
const _UndefinedEndian = 2 |> UInt32
# end enum _spinEndianess

const spinEndianess = Cvoid

# begin enum _spinNameSpace
const _spinNameSpace = UInt32
const Custom = 0 |> UInt32
const Standard = 1 |> UInt32
const _UndefinedNameSpace = 2 |> UInt32
# end enum _spinNameSpace

const spinNameSpace = Cvoid

# begin enum _spinStandardNameSpace
const _spinStandardNameSpace = UInt32
const None = 0 |> UInt32
const GEV = 1 |> UInt32
const IIDC = 2 |> UInt32
const CL = 3 |> UInt32
const USB = 4 |> UInt32
const _UndefinedStandardNameSpace = 5 |> UInt32
# end enum _spinStandardNameSpace

const spinStandardNameSpace = Cvoid

# begin enum _spinYesNo
const _spinYesNo = UInt32
const Yes = 1 |> UInt32
const No = 0 |> UInt32
const _UndefinedYesNo = 2 |> UInt32
# end enum _spinYesNo

const spinYesNo = Cvoid

# begin enum _spinSlope
const _spinSlope = UInt32
const Increasing = 0 |> UInt32
const Decreasing = 1 |> UInt32
const Varying = 2 |> UInt32
const Automatic = 3 |> UInt32
const _UndefinedESlope = 4 |> UInt32
# end enum _spinSlope

const spinSlope = Cvoid

# begin enum _spinXMLValidation
const _spinXMLValidation = UInt32
const xvLoad = 1 |> UInt32
const xvCycles = 2 |> UInt32
const xvSFNC = 4 |> UInt32
const xvDefault = 0 |> UInt32
const xvAll = 0x00000000ffffffff |> UInt32
const _UndefinedEXMLValidation = 134217728 |> UInt32
# end enum _spinXMLValidation

const spinXMLValidation = Cvoid

# begin enum _spinDisplayNotation
const _spinDisplayNotation = UInt32
const fnAutomatic = 0 |> UInt32
const fnFixed = 1 |> UInt32
const fnScientific = 2 |> UInt32
const _UndefinedEDisplayNotation = 3 |> UInt32
# end enum _spinDisplayNotation

const spinDisplayNotation = Cvoid

# begin enum _spinInterfaceType
const _spinInterfaceType = UInt32
const intfIValue = 0 |> UInt32
const intfIBase = 1 |> UInt32
const intfIInteger = 2 |> UInt32
const intfIBoolean = 3 |> UInt32
const intfICommand = 4 |> UInt32
const intfIFloat = 5 |> UInt32
const intfIString = 6 |> UInt32
const intfIRegister = 7 |> UInt32
const intfICategory = 8 |> UInt32
const intfIEnumeration = 9 |> UInt32
const intfIEnumEntry = 10 |> UInt32
const intfIPort = 11 |> UInt32
# end enum _spinInterfaceType

const spinInterfaceType = Cvoid

# begin enum _spinLinkType
const _spinLinkType = UInt32
const ctAllDependingNodes = 0 |> UInt32
const ctAllTerminalNodes = 1 |> UInt32
const ctInvalidators = 2 |> UInt32
const ctReadingChildren = 3 |> UInt32
const ctWritingChildren = 4 |> UInt32
const ctDependingChildren = 5 |> UInt32
# end enum _spinLinkType

const spinLinkType = Cvoid

# begin enum _spinIncMode
const _spinIncMode = UInt32
const noIncrement = 0 |> UInt32
const fixedIncrement = 1 |> UInt32
const listIncrement = 2 |> UInt32
# end enum _spinIncMode

const spinIncMode = Cvoid

# begin enum _spinInputDirection
const _spinInputDirection = UInt32
const idFrom = 0 |> UInt32
const idTo = 1 |> UInt32
const idNone = 2 |> UInt32
# end enum _spinInputDirection

const spinInputDirection = Cvoid

# Skipping MacroDefinition: SPINC_IMPORT_EXPORT __attribute__ ( ( visibility ( "default" ) ) )
# Skipping MacroDefinition: EXTERN_C extern "C"
# Skipping MacroDefinition: SPINNAKERC_API_DEPRECATED ( msg , func ) SPINC_IMPORT_EXPORT spinError SPINC_CALLTYPE func __attribute__ ( ( deprecated ( msg ) ) )
# Skipping MacroDefinition: SPINNAKERC_API SPINC_IMPORT_EXPORT spinError SPINC_CALLTYPE

# begin enum _spinTLStreamTypeEnums
const _spinTLStreamTypeEnums = UInt32
const StreamType_Mixed = 0 |> UInt32
const StreamType_Custom = 1 |> UInt32
const StreamType_GEV = 2 |> UInt32
const StreamType_CL = 3 |> UInt32
const StreamType_IIDC = 4 |> UInt32
const StreamType_UVC = 5 |> UInt32
const StreamType_CXP = 6 |> UInt32
const StreamType_CLHS = 7 |> UInt32
const StreamType_U3V = 8 |> UInt32
const StreamType_ETHERNET = 9 |> UInt32
const StreamType_PCI = 10 |> UInt32
const NUMSTREAMTYPE = 11 |> UInt32
# end enum _spinTLStreamTypeEnums

const spinTLStreamTypeEnums = Cvoid

# begin enum _spinTLStreamDefaultBufferCountModeEnums
const _spinTLStreamDefaultBufferCountModeEnums = UInt32
const StreamDefaultBufferCountMode_Manual = 0 |> UInt32
const StreamDefaultBufferCountMode_Auto = 1 |> UInt32
const NUMSTREAMDEFAULTBUFFERCOUNTMODE = 2 |> UInt32
# end enum _spinTLStreamDefaultBufferCountModeEnums

const spinTLStreamDefaultBufferCountModeEnums = Cvoid

# begin enum _spinTLStreamBufferCountModeEnums
const _spinTLStreamBufferCountModeEnums = UInt32
const StreamBufferCountMode_Manual = 0 |> UInt32
const StreamBufferCountMode_Auto = 1 |> UInt32
const NUMSTREAMBUFFERCOUNTMODE = 2 |> UInt32
# end enum _spinTLStreamBufferCountModeEnums

const spinTLStreamBufferCountModeEnums = Cvoid

# begin enum _spinTLStreamBufferHandlingModeEnums
const _spinTLStreamBufferHandlingModeEnums = UInt32
const StreamBufferHandlingMode_OldestFirst = 0 |> UInt32
const StreamBufferHandlingMode_OldestFirstOverwrite = 1 |> UInt32
const StreamBufferHandlingMode_NewestFirst = 2 |> UInt32
const StreamBufferHandlingMode_NewestFirstOverwrite = 3 |> UInt32
const StreamBufferHandlingMode_NewestOnly = 4 |> UInt32
const NUMSTREAMBUFFERHANDLINGMODE = 5 |> UInt32
# end enum _spinTLStreamBufferHandlingModeEnums

const spinTLStreamBufferHandlingModeEnums = Cvoid

# begin enum _spinTLDeviceTypeEnums
const _spinTLDeviceTypeEnums = UInt32
const DeviceType_Mixed = 0 |> UInt32
const DeviceType_Custom = 1 |> UInt32
const DeviceType_GEV = 2 |> UInt32
const DeviceType_CL = 3 |> UInt32
const DeviceType_IIDC = 4 |> UInt32
const DeviceType_UVC = 5 |> UInt32
const DeviceType_CXP = 6 |> UInt32
const DeviceType_CLHS = 7 |> UInt32
const DeviceType_U3V = 8 |> UInt32
const DeviceType_ETHERNET = 9 |> UInt32
const DeviceType_PCI = 10 |> UInt32
const NUMDEVICETYPE = 11 |> UInt32
# end enum _spinTLDeviceTypeEnums

const spinTLDeviceTypeEnums = Cvoid

# begin enum _spinTLDeviceAccessStatusEnums
const _spinTLDeviceAccessStatusEnums = UInt32
const DeviceAccessStatus_Unknown = 0 |> UInt32
const DeviceAccessStatus_ReadWrite = 1 |> UInt32
const DeviceAccessStatus_ReadOnly = 2 |> UInt32
const DeviceAccessStatus_NoAccess = 3 |> UInt32
const NUMDEVICEACCESSSTATUS = 4 |> UInt32
# end enum _spinTLDeviceAccessStatusEnums

const spinTLDeviceAccessStatusEnums = Cvoid

# begin enum _spinTLGevCCPEnums
const _spinTLGevCCPEnums = UInt32
const GevCCP_EnumEntry_GevCCP_OpenAccess = 0 |> UInt32
const GevCCP_EnumEntry_GevCCP_ExclusiveAccess = 1 |> UInt32
const GevCCP_EnumEntry_GevCCP_ControlAccess = 2 |> UInt32
const NUMGEVCCP = 3 |> UInt32
# end enum _spinTLGevCCPEnums

const spinTLGevCCPEnums = Cvoid

# begin enum _spinTLGUIXMLLocationEnums
const _spinTLGUIXMLLocationEnums = UInt32
const GUIXMLLocation_Device = 0 |> UInt32
const GUIXMLLocation_Host = 1 |> UInt32
const NUMGUIXMLLOCATION = 2 |> UInt32
# end enum _spinTLGUIXMLLocationEnums

const spinTLGUIXMLLocationEnums = Cvoid

# begin enum _spinTLGenICamXMLLocationEnums
const _spinTLGenICamXMLLocationEnums = UInt32
const GenICamXMLLocation_Device = 0 |> UInt32
const GenICamXMLLocation_Host = 1 |> UInt32
const NUMGENICAMXMLLOCATION = 2 |> UInt32
# end enum _spinTLGenICamXMLLocationEnums

const spinTLGenICamXMLLocationEnums = Cvoid

# begin enum _spinTLDeviceEndianessMechanismEnums
const _spinTLDeviceEndianessMechanismEnums = UInt32
const DeviceEndianessMechanism_Legacy = 0 |> UInt32
const DeviceEndianessMechanism_Standard = 1 |> UInt32
const NUMDEVICEENDIANESSMECHANISM = 2 |> UInt32
# end enum _spinTLDeviceEndianessMechanismEnums

const spinTLDeviceEndianessMechanismEnums = Cvoid

# begin enum _spinTLDeviceCurrentSpeedEnums
const _spinTLDeviceCurrentSpeedEnums = UInt32
const DeviceCurrentSpeed_UnknownSpeed = 0 |> UInt32
const DeviceCurrentSpeed_LowSpeed = 1 |> UInt32
const DeviceCurrentSpeed_FullSpeed = 2 |> UInt32
const DeviceCurrentSpeed_HighSpeed = 3 |> UInt32
const DeviceCurrentSpeed_SuperSpeed = 4 |> UInt32
const NUMDEVICECURRENTSPEED = 5 |> UInt32
# end enum _spinTLDeviceCurrentSpeedEnums

const spinTLDeviceCurrentSpeedEnums = Cvoid

# begin enum _spinTLPOEStatusEnums
const _spinTLPOEStatusEnums = UInt32
const POEStatus_NotSupported = 0 |> UInt32
const POEStatus_PowerOff = 1 |> UInt32
const POEStatus_PowerOn = 2 |> UInt32
const NUMPOESTATUS = 3 |> UInt32
# end enum _spinTLPOEStatusEnums

const spinTLPOEStatusEnums = Cvoid

struct _quickSpinTLDevice
    DeviceID::quickSpinStringNode
    DeviceSerialNumber::quickSpinStringNode
    DeviceVendorName::quickSpinStringNode
    DeviceModelName::quickSpinStringNode
    DeviceType::quickSpinEnumerationNode
    DeviceDisplayName::quickSpinStringNode
    DeviceAccessStatus::quickSpinEnumerationNode
    DeviceVersion::quickSpinStringNode
    DeviceUserID::quickSpinStringNode
    DeviceDriverVersion::quickSpinStringNode
    DeviceIsUpdater::quickSpinBooleanNode
    GevCCP::quickSpinEnumerationNode
    GUIXMLLocation::quickSpinEnumerationNode
    GUIXMLPath::quickSpinStringNode
    GenICamXMLLocation::quickSpinEnumerationNode
    GenICamXMLPath::quickSpinStringNode
    GevDeviceIPAddress::quickSpinIntegerNode
    GevDeviceSubnetMask::quickSpinIntegerNode
    GevDeviceMACAddress::quickSpinIntegerNode
    GevDeviceGateway::quickSpinIntegerNode
    DeviceLinkSpeed::quickSpinIntegerNode
    GevVersionMajor::quickSpinIntegerNode
    GevVersionMinor::quickSpinIntegerNode
    GevDeviceModeIsBigEndian::quickSpinBooleanNode
    GevDeviceReadAndWriteTimeout::quickSpinIntegerNode
    GevDeviceMaximumRetryCount::quickSpinIntegerNode
    GevDevicePort::quickSpinIntegerNode
    GevDeviceDiscoverMaximumPacketSize::quickSpinCommandNode
    GevDeviceMaximumPacketSize::quickSpinIntegerNode
    GevDeviceIsWrongSubnet::quickSpinBooleanNode
    DeviceMulticastMonitorMode::quickSpinBooleanNode
    DeviceEndianessMechanism::quickSpinEnumerationNode
    DeviceInstanceId::quickSpinStringNode
    DeviceCurrentSpeed::quickSpinEnumerationNode
    DeviceU3VProtocol::quickSpinBooleanNode
end

const quickSpinTLDevice = Cvoid

struct _quickSpinTLInterface
    InterfaceID::quickSpinStringNode
    InterfaceDisplayName::quickSpinStringNode
    InterfaceType::quickSpinStringNode
    GevInterfaceGateway::quickSpinIntegerNode
    GevInterfaceMACAddress::quickSpinIntegerNode
    GevInterfaceIPAddress::quickSpinIntegerNode
    GevInterfaceSubnetMask::quickSpinIntegerNode
    POEStatus::quickSpinEnumerationNode
    GevActionDeviceKey::quickSpinIntegerNode
    GevActionGroupKey::quickSpinIntegerNode
    GevActionGroupMask::quickSpinIntegerNode
    GevActionTime::quickSpinIntegerNode
    ActionCommand::quickSpinCommandNode
    DeviceUnlock::quickSpinStringNode
    DeviceUpdateList::quickSpinCommandNode
    DeviceCount::quickSpinIntegerNode
    DeviceSelector::quickSpinIntegerNode
    DeviceID::quickSpinStringNode
    DeviceVendorName::quickSpinStringNode
    DeviceModelName::quickSpinStringNode
    DeviceAccessStatus::quickSpinEnumerationNode
    GevDeviceIPAddress::quickSpinIntegerNode
    GevDeviceSubnetMask::quickSpinIntegerNode
    GevDeviceMACAddress::quickSpinIntegerNode
    AutoForceIP::quickSpinCommandNode
    IncompatibleDeviceCount::quickSpinIntegerNode
    IncompatibleDeviceSelector::quickSpinIntegerNode
    IncompatibleDeviceID::quickSpinStringNode
    IncompatibleDeviceVendorName::quickSpinStringNode
    IncompatibleDeviceModelName::quickSpinStringNode
    IncompatibleGevDeviceIPAddress::quickSpinIntegerNode
    IncompatibleGevDeviceSubnetMask::quickSpinIntegerNode
    IncompatibleGevDeviceMACAddress::quickSpinIntegerNode
    HostAdapterName::quickSpinStringNode
    HostAdapterVendor::quickSpinStringNode
    HostAdapterDriverVersion::quickSpinStringNode
end

const quickSpinTLInterface = Cvoid

struct _quickSpinTLStream
    StreamID::quickSpinStringNode
    StreamType::quickSpinEnumerationNode
    StreamTotalBufferCount::quickSpinIntegerNode
    StreamDefaultBufferCount::quickSpinIntegerNode
    StreamDefaultBufferCountMax::quickSpinIntegerNode
    StreamDefaultBufferCountMode::quickSpinEnumerationNode
    StreamBufferCountManual::quickSpinIntegerNode
    StreamBufferCountResult::quickSpinIntegerNode
    StreamBufferCountMax::quickSpinIntegerNode
    StreamBufferCountMode::quickSpinEnumerationNode
    StreamBufferHandlingMode::quickSpinEnumerationNode
    StreamCRCCheckEnable::quickSpinBooleanNode
    GevPacketResendMode::quickSpinBooleanNode
    GevMaximumNumberResendRequests::quickSpinIntegerNode
    GevPacketResendTimeout::quickSpinIntegerNode
    GevMaximumNumberResendBuffers::quickSpinIntegerNode
    GevTotalPacketCount::quickSpinIntegerNode
    GevFailedPacketCount::quickSpinIntegerNode
    GevResendPacketCount::quickSpinIntegerNode
    StreamFailedBufferCount::quickSpinIntegerNode
    StreamBufferUnderrunCount::quickSpinIntegerNode
    GevResendRequestCount::quickSpinIntegerNode
    StreamBlockTransferSize::quickSpinIntegerNode
end

const quickSpinTLStream = Cvoid
