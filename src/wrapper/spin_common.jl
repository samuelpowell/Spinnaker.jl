# Automatically generated using Clang.jl wrap_c


@cenum(_spinLUTSelectorEnums,
    LUTSelector_LUT1 = 0,
    NUM_LUTSELECTOR = 1,
)

const spinLUTSelectorEnums = _spinLUTSelectorEnums

@cenum(_spinExposureModeEnums,
    ExposureMode_Timed = 0,
    ExposureMode_TriggerWidth = 1,
    NUM_EXPOSUREMODE = 2,
)

const spinExposureModeEnums = _spinExposureModeEnums

@cenum(_spinAcquisitionModeEnums,
    AcquisitionMode_Continuous = 0,
    AcquisitionMode_SingleFrame = 1,
    AcquisitionMode_MultiFrame = 2,
    NUM_ACQUISITIONMODE = 3,
)

const spinAcquisitionModeEnums = _spinAcquisitionModeEnums

@cenum(_spinTriggerSourceEnums,
    TriggerSource_Software = 0,
    TriggerSource_Line0 = 1,
    TriggerSource_Line1 = 2,
    TriggerSource_Line2 = 3,
    TriggerSource_Line3 = 4,
    TriggerSource_UserOutput0 = 5,
    TriggerSource_UserOutput1 = 6,
    TriggerSource_UserOutput2 = 7,
    TriggerSource_UserOutput3 = 8,
    TriggerSource_Counter0Start = 9,
    TriggerSource_Counter1Start = 10,
    TriggerSource_Counter0End = 11,
    TriggerSource_Counter1End = 12,
    TriggerSource_LogicBlock0 = 13,
    TriggerSource_LogicBlock1 = 14,
    TriggerSource_Action0 = 15,
    NUM_TRIGGERSOURCE = 16,
)

const spinTriggerSourceEnums = _spinTriggerSourceEnums

@cenum(_spinTriggerActivationEnums,
    TriggerActivation_LevelLow = 0,
    TriggerActivation_LevelHigh = 1,
    TriggerActivation_FallingEdge = 2,
    TriggerActivation_RisingEdge = 3,
    TriggerActivation_AnyEdge = 4,
    NUM_TRIGGERACTIVATION = 5,
)

const spinTriggerActivationEnums = _spinTriggerActivationEnums

@cenum(_spinSensorShutterModeEnums,
    SensorShutterMode_Global = 0,
    SensorShutterMode_Rolling = 1,
    SensorShutterMode_GlobalReset = 2,
    NUM_SENSORSHUTTERMODE = 3,
)

const spinSensorShutterModeEnums = _spinSensorShutterModeEnums

@cenum(_spinTriggerModeEnums,
    TriggerMode_Off = 0,
    TriggerMode_On = 1,
    NUM_TRIGGERMODE = 2,
)

const spinTriggerModeEnums = _spinTriggerModeEnums

@cenum(_spinTriggerOverlapEnums,
    TriggerOverlap_Off = 0,
    TriggerOverlap_ReadOut = 1,
    TriggerOverlap_PreviousFrame = 2,
    NUM_TRIGGEROVERLAP = 3,
)

const spinTriggerOverlapEnums = _spinTriggerOverlapEnums

@cenum(_spinTriggerSelectorEnums,
    TriggerSelector_AcquisitionStart = 0,
    TriggerSelector_FrameStart = 1,
    TriggerSelector_FrameBurstStart = 2,
    NUM_TRIGGERSELECTOR = 3,
)

const spinTriggerSelectorEnums = _spinTriggerSelectorEnums

@cenum(_spinExposureAutoEnums,
    ExposureAuto_Off = 0,
    ExposureAuto_Once = 1,
    ExposureAuto_Continuous = 2,
    NUM_EXPOSUREAUTO = 3,
)

const spinExposureAutoEnums = _spinExposureAutoEnums

@cenum(_spinEventSelectorEnums,
    EventSelector_Error = 0,
    EventSelector_ExposureEnd = 1,
    EventSelector_SerialPortReceive = 2,
    NUM_EVENTSELECTOR = 3,
)

const spinEventSelectorEnums = _spinEventSelectorEnums

@cenum(_spinEventNotificationEnums,
    EventNotification_On = 0,
    EventNotification_Off = 1,
    NUM_EVENTNOTIFICATION = 2,
)

const spinEventNotificationEnums = _spinEventNotificationEnums

@cenum(_spinLogicBlockSelectorEnums,
    LogicBlockSelector_LogicBlock0 = 0,
    LogicBlockSelector_LogicBlock1 = 1,
    NUM_LOGICBLOCKSELECTOR = 2,
)

const spinLogicBlockSelectorEnums = _spinLogicBlockSelectorEnums

@cenum(_spinLogicBlockLUTInputActivationEnums,
    LogicBlockLUTInputActivation_LevelLow = 0,
    LogicBlockLUTInputActivation_LevelHigh = 1,
    LogicBlockLUTInputActivation_FallingEdge = 2,
    LogicBlockLUTInputActivation_RisingEdge = 3,
    LogicBlockLUTInputActivation_AnyEdge = 4,
    NUM_LOGICBLOCKLUTINPUTACTIVATION = 5,
)

const spinLogicBlockLUTInputActivationEnums = _spinLogicBlockLUTInputActivationEnums

@cenum(_spinLogicBlockLUTInputSelectorEnums,
    LogicBlockLUTInputSelector_Input0 = 0,
    LogicBlockLUTInputSelector_Input1 = 1,
    LogicBlockLUTInputSelector_Input2 = 2,
    LogicBlockLUTInputSelector_Input3 = 3,
    NUM_LOGICBLOCKLUTINPUTSELECTOR = 4,
)

const spinLogicBlockLUTInputSelectorEnums = _spinLogicBlockLUTInputSelectorEnums

@cenum(_spinLogicBlockLUTInputSourceEnums,
    LogicBlockLUTInputSource_Zero = 0,
    LogicBlockLUTInputSource_Line0 = 1,
    LogicBlockLUTInputSource_Line1 = 2,
    LogicBlockLUTInputSource_Line2 = 3,
    LogicBlockLUTInputSource_Line3 = 4,
    LogicBlockLUTInputSource_UserOutput0 = 5,
    LogicBlockLUTInputSource_UserOutput1 = 6,
    LogicBlockLUTInputSource_UserOutput2 = 7,
    LogicBlockLUTInputSource_UserOutput3 = 8,
    LogicBlockLUTInputSource_Counter0Start = 9,
    LogicBlockLUTInputSource_Counter1Start = 10,
    LogicBlockLUTInputSource_Counter0End = 11,
    LogicBlockLUTInputSource_Counter1End = 12,
    LogicBlockLUTInputSource_LogicBlock0 = 13,
    LogicBlockLUTInputSource_LogicBlock1 = 14,
    LogicBlockLUTInputSource_ExposureStart = 15,
    LogicBlockLUTInputSource_ExposureEnd = 16,
    LogicBlockLUTInputSource_FrameTriggerWait = 17,
    LogicBlockLUTInputSource_AcquisitionActive = 18,
    NUM_LOGICBLOCKLUTINPUTSOURCE = 19,
)

const spinLogicBlockLUTInputSourceEnums = _spinLogicBlockLUTInputSourceEnums

@cenum(_spinLogicBlockLUTSelectorEnums,
    LogicBlockLUTSelector_Value = 0,
    LogicBlockLUTSelector_Enable = 1,
    NUM_LOGICBLOCKLUTSELECTOR = 2,
)

const spinLogicBlockLUTSelectorEnums = _spinLogicBlockLUTSelectorEnums

@cenum(_spinColorTransformationSelectorEnums,
    ColorTransformationSelector_RGBtoRGB = 0,
    ColorTransformationSelector_RGBtoYUV = 1,
    NUM_COLORTRANSFORMATIONSELECTOR = 2,
)

const spinColorTransformationSelectorEnums = _spinColorTransformationSelectorEnums

@cenum(_spinRgbTransformLightSourceEnums,
    RgbTransformLightSource_General = 0,
    RgbTransformLightSource_Tungsten2800K = 1,
    RgbTransformLightSource_WarmFluorescent3000K = 2,
    RgbTransformLightSource_CoolFluorescent4000K = 3,
    RgbTransformLightSource_Daylight5000K = 4,
    RgbTransformLightSource_Cloudy6500K = 5,
    RgbTransformLightSource_Shade8000K = 6,
    RgbTransformLightSource_Custom = 7,
    NUM_RGBTRANSFORMLIGHTSOURCE = 8,
)

const spinRgbTransformLightSourceEnums = _spinRgbTransformLightSourceEnums

@cenum(_spinColorTransformationValueSelectorEnums,
    ColorTransformationValueSelector_Gain00 = 0,
    ColorTransformationValueSelector_Gain01 = 1,
    ColorTransformationValueSelector_Gain02 = 2,
    ColorTransformationValueSelector_Gain10 = 3,
    ColorTransformationValueSelector_Gain11 = 4,
    ColorTransformationValueSelector_Gain12 = 5,
    ColorTransformationValueSelector_Gain20 = 6,
    ColorTransformationValueSelector_Gain21 = 7,
    ColorTransformationValueSelector_Gain22 = 8,
    ColorTransformationValueSelector_Offset0 = 9,
    ColorTransformationValueSelector_Offset1 = 10,
    ColorTransformationValueSelector_Offset2 = 11,
    NUM_COLORTRANSFORMATIONVALUESELECTOR = 12,
)

const spinColorTransformationValueSelectorEnums = _spinColorTransformationValueSelectorEnums

@cenum(_spinDeviceRegistersEndiannessEnums,
    DeviceRegistersEndianness_Little = 0,
    DeviceRegistersEndianness_Big = 1,
    NUM_DEVICEREGISTERSENDIANNESS = 2,
)

const spinDeviceRegistersEndiannessEnums = _spinDeviceRegistersEndiannessEnums

@cenum(_spinDeviceScanTypeEnums,
    DeviceScanType_Areascan = 0,
    NUM_DEVICESCANTYPE = 1,
)

const spinDeviceScanTypeEnums = _spinDeviceScanTypeEnums

@cenum(_spinDeviceCharacterSetEnums,
    DeviceCharacterSet_UTF8 = 0,
    DeviceCharacterSet_ASCII = 1,
    NUM_DEVICECHARACTERSET = 2,
)

const spinDeviceCharacterSetEnums = _spinDeviceCharacterSetEnums

@cenum(_spinDeviceTLTypeEnums,
    DeviceTLType_GigEVision = 0,
    DeviceTLType_CameraLink = 1,
    DeviceTLType_CameraLinkHS = 2,
    DeviceTLType_CoaXPress = 3,
    DeviceTLType_USB3Vision = 4,
    DeviceTLType_Custom = 5,
    NUM_DEVICETLTYPE = 6,
)

const spinDeviceTLTypeEnums = _spinDeviceTLTypeEnums

@cenum(_spinDevicePowerSupplySelectorEnums,
    DevicePowerSupplySelector_External = 0,
    NUM_DEVICEPOWERSUPPLYSELECTOR = 1,
)

const spinDevicePowerSupplySelectorEnums = _spinDevicePowerSupplySelectorEnums

@cenum(_spinDeviceTemperatureSelectorEnums,
    DeviceTemperatureSelector_Sensor = 0,
    NUM_DEVICETEMPERATURESELECTOR = 1,
)

const spinDeviceTemperatureSelectorEnums = _spinDeviceTemperatureSelectorEnums

@cenum(_spinDeviceIndicatorModeEnums,
    DeviceIndicatorMode_Inactive = 0,
    DeviceIndicatorMode_Active = 1,
    DeviceIndicatorMode_ErrorStatus = 2,
    NUM_DEVICEINDICATORMODE = 3,
)

const spinDeviceIndicatorModeEnums = _spinDeviceIndicatorModeEnums

@cenum(_spinAutoExposureControlPriorityEnums,
    AutoExposureControlPriority_Gain = 0,
    AutoExposureControlPriority_ExposureTime = 1,
    NUM_AUTOEXPOSURECONTROLPRIORITY = 2,
)

const spinAutoExposureControlPriorityEnums = _spinAutoExposureControlPriorityEnums

@cenum(_spinAutoExposureMeteringModeEnums,
    AutoExposureMeteringMode_Average = 0,
    AutoExposureMeteringMode_Spot = 1,
    AutoExposureMeteringMode_Partial = 2,
    AutoExposureMeteringMode_CenterWeighted = 3,
    AutoExposureMeteringMode_HistgramPeak = 4,
    NUM_AUTOEXPOSUREMETERINGMODE = 5,
)

const spinAutoExposureMeteringModeEnums = _spinAutoExposureMeteringModeEnums

@cenum(_spinBalanceWhiteAutoProfileEnums,
    BalanceWhiteAutoProfile_Indoor = 0,
    BalanceWhiteAutoProfile_Outdoor = 1,
    NUM_BALANCEWHITEAUTOPROFILE = 2,
)

const spinBalanceWhiteAutoProfileEnums = _spinBalanceWhiteAutoProfileEnums

@cenum(_spinAutoAlgorithmSelectorEnums,
    AutoAlgorithmSelector_Awb = 0,
    AutoAlgorithmSelector_Ae = 1,
    NUM_AUTOALGORITHMSELECTOR = 2,
)

const spinAutoAlgorithmSelectorEnums = _spinAutoAlgorithmSelectorEnums

@cenum(_spinAutoExposureTargetGreyValueAutoEnums,
    AutoExposureTargetGreyValueAuto_Off = 0,
    AutoExposureTargetGreyValueAuto_Continuous = 1,
    NUM_AUTOEXPOSURETARGETGREYVALUEAUTO = 2,
)

const spinAutoExposureTargetGreyValueAutoEnums = _spinAutoExposureTargetGreyValueAutoEnums

@cenum(_spinAutoExposureLightingModeEnums,
    AutoExposureLightingMode_AutoDetect = 0,
    AutoExposureLightingMode_Backlight = 1,
    AutoExposureLightingMode_Frontlight = 2,
    AutoExposureLightingMode_Normal = 3,
    NUM_AUTOEXPOSURELIGHTINGMODE = 4,
)

const spinAutoExposureLightingModeEnums = _spinAutoExposureLightingModeEnums

@cenum(_spinGevIEEE1588StatusEnums,
    GevIEEE1588Status_Initializing = 0,
    GevIEEE1588Status_Faulty = 1,
    GevIEEE1588Status_Disabled = 2,
    GevIEEE1588Status_Listening = 3,
    GevIEEE1588Status_PreMaster = 4,
    GevIEEE1588Status_Master = 5,
    GevIEEE1588Status_Passive = 6,
    GevIEEE1588Status_Uncalibrated = 7,
    GevIEEE1588Status_Slave = 8,
    NUM_GEVIEEE1588STATUS = 9,
)

const spinGevIEEE1588StatusEnums = _spinGevIEEE1588StatusEnums

@cenum(_spinGevIEEE1588ModeEnums,
    GevIEEE1588Mode_Auto = 0,
    GevIEEE1588Mode_SlaveOnly = 1,
    NUM_GEVIEEE1588MODE = 2,
)

const spinGevIEEE1588ModeEnums = _spinGevIEEE1588ModeEnums

@cenum(_spinGevIEEE1588ClockAccuracyEnums,
    GevIEEE1588ClockAccuracy_Unknown = 0,
    NUM_GEVIEEE1588CLOCKACCURACY = 1,
)

const spinGevIEEE1588ClockAccuracyEnums = _spinGevIEEE1588ClockAccuracyEnums

@cenum(_spinGevCCPEnums,
    GevCCP_OpenAccess = 0,
    GevCCP_ExclusiveAccess = 1,
    GevCCP_ControlAccess = 2,
    NUM_GEVCCP = 3,
)

const spinGevCCPEnums = _spinGevCCPEnums

@cenum(_spinGevSupportedOptionSelectorEnums,
    GevSupportedOptionSelector_UserDefinedName = 0,
    GevSupportedOptionSelector_SerialNumber = 1,
    GevSupportedOptionSelector_HeartbeatDisable = 2,
    GevSupportedOptionSelector_LinkSpeed = 3,
    GevSupportedOptionSelector_CCPApplicationSocket = 4,
    GevSupportedOptionSelector_ManifestTable = 5,
    GevSupportedOptionSelector_TestData = 6,
    GevSupportedOptionSelector_DiscoveryAckDelay = 7,
    GevSupportedOptionSelector_DiscoveryAckDelayWritable = 8,
    GevSupportedOptionSelector_ExtendedStatusCodes = 9,
    GevSupportedOptionSelector_Action = 10,
    GevSupportedOptionSelector_PendingAck = 11,
    GevSupportedOptionSelector_EventData = 12,
    GevSupportedOptionSelector_Event = 13,
    GevSupportedOptionSelector_PacketResend = 14,
    GevSupportedOptionSelector_WriteMem = 15,
    GevSupportedOptionSelector_CommandsConcatenation = 16,
    GevSupportedOptionSelector_IPConfigurationLLA = 17,
    GevSupportedOptionSelector_IPConfigurationDHCP = 18,
    GevSupportedOptionSelector_IPConfigurationPersistentIP = 19,
    GevSupportedOptionSelector_StreamChannelSourceSocket = 20,
    GevSupportedOptionSelector_MessageChannelSourceSocket = 21,
    NUM_GEVSUPPORTEDOPTIONSELECTOR = 22,
)

const spinGevSupportedOptionSelectorEnums = _spinGevSupportedOptionSelectorEnums

@cenum(_spinBlackLevelSelectorEnums,
    BlackLevelSelector_All = 0,
    BlackLevelSelector_Analog = 1,
    BlackLevelSelector_Digital = 2,
    NUM_BLACKLEVELSELECTOR = 3,
)

const spinBlackLevelSelectorEnums = _spinBlackLevelSelectorEnums

@cenum(_spinBalanceWhiteAutoEnums,
    BalanceWhiteAuto_Off = 0,
    BalanceWhiteAuto_Once = 1,
    BalanceWhiteAuto_Continuous = 2,
    NUM_BALANCEWHITEAUTO = 3,
)

const spinBalanceWhiteAutoEnums = _spinBalanceWhiteAutoEnums

@cenum(_spinGainAutoEnums,
    GainAuto_Off = 0,
    GainAuto_Once = 1,
    GainAuto_Continuous = 2,
    NUM_GAINAUTO = 3,
)

const spinGainAutoEnums = _spinGainAutoEnums

@cenum(_spinBalanceRatioSelectorEnums,
    BalanceRatioSelector_Red = 0,
    BalanceRatioSelector_Blue = 1,
    NUM_BALANCERATIOSELECTOR = 2,
)

const spinBalanceRatioSelectorEnums = _spinBalanceRatioSelectorEnums

@cenum(_spinGainSelectorEnums,
    GainSelector_All = 0,
    NUM_GAINSELECTOR = 1,
)

const spinGainSelectorEnums = _spinGainSelectorEnums

@cenum(_spinDefectCorrectionModeEnums,
    DefectCorrectionMode_Average = 0,
    DefectCorrectionMode_Highlight = 1,
    DefectCorrectionMode_Zero = 2,
    NUM_DEFECTCORRECTIONMODE = 3,
)

const spinDefectCorrectionModeEnums = _spinDefectCorrectionModeEnums

@cenum(_spinUserSetSelectorEnums,
    UserSetSelector_Default = 0,
    UserSetSelector_UserSet0 = 1,
    UserSetSelector_UserSet1 = 2,
    NUM_USERSETSELECTOR = 3,
)

const spinUserSetSelectorEnums = _spinUserSetSelectorEnums

@cenum(_spinUserSetDefaultEnums,
    UserSetDefault_Default = 0,
    UserSetDefault_UserSet0 = 1,
    UserSetDefault_UserSet1 = 2,
    NUM_USERSETDEFAULT = 3,
)

const spinUserSetDefaultEnums = _spinUserSetDefaultEnums

@cenum(_spinSerialPortBaudRateEnums,
    SerialPortBaudRate_Baud300 = 0,
    SerialPortBaudRate_Baud600 = 1,
    SerialPortBaudRate_Baud1200 = 2,
    SerialPortBaudRate_Baud2400 = 3,
    SerialPortBaudRate_Baud4800 = 4,
    SerialPortBaudRate_Baud9600 = 5,
    SerialPortBaudRate_Baud14400 = 6,
    SerialPortBaudRate_Baud19200 = 7,
    SerialPortBaudRate_Baud38400 = 8,
    SerialPortBaudRate_Baud57600 = 9,
    SerialPortBaudRate_Baud115200 = 10,
    SerialPortBaudRate_Baud230400 = 11,
    SerialPortBaudRate_Baud460800 = 12,
    SerialPortBaudRate_Baud921600 = 13,
    NUM_SERIALPORTBAUDRATE = 14,
)

const spinSerialPortBaudRateEnums = _spinSerialPortBaudRateEnums

@cenum(_spinSerialPortParityEnums,
    SerialPortParity_None = 0,
    SerialPortParity_Odd = 1,
    SerialPortParity_Even = 2,
    SerialPortParity_Mark = 3,
    SerialPortParity_Space = 4,
    NUM_SERIALPORTPARITY = 5,
)

const spinSerialPortParityEnums = _spinSerialPortParityEnums

@cenum(_spinSerialPortSelectorEnums,
    SerialPortSelector_SerialPort0 = 0,
    NUM_SERIALPORTSELECTOR = 1,
)

const spinSerialPortSelectorEnums = _spinSerialPortSelectorEnums

@cenum(_spinSerialPortStopBitsEnums,
    SerialPortStopBits_Bits1 = 0,
    SerialPortStopBits_Bits1AndAHalf = 1,
    SerialPortStopBits_Bits2 = 2,
    NUM_SERIALPORTSTOPBITS = 3,
)

const spinSerialPortStopBitsEnums = _spinSerialPortStopBitsEnums

@cenum(_spinSerialPortSourceEnums,
    SerialPortSource_Line0 = 0,
    SerialPortSource_Line1 = 1,
    SerialPortSource_Line2 = 2,
    SerialPortSource_Line3 = 3,
    SerialPortSource_Off = 4,
    NUM_SERIALPORTSOURCE = 5,
)

const spinSerialPortSourceEnums = _spinSerialPortSourceEnums

@cenum(_spinSequencerModeEnums,
    SequencerMode_Off = 0,
    SequencerMode_On = 1,
    NUM_SEQUENCERMODE = 2,
)

const spinSequencerModeEnums = _spinSequencerModeEnums

@cenum(_spinSequencerConfigurationValidEnums,
    SequencerConfigurationValid_No = 0,
    SequencerConfigurationValid_Yes = 1,
    NUM_SEQUENCERCONFIGURATIONVALID = 2,
)

const spinSequencerConfigurationValidEnums = _spinSequencerConfigurationValidEnums

@cenum(_spinSequencerSetValidEnums,
    SequencerSetValid_No = 0,
    SequencerSetValid_Yes = 1,
    NUM_SEQUENCERSETVALID = 2,
)

const spinSequencerSetValidEnums = _spinSequencerSetValidEnums

@cenum(_spinSequencerTriggerActivationEnums,
    SequencerTriggerActivation_RisingEdge = 0,
    SequencerTriggerActivation_FallingEdge = 1,
    SequencerTriggerActivation_AnyEdge = 2,
    SequencerTriggerActivation_LevelHigh = 3,
    SequencerTriggerActivation_LevelLow = 4,
    NUM_SEQUENCERTRIGGERACTIVATION = 5,
)

const spinSequencerTriggerActivationEnums = _spinSequencerTriggerActivationEnums

@cenum(_spinSequencerConfigurationModeEnums,
    SequencerConfigurationMode_Off = 0,
    SequencerConfigurationMode_On = 1,
    NUM_SEQUENCERCONFIGURATIONMODE = 2,
)

const spinSequencerConfigurationModeEnums = _spinSequencerConfigurationModeEnums

@cenum(_spinSequencerTriggerSourceEnums,
    SequencerTriggerSource_Off = 0,
    SequencerTriggerSource_FrameStart = 1,
    NUM_SEQUENCERTRIGGERSOURCE = 2,
)

const spinSequencerTriggerSourceEnums = _spinSequencerTriggerSourceEnums

@cenum(_spinTransferQueueModeEnums,
    TransferQueueMode_FirstInFirstOut = 0,
    NUM_TRANSFERQUEUEMODE = 1,
)

const spinTransferQueueModeEnums = _spinTransferQueueModeEnums

@cenum(_spinTransferOperationModeEnums,
    TransferOperationMode_Continuous = 0,
    TransferOperationMode_MultiBlock = 1,
    NUM_TRANSFEROPERATIONMODE = 2,
)

const spinTransferOperationModeEnums = _spinTransferOperationModeEnums

@cenum(_spinTransferControlModeEnums,
    TransferControlMode_Basic = 0,
    TransferControlMode_Automatic = 1,
    TransferControlMode_UserControlled = 2,
    NUM_TRANSFERCONTROLMODE = 3,
)

const spinTransferControlModeEnums = _spinTransferControlModeEnums

@cenum(_spinChunkGainSelectorEnums,
    ChunkGainSelector_All = 0,
    ChunkGainSelector_Red = 1,
    ChunkGainSelector_Green = 2,
    ChunkGainSelector_Blue = 3,
    NUM_CHUNKGAINSELECTOR = 4,
)

const spinChunkGainSelectorEnums = _spinChunkGainSelectorEnums

@cenum(_spinChunkSelectorEnums,
    ChunkSelector_Image = 0,
    ChunkSelector_CRC = 1,
    ChunkSelector_FrameID = 2,
    ChunkSelector_OffsetX = 3,
    ChunkSelector_OffsetY = 4,
    ChunkSelector_Width = 5,
    ChunkSelector_Height = 6,
    ChunkSelector_ExposureTime = 7,
    ChunkSelector_Gain = 8,
    ChunkSelector_BlackLevel = 9,
    ChunkSelector_PixelFormat = 10,
    ChunkSelector_Timestamp = 11,
    ChunkSelector_SequencerSetActive = 12,
    ChunkSelector_SerialData = 13,
    ChunkSelector_ExposureEndLineStatusAll = 14,
    NUM_CHUNKSELECTOR = 15,
)

const spinChunkSelectorEnums = _spinChunkSelectorEnums

@cenum(_spinChunkBlackLevelSelectorEnums,
    ChunkBlackLevelSelector_All = 0,
    NUM_CHUNKBLACKLEVELSELECTOR = 1,
)

const spinChunkBlackLevelSelectorEnums = _spinChunkBlackLevelSelectorEnums

@cenum(_spinChunkPixelFormatEnums,
    ChunkPixelFormat_Mono8 = 0,
    ChunkPixelFormat_Mono12Packed = 1,
    ChunkPixelFormat_Mono16 = 2,
    ChunkPixelFormat_RGB8Packed = 3,
    ChunkPixelFormat_YUV422Packed = 4,
    ChunkPixelFormat_BayerGR8 = 5,
    ChunkPixelFormat_BayerRG8 = 6,
    ChunkPixelFormat_BayerGB8 = 7,
    ChunkPixelFormat_BayerBG8 = 8,
    ChunkPixelFormat_YCbCr601_422_8_CbYCrY = 9,
    NUM_CHUNKPIXELFORMAT = 10,
)

const spinChunkPixelFormatEnums = _spinChunkPixelFormatEnums

@cenum(_spinFileOperationStatusEnums,
    FileOperationStatus_Success = 0,
    FileOperationStatus_Failure = 1,
    FileOperationStatus_Overflow = 2,
    NUM_FILEOPERATIONSTATUS = 3,
)

const spinFileOperationStatusEnums = _spinFileOperationStatusEnums

@cenum(_spinFileOpenModeEnums,
    FileOpenMode_Read = 0,
    FileOpenMode_Write = 1,
    FileOpenMode_ReadWrite = 2,
    NUM_FILEOPENMODE = 3,
)

const spinFileOpenModeEnums = _spinFileOpenModeEnums

@cenum(_spinFileOperationSelectorEnums,
    FileOperationSelector_Open = 0,
    FileOperationSelector_Close = 1,
    FileOperationSelector_Read = 2,
    FileOperationSelector_Write = 3,
    FileOperationSelector_Delete = 4,
    NUM_FILEOPERATIONSELECTOR = 5,
)

const spinFileOperationSelectorEnums = _spinFileOperationSelectorEnums

@cenum(_spinFileSelectorEnums,
    FileSelector_UserSetDefault = 0,
    FileSelector_UserSet0 = 1,
    FileSelector_UserSet1 = 2,
    FileSelector_UserFile1 = 3,
    FileSelector_SerialPort0 = 4,
    NUM_FILESELECTOR = 5,
)

const spinFileSelectorEnums = _spinFileSelectorEnums

@cenum(_spinBinningSelectorEnums,
    BinningSelector_All = 0,
    BinningSelector_Sensor = 1,
    BinningSelector_ISP = 2,
    NUM_BINNINGSELECTOR = 3,
)

const spinBinningSelectorEnums = _spinBinningSelectorEnums

@cenum(_spinTestPatternGeneratorSelectorEnums,
    TestPatternGeneratorSelector_Sensor = 0,
    TestPatternGeneratorSelector_PipelineStart = 1,
    NUM_TESTPATTERNGENERATORSELECTOR = 2,
)

const spinTestPatternGeneratorSelectorEnums = _spinTestPatternGeneratorSelectorEnums

@cenum(_spinTestPatternEnums,
    TestPattern_Off = 0,
    TestPattern_Increment = 1,
    TestPattern_SensorTestPattern = 2,
    NUM_TESTPATTERN = 3,
)

const spinTestPatternEnums = _spinTestPatternEnums

@cenum(_spinPixelColorFilterEnums,
    PixelColorFilter_None = 0,
    PixelColorFilter_BayerRG = 1,
    PixelColorFilter_BayerGB = 2,
    PixelColorFilter_BayerGR = 3,
    PixelColorFilter_BayerBG = 4,
    NUM_PIXELCOLORFILTER = 5,
)

const spinPixelColorFilterEnums = _spinPixelColorFilterEnums

@cenum(_spinAdcBitDepthEnums,
    AdcBitDepth_Bit8 = 0,
    AdcBitDepth_Bit10 = 1,
    AdcBitDepth_Bit12 = 2,
    AdcBitDepth_Bit14 = 3,
    NUM_ADCBITDEPTH = 4,
)

const spinAdcBitDepthEnums = _spinAdcBitDepthEnums

@cenum(_spinDecimationHorizontalModeEnums,
    DecimationHorizontalMode_Discard = 0,
    NUM_DECIMATIONHORIZONTALMODE = 1,
)

const spinDecimationHorizontalModeEnums = _spinDecimationHorizontalModeEnums

@cenum(_spinBinningVerticalModeEnums,
    BinningVerticalMode_Sum = 0,
    BinningVerticalMode_Average = 1,
    NUM_BINNINGVERTICALMODE = 2,
)

const spinBinningVerticalModeEnums = _spinBinningVerticalModeEnums

@cenum(_spinPixelSizeEnums,
    PixelSize_Bpp1 = 0,
    PixelSize_Bpp2 = 1,
    PixelSize_Bpp4 = 2,
    PixelSize_Bpp8 = 3,
    PixelSize_Bpp10 = 4,
    PixelSize_Bpp12 = 5,
    PixelSize_Bpp14 = 6,
    PixelSize_Bpp16 = 7,
    PixelSize_Bpp20 = 8,
    PixelSize_Bpp24 = 9,
    PixelSize_Bpp30 = 10,
    PixelSize_Bpp32 = 11,
    PixelSize_Bpp36 = 12,
    PixelSize_Bpp48 = 13,
    PixelSize_Bpp64 = 14,
    PixelSize_Bpp96 = 15,
    NUM_PIXELSIZE = 16,
)

const spinPixelSizeEnums = _spinPixelSizeEnums

@cenum(_spinDecimationSelectorEnums,
    DecimationSelector_All = 0,
    DecimationSelector_Sensor = 1,
    NUM_DECIMATIONSELECTOR = 2,
)

const spinDecimationSelectorEnums = _spinDecimationSelectorEnums

@cenum(_spinImageCompressionModeEnums,
    ImageCompressionMode_Off = 0,
    ImageCompressionMode_Lossless = 1,
    NUM_IMAGECOMPRESSIONMODE = 2,
)

const spinImageCompressionModeEnums = _spinImageCompressionModeEnums

@cenum(_spinBinningHorizontalModeEnums,
    BinningHorizontalMode_Sum = 0,
    BinningHorizontalMode_Average = 1,
    NUM_BINNINGHORIZONTALMODE = 2,
)

const spinBinningHorizontalModeEnums = _spinBinningHorizontalModeEnums

@cenum(_spinPixelFormatEnums,
    PixelFormat_Mono8 = 0,
    PixelFormat_Mono16 = 1,
    PixelFormat_RGB8Packed = 2,
    PixelFormat_BayerGR8 = 3,
    PixelFormat_BayerRG8 = 4,
    PixelFormat_BayerGB8 = 5,
    PixelFormat_BayerBG8 = 6,
    PixelFormat_BayerGR16 = 7,
    PixelFormat_BayerRG16 = 8,
    PixelFormat_BayerGB16 = 9,
    PixelFormat_BayerBG16 = 10,
    PixelFormat_Mono12Packed = 11,
    PixelFormat_BayerGR12Packed = 12,
    PixelFormat_BayerRG12Packed = 13,
    PixelFormat_BayerGB12Packed = 14,
    PixelFormat_BayerBG12Packed = 15,
    PixelFormat_YUV411Packed = 16,
    PixelFormat_YUV422Packed = 17,
    PixelFormat_YUV444Packed = 18,
    PixelFormat_Mono12p = 19,
    PixelFormat_BayerGR12p = 20,
    PixelFormat_BayerRG12p = 21,
    PixelFormat_BayerGB12p = 22,
    PixelFormat_BayerBG12p = 23,
    PixelFormat_YCbCr8 = 24,
    PixelFormat_YCbCr422_8 = 25,
    PixelFormat_YCbCr411_8 = 26,
    PixelFormat_BGR8 = 27,
    PixelFormat_BGRa8 = 28,
    PixelFormat_Mono10Packed = 29,
    PixelFormat_BayerGR10Packed = 30,
    PixelFormat_BayerRG10Packed = 31,
    PixelFormat_BayerGB10Packed = 32,
    PixelFormat_BayerBG10Packed = 33,
    PixelFormat_Mono10p = 34,
    PixelFormat_BayerGR10p = 35,
    PixelFormat_BayerRG10p = 36,
    PixelFormat_BayerGB10p = 37,
    PixelFormat_BayerBG10p = 38,
    PixelFormat_Mono1p = 39,
    PixelFormat_Mono2p = 40,
    PixelFormat_Mono4p = 41,
    PixelFormat_Mono8s = 42,
    PixelFormat_Mono10 = 43,
    PixelFormat_Mono12 = 44,
    PixelFormat_Mono14 = 45,
    PixelFormat_BayerBG10 = 46,
    PixelFormat_BayerBG12 = 47,
    PixelFormat_BayerGB10 = 48,
    PixelFormat_BayerGB12 = 49,
    PixelFormat_BayerGR10 = 50,
    PixelFormat_BayerGR12 = 51,
    PixelFormat_BayerRG10 = 52,
    PixelFormat_BayerRG12 = 53,
    PixelFormat_RGBa8 = 54,
    PixelFormat_RGBa10 = 55,
    PixelFormat_RGBa10p = 56,
    PixelFormat_RGBa12 = 57,
    PixelFormat_RGBa12p = 58,
    PixelFormat_RGBa14 = 59,
    PixelFormat_RGBa16 = 60,
    PixelFormat_RGB8 = 61,
    PixelFormat_RGB8_Planar = 62,
    PixelFormat_RGB10 = 63,
    PixelFormat_RGB10_Planar = 64,
    PixelFormat_RGB10p = 65,
    PixelFormat_RGB10p32 = 66,
    PixelFormat_RGB12 = 67,
    PixelFormat_RGB12_Planar = 68,
    PixelFormat_RGB12p = 69,
    PixelFormat_RGB14 = 70,
    PixelFormat_RGB16 = 71,
    PixelFormat_RGB16_Planar = 72,
    PixelFormat_RGB565p = 73,
    PixelFormat_BGRa10 = 74,
    PixelFormat_BGRa10p = 75,
    PixelFormat_BGRa12 = 76,
    PixelFormat_BGRa12p = 77,
    PixelFormat_BGRa14 = 78,
    PixelFormat_BGRa16 = 79,
    PixelFormat_BGR10 = 80,
    PixelFormat_BGR10p = 81,
    PixelFormat_BGR12 = 82,
    PixelFormat_BGR12p = 83,
    PixelFormat_BGR14 = 84,
    PixelFormat_BGR16 = 85,
    PixelFormat_BGR565p = 86,
    PixelFormat_R8 = 87,
    PixelFormat_R10 = 88,
    PixelFormat_R12 = 89,
    PixelFormat_R16 = 90,
    PixelFormat_G8 = 91,
    PixelFormat_G10 = 92,
    PixelFormat_G12 = 93,
    PixelFormat_G16 = 94,
    PixelFormat_B8 = 95,
    PixelFormat_B10 = 96,
    PixelFormat_B12 = 97,
    PixelFormat_B16 = 98,
    PixelFormat_Coord3D_ABC8 = 99,
    PixelFormat_Coord3D_ABC8_Planar = 100,
    PixelFormat_Coord3D_ABC10p = 101,
    PixelFormat_Coord3D_ABC10p_Planar = 102,
    PixelFormat_Coord3D_ABC12p = 103,
    PixelFormat_Coord3D_ABC12p_Planar = 104,
    PixelFormat_Coord3D_ABC16 = 105,
    PixelFormat_Coord3D_ABC16_Planar = 106,
    PixelFormat_Coord3D_ABC32f = 107,
    PixelFormat_Coord3D_ABC32f_Planar = 108,
    PixelFormat_Coord3D_AC8 = 109,
    PixelFormat_Coord3D_AC8_Planar = 110,
    PixelFormat_Coord3D_AC10p = 111,
    PixelFormat_Coord3D_AC10p_Planar = 112,
    PixelFormat_Coord3D_AC12p = 113,
    PixelFormat_Coord3D_AC12p_Planar = 114,
    PixelFormat_Coord3D_AC16 = 115,
    PixelFormat_Coord3D_AC16_Planar = 116,
    PixelFormat_Coord3D_AC32f = 117,
    PixelFormat_Coord3D_AC32f_Planar = 118,
    PixelFormat_Coord3D_A8 = 119,
    PixelFormat_Coord3D_A10p = 120,
    PixelFormat_Coord3D_A12p = 121,
    PixelFormat_Coord3D_A16 = 122,
    PixelFormat_Coord3D_A32f = 123,
    PixelFormat_Coord3D_B8 = 124,
    PixelFormat_Coord3D_B10p = 125,
    PixelFormat_Coord3D_B12p = 126,
    PixelFormat_Coord3D_B16 = 127,
    PixelFormat_Coord3D_B32f = 128,
    PixelFormat_Coord3D_C8 = 129,
    PixelFormat_Coord3D_C10p = 130,
    PixelFormat_Coord3D_C12p = 131,
    PixelFormat_Coord3D_C16 = 132,
    PixelFormat_Coord3D_C32f = 133,
    PixelFormat_Confidence1 = 134,
    PixelFormat_Confidence1p = 135,
    PixelFormat_Confidence8 = 136,
    PixelFormat_Confidence16 = 137,
    PixelFormat_Confidence32f = 138,
    PixelFormat_BiColorBGRG8 = 139,
    PixelFormat_BiColorBGRG10 = 140,
    PixelFormat_BiColorBGRG10p = 141,
    PixelFormat_BiColorBGRG12 = 142,
    PixelFormat_BiColorBGRG12p = 143,
    PixelFormat_BiColorRGBG8 = 144,
    PixelFormat_BiColorRGBG10 = 145,
    PixelFormat_BiColorRGBG10p = 146,
    PixelFormat_BiColorRGBG12 = 147,
    PixelFormat_BiColorRGBG12p = 148,
    PixelFormat_SCF1WBWG8 = 149,
    PixelFormat_SCF1WBWG10 = 150,
    PixelFormat_SCF1WBWG10p = 151,
    PixelFormat_SCF1WBWG12 = 152,
    PixelFormat_SCF1WBWG12p = 153,
    PixelFormat_SCF1WBWG14 = 154,
    PixelFormat_SCF1WBWG16 = 155,
    PixelFormat_SCF1WGWB8 = 156,
    PixelFormat_SCF1WGWB10 = 157,
    PixelFormat_SCF1WGWB10p = 158,
    PixelFormat_SCF1WGWB12 = 159,
    PixelFormat_SCF1WGWB12p = 160,
    PixelFormat_SCF1WGWB14 = 161,
    PixelFormat_SCF1WGWB16 = 162,
    PixelFormat_SCF1WGWR8 = 163,
    PixelFormat_SCF1WGWR10 = 164,
    PixelFormat_SCF1WGWR10p = 165,
    PixelFormat_SCF1WGWR12 = 166,
    PixelFormat_SCF1WGWR12p = 167,
    PixelFormat_SCF1WGWR14 = 168,
    PixelFormat_SCF1WGWR16 = 169,
    PixelFormat_SCF1WRWG8 = 170,
    PixelFormat_SCF1WRWG10 = 171,
    PixelFormat_SCF1WRWG10p = 172,
    PixelFormat_SCF1WRWG12 = 173,
    PixelFormat_SCF1WRWG12p = 174,
    PixelFormat_SCF1WRWG14 = 175,
    PixelFormat_SCF1WRWG16 = 176,
    PixelFormat_YCbCr8_CbYCr = 177,
    PixelFormat_YCbCr10_CbYCr = 178,
    PixelFormat_YCbCr10p_CbYCr = 179,
    PixelFormat_YCbCr12_CbYCr = 180,
    PixelFormat_YCbCr12p_CbYCr = 181,
    PixelFormat_YCbCr411_8_CbYYCrYY = 182,
    PixelFormat_YCbCr422_8_CbYCrY = 183,
    PixelFormat_YCbCr422_10 = 184,
    PixelFormat_YCbCr422_10_CbYCrY = 185,
    PixelFormat_YCbCr422_10p = 186,
    PixelFormat_YCbCr422_10p_CbYCrY = 187,
    PixelFormat_YCbCr422_12 = 188,
    PixelFormat_YCbCr422_12_CbYCrY = 189,
    PixelFormat_YCbCr422_12p = 190,
    PixelFormat_YCbCr422_12p_CbYCrY = 191,
    PixelFormat_YCbCr601_8_CbYCr = 192,
    PixelFormat_YCbCr601_10_CbYCr = 193,
    PixelFormat_YCbCr601_10p_CbYCr = 194,
    PixelFormat_YCbCr601_12_CbYCr = 195,
    PixelFormat_YCbCr601_12p_CbYCr = 196,
    PixelFormat_YCbCr601_411_8_CbYYCrYY = 197,
    PixelFormat_YCbCr601_422_8 = 198,
    PixelFormat_YCbCr601_422_8_CbYCrY = 199,
    PixelFormat_YCbCr601_422_10 = 200,
    PixelFormat_YCbCr601_422_10_CbYCrY = 201,
    PixelFormat_YCbCr601_422_10p = 202,
    PixelFormat_YCbCr601_422_10p_CbYCrY = 203,
    PixelFormat_YCbCr601_422_12 = 204,
    PixelFormat_YCbCr601_422_12_CbYCrY = 205,
    PixelFormat_YCbCr601_422_12p = 206,
    PixelFormat_YCbCr601_422_12p_CbYCrY = 207,
    PixelFormat_YCbCr709_8_CbYCr = 208,
    PixelFormat_YCbCr709_10_CbYCr = 209,
    PixelFormat_YCbCr709_10p_CbYCr = 210,
    PixelFormat_YCbCr709_12_CbYCr = 211,
    PixelFormat_YCbCr709_12p_CbYCr = 212,
    PixelFormat_YCbCr709_411_8_CbYYCrYY = 213,
    PixelFormat_YCbCr709_422_8 = 214,
    PixelFormat_YCbCr709_422_8_CbYCrY = 215,
    PixelFormat_YCbCr709_422_10 = 216,
    PixelFormat_YCbCr709_422_10_CbYCrY = 217,
    PixelFormat_YCbCr709_422_10p = 218,
    PixelFormat_YCbCr709_422_10p_CbYCrY = 219,
    PixelFormat_YCbCr709_422_12 = 220,
    PixelFormat_YCbCr709_422_12_CbYCrY = 221,
    PixelFormat_YCbCr709_422_12p = 222,
    PixelFormat_YCbCr709_422_12p_CbYCrY = 223,
    PixelFormat_YUV8_UYV = 224,
    PixelFormat_YUV411_8_UYYVYY = 225,
    PixelFormat_YUV422_8 = 226,
    PixelFormat_YUV422_8_UYVY = 227,
    PixelFormat_Polarized8 = 228,
    PixelFormat_Polarized10p = 229,
    PixelFormat_Polarized12p = 230,
    PixelFormat_Polarized16 = 231,
    PixelFormat_BayerRGPolarized8 = 232,
    PixelFormat_BayerRGPolarized10p = 233,
    PixelFormat_BayerRGPolarized12p = 234,
    PixelFormat_BayerRGPolarized16 = 235,
    PixelFormat_Raw16 = 236,
    PixelFormat_Raw8 = 237,
    PixelFormat_R12_Jpeg = 238,
    PixelFormat_GR12_Jpeg = 239,
    PixelFormat_GB12_Jpeg = 240,
    PixelFormat_B12_Jpeg = 241,
    UNKNOWN_PIXELFORMAT = 242,
    NUM_PIXELFORMAT = 243,
)

const spinPixelFormatEnums = _spinPixelFormatEnums

@cenum(_spinDecimationVerticalModeEnums,
    DecimationVerticalMode_Discard = 0,
    NUM_DECIMATIONVERTICALMODE = 1,
)

const spinDecimationVerticalModeEnums = _spinDecimationVerticalModeEnums

@cenum(_spinLineModeEnums,
    LineMode_Input = 0,
    LineMode_Output = 1,
    NUM_LINEMODE = 2,
)

const spinLineModeEnums = _spinLineModeEnums

@cenum(_spinLineSourceEnums,
    LineSource_Off = 0,
    LineSource_Line0 = 1,
    LineSource_Line1 = 2,
    LineSource_Line2 = 3,
    LineSource_Line3 = 4,
    LineSource_UserOutput0 = 5,
    LineSource_UserOutput1 = 6,
    LineSource_UserOutput2 = 7,
    LineSource_UserOutput3 = 8,
    LineSource_Counter0Active = 9,
    LineSource_Counter1Active = 10,
    LineSource_LogicBlock0 = 11,
    LineSource_LogicBlock1 = 12,
    LineSource_ExposureActive = 13,
    LineSource_FrameTriggerWait = 14,
    LineSource_SerialPort0 = 15,
    LineSource_PPSSignal = 16,
    LineSource_AllPixel = 17,
    LineSource_AnyPixel = 18,
    NUM_LINESOURCE = 19,
)

const spinLineSourceEnums = _spinLineSourceEnums

@cenum(_spinLineInputFilterSelectorEnums,
    LineInputFilterSelector_Deglitch = 0,
    LineInputFilterSelector_Debounce = 1,
    NUM_LINEINPUTFILTERSELECTOR = 2,
)

const spinLineInputFilterSelectorEnums = _spinLineInputFilterSelectorEnums

@cenum(_spinUserOutputSelectorEnums,
    UserOutputSelector_UserOutput0 = 0,
    UserOutputSelector_UserOutput1 = 1,
    UserOutputSelector_UserOutput2 = 2,
    UserOutputSelector_UserOutput3 = 3,
    NUM_USEROUTPUTSELECTOR = 4,
)

const spinUserOutputSelectorEnums = _spinUserOutputSelectorEnums

@cenum(_spinLineFormatEnums,
    LineFormat_NoConnect = 0,
    LineFormat_TriState = 1,
    LineFormat_TTL = 2,
    LineFormat_LVDS = 3,
    LineFormat_RS422 = 4,
    LineFormat_OptoCoupled = 5,
    LineFormat_OpenDrain = 6,
    NUM_LINEFORMAT = 7,
)

const spinLineFormatEnums = _spinLineFormatEnums

@cenum(_spinLineSelectorEnums,
    LineSelector_Line0 = 0,
    LineSelector_Line1 = 1,
    LineSelector_Line2 = 2,
    LineSelector_Line3 = 3,
    NUM_LINESELECTOR = 4,
)

const spinLineSelectorEnums = _spinLineSelectorEnums

@cenum(_spinExposureActiveModeEnums,
    ExposureActiveMode_Line1 = 0,
    ExposureActiveMode_AnyPixels = 1,
    ExposureActiveMode_AllPixels = 2,
    NUM_EXPOSUREACTIVEMODE = 3,
)

const spinExposureActiveModeEnums = _spinExposureActiveModeEnums

@cenum(_spinCounterTriggerActivationEnums,
    CounterTriggerActivation_LevelLow = 0,
    CounterTriggerActivation_LevelHigh = 1,
    CounterTriggerActivation_FallingEdge = 2,
    CounterTriggerActivation_RisingEdge = 3,
    CounterTriggerActivation_AnyEdge = 4,
    NUM_COUNTERTRIGGERACTIVATION = 5,
)

const spinCounterTriggerActivationEnums = _spinCounterTriggerActivationEnums

@cenum(_spinCounterSelectorEnums,
    CounterSelector_Counter0 = 0,
    CounterSelector_Counter1 = 1,
    NUM_COUNTERSELECTOR = 2,
)

const spinCounterSelectorEnums = _spinCounterSelectorEnums

@cenum(_spinCounterStatusEnums,
    CounterStatus_CounterIdle = 0,
    CounterStatus_CounterTriggerWait = 1,
    CounterStatus_CounterActive = 2,
    CounterStatus_CounterCompleted = 3,
    CounterStatus_CounterOverflow = 4,
    NUM_COUNTERSTATUS = 5,
)

const spinCounterStatusEnums = _spinCounterStatusEnums

@cenum(_spinCounterTriggerSourceEnums,
    CounterTriggerSource_Off = 0,
    CounterTriggerSource_Line0 = 1,
    CounterTriggerSource_Line1 = 2,
    CounterTriggerSource_Line2 = 3,
    CounterTriggerSource_Line3 = 4,
    CounterTriggerSource_UserOutput0 = 5,
    CounterTriggerSource_UserOutput1 = 6,
    CounterTriggerSource_UserOutput2 = 7,
    CounterTriggerSource_UserOutput3 = 8,
    CounterTriggerSource_Counter0Start = 9,
    CounterTriggerSource_Counter1Start = 10,
    CounterTriggerSource_Counter0End = 11,
    CounterTriggerSource_Counter1End = 12,
    CounterTriggerSource_LogicBlock0 = 13,
    CounterTriggerSource_LogicBlock1 = 14,
    CounterTriggerSource_ExposureStart = 15,
    CounterTriggerSource_ExposureEnd = 16,
    CounterTriggerSource_FrameTriggerWait = 17,
    NUM_COUNTERTRIGGERSOURCE = 18,
)

const spinCounterTriggerSourceEnums = _spinCounterTriggerSourceEnums

@cenum(_spinCounterResetSourceEnums,
    CounterResetSource_Off = 0,
    CounterResetSource_Line0 = 1,
    CounterResetSource_Line1 = 2,
    CounterResetSource_Line2 = 3,
    CounterResetSource_Line3 = 4,
    CounterResetSource_UserOutput0 = 5,
    CounterResetSource_UserOutput1 = 6,
    CounterResetSource_UserOutput2 = 7,
    CounterResetSource_UserOutput3 = 8,
    CounterResetSource_Counter0Start = 9,
    CounterResetSource_Counter1Start = 10,
    CounterResetSource_Counter0End = 11,
    CounterResetSource_Counter1End = 12,
    CounterResetSource_LogicBlock0 = 13,
    CounterResetSource_LogicBlock1 = 14,
    CounterResetSource_ExposureStart = 15,
    CounterResetSource_ExposureEnd = 16,
    CounterResetSource_FrameTriggerWait = 17,
    NUM_COUNTERRESETSOURCE = 18,
)

const spinCounterResetSourceEnums = _spinCounterResetSourceEnums

@cenum(_spinCounterEventSourceEnums,
    CounterEventSource_Off = 0,
    CounterEventSource_MHzTick = 1,
    CounterEventSource_Line0 = 2,
    CounterEventSource_Line1 = 3,
    CounterEventSource_Line2 = 4,
    CounterEventSource_Line3 = 5,
    CounterEventSource_UserOutput0 = 6,
    CounterEventSource_UserOutput1 = 7,
    CounterEventSource_UserOutput2 = 8,
    CounterEventSource_UserOutput3 = 9,
    CounterEventSource_Counter0Start = 10,
    CounterEventSource_Counter1Start = 11,
    CounterEventSource_Counter0End = 12,
    CounterEventSource_Counter1End = 13,
    CounterEventSource_LogicBlock0 = 14,
    CounterEventSource_LogicBlock1 = 15,
    CounterEventSource_ExposureStart = 16,
    CounterEventSource_ExposureEnd = 17,
    CounterEventSource_FrameTriggerWait = 18,
    NUM_COUNTEREVENTSOURCE = 19,
)

const spinCounterEventSourceEnums = _spinCounterEventSourceEnums

@cenum(_spinCounterEventActivationEnums,
    CounterEventActivation_LevelLow = 0,
    CounterEventActivation_LevelHigh = 1,
    CounterEventActivation_FallingEdge = 2,
    CounterEventActivation_RisingEdge = 3,
    CounterEventActivation_AnyEdge = 4,
    NUM_COUNTEREVENTACTIVATION = 5,
)

const spinCounterEventActivationEnums = _spinCounterEventActivationEnums

@cenum(_spinCounterResetActivationEnums,
    CounterResetActivation_LevelLow = 0,
    CounterResetActivation_LevelHigh = 1,
    CounterResetActivation_FallingEdge = 2,
    CounterResetActivation_RisingEdge = 3,
    CounterResetActivation_AnyEdge = 4,
    NUM_COUNTERRESETACTIVATION = 5,
)

const spinCounterResetActivationEnums = _spinCounterResetActivationEnums

@cenum(_spinDeviceTypeEnums,
    DeviceType_Transmitter = 0,
    DeviceType_Receiver = 1,
    DeviceType_Transceiver = 2,
    DeviceType_Peripheral = 3,
    NUM_DEVICETYPE = 4,
)

const spinDeviceTypeEnums = _spinDeviceTypeEnums

@cenum(_spinDeviceConnectionStatusEnums,
    DeviceConnectionStatus_Active = 0,
    DeviceConnectionStatus_Inactive = 1,
    NUM_DEVICECONNECTIONSTATUS = 2,
)

const spinDeviceConnectionStatusEnums = _spinDeviceConnectionStatusEnums

@cenum(_spinDeviceLinkThroughputLimitModeEnums,
    DeviceLinkThroughputLimitMode_On = 0,
    DeviceLinkThroughputLimitMode_Off = 1,
    NUM_DEVICELINKTHROUGHPUTLIMITMODE = 2,
)

const spinDeviceLinkThroughputLimitModeEnums = _spinDeviceLinkThroughputLimitModeEnums

@cenum(_spinDeviceLinkHeartbeatModeEnums,
    DeviceLinkHeartbeatMode_On = 0,
    DeviceLinkHeartbeatMode_Off = 1,
    NUM_DEVICELINKHEARTBEATMODE = 2,
)

const spinDeviceLinkHeartbeatModeEnums = _spinDeviceLinkHeartbeatModeEnums

@cenum(_spinDeviceStreamChannelTypeEnums,
    DeviceStreamChannelType_Transmitter = 0,
    DeviceStreamChannelType_Receiver = 1,
    NUM_DEVICESTREAMCHANNELTYPE = 2,
)

const spinDeviceStreamChannelTypeEnums = _spinDeviceStreamChannelTypeEnums

@cenum(_spinDeviceStreamChannelEndiannessEnums,
    DeviceStreamChannelEndianness_Big = 0,
    DeviceStreamChannelEndianness_Little = 1,
    NUM_DEVICESTREAMCHANNELENDIANNESS = 2,
)

const spinDeviceStreamChannelEndiannessEnums = _spinDeviceStreamChannelEndiannessEnums

@cenum(_spinDeviceClockSelectorEnums,
    DeviceClockSelector_Sensor = 0,
    DeviceClockSelector_SensorDigitization = 1,
    DeviceClockSelector_CameraLink = 2,
    NUM_DEVICECLOCKSELECTOR = 3,
)

const spinDeviceClockSelectorEnums = _spinDeviceClockSelectorEnums

@cenum(_spinDeviceSerialPortSelectorEnums,
    DeviceSerialPortSelector_CameraLink = 0,
    NUM_DEVICESERIALPORTSELECTOR = 1,
)

const spinDeviceSerialPortSelectorEnums = _spinDeviceSerialPortSelectorEnums

@cenum(_spinDeviceSerialPortBaudRateEnums,
    DeviceSerialPortBaudRate_Baud9600 = 0,
    DeviceSerialPortBaudRate_Baud19200 = 1,
    DeviceSerialPortBaudRate_Baud38400 = 2,
    DeviceSerialPortBaudRate_Baud57600 = 3,
    DeviceSerialPortBaudRate_Baud115200 = 4,
    DeviceSerialPortBaudRate_Baud230400 = 5,
    DeviceSerialPortBaudRate_Baud460800 = 6,
    DeviceSerialPortBaudRate_Baud921600 = 7,
    NUM_DEVICESERIALPORTBAUDRATE = 8,
)

const spinDeviceSerialPortBaudRateEnums = _spinDeviceSerialPortBaudRateEnums

@cenum(_spinSensorTapsEnums,
    SensorTaps_One = 0,
    SensorTaps_Two = 1,
    SensorTaps_Three = 2,
    SensorTaps_Four = 3,
    SensorTaps_Eight = 4,
    SensorTaps_Ten = 5,
    NUM_SENSORTAPS = 6,
)

const spinSensorTapsEnums = _spinSensorTapsEnums

@cenum(_spinSensorDigitizationTapsEnums,
    SensorDigitizationTaps_One = 0,
    SensorDigitizationTaps_Two = 1,
    SensorDigitizationTaps_Three = 2,
    SensorDigitizationTaps_Four = 3,
    SensorDigitizationTaps_Eight = 4,
    SensorDigitizationTaps_Ten = 5,
    NUM_SENSORDIGITIZATIONTAPS = 6,
)

const spinSensorDigitizationTapsEnums = _spinSensorDigitizationTapsEnums

@cenum(_spinRegionSelectorEnums,
    RegionSelector_Region0 = 0,
    RegionSelector_Region1 = 1,
    RegionSelector_Region2 = 2,
    RegionSelector_All = 3,
    NUM_REGIONSELECTOR = 4,
)

const spinRegionSelectorEnums = _spinRegionSelectorEnums

@cenum(_spinRegionModeEnums,
    RegionMode_Off = 0,
    RegionMode_On = 1,
    NUM_REGIONMODE = 2,
)

const spinRegionModeEnums = _spinRegionModeEnums

@cenum(_spinRegionDestinationEnums,
    RegionDestination_Stream0 = 0,
    RegionDestination_Stream1 = 1,
    RegionDestination_Stream2 = 2,
    NUM_REGIONDESTINATION = 3,
)

const spinRegionDestinationEnums = _spinRegionDestinationEnums

@cenum(_spinImageComponentSelectorEnums,
    ImageComponentSelector_Intensity = 0,
    ImageComponentSelector_Color = 1,
    ImageComponentSelector_Infrared = 2,
    ImageComponentSelector_Ultraviolet = 3,
    ImageComponentSelector_Range = 4,
    ImageComponentSelector_Disparity = 5,
    ImageComponentSelector_Confidence = 6,
    ImageComponentSelector_Scatter = 7,
    NUM_IMAGECOMPONENTSELECTOR = 8,
)

const spinImageComponentSelectorEnums = _spinImageComponentSelectorEnums

@cenum(_spinPixelFormatInfoSelectorEnums,
    PixelFormatInfoSelector_Mono1p = 0,
    PixelFormatInfoSelector_Mono2p = 1,
    PixelFormatInfoSelector_Mono4p = 2,
    PixelFormatInfoSelector_Mono8 = 3,
    PixelFormatInfoSelector_Mono8s = 4,
    PixelFormatInfoSelector_Mono10 = 5,
    PixelFormatInfoSelector_Mono10p = 6,
    PixelFormatInfoSelector_Mono12 = 7,
    PixelFormatInfoSelector_Mono12p = 8,
    PixelFormatInfoSelector_Mono14 = 9,
    PixelFormatInfoSelector_Mono16 = 10,
    PixelFormatInfoSelector_BayerBG8 = 11,
    PixelFormatInfoSelector_BayerBG10 = 12,
    PixelFormatInfoSelector_BayerBG10p = 13,
    PixelFormatInfoSelector_BayerBG12 = 14,
    PixelFormatInfoSelector_BayerBG12p = 15,
    PixelFormatInfoSelector_BayerBG16 = 16,
    PixelFormatInfoSelector_BayerGB8 = 17,
    PixelFormatInfoSelector_BayerGB10 = 18,
    PixelFormatInfoSelector_BayerGB10p = 19,
    PixelFormatInfoSelector_BayerGB12 = 20,
    PixelFormatInfoSelector_BayerGB12p = 21,
    PixelFormatInfoSelector_BayerGB16 = 22,
    PixelFormatInfoSelector_BayerGR8 = 23,
    PixelFormatInfoSelector_BayerGR10 = 24,
    PixelFormatInfoSelector_BayerGR10p = 25,
    PixelFormatInfoSelector_BayerGR12 = 26,
    PixelFormatInfoSelector_BayerGR12p = 27,
    PixelFormatInfoSelector_BayerGR16 = 28,
    PixelFormatInfoSelector_BayerRG8 = 29,
    PixelFormatInfoSelector_BayerRG10 = 30,
    PixelFormatInfoSelector_BayerRG10p = 31,
    PixelFormatInfoSelector_BayerRG12 = 32,
    PixelFormatInfoSelector_BayerRG12p = 33,
    PixelFormatInfoSelector_BayerRG16 = 34,
    PixelFormatInfoSelector_RGBa8 = 35,
    PixelFormatInfoSelector_RGBa10 = 36,
    PixelFormatInfoSelector_RGBa10p = 37,
    PixelFormatInfoSelector_RGBa12 = 38,
    PixelFormatInfoSelector_RGBa12p = 39,
    PixelFormatInfoSelector_RGBa14 = 40,
    PixelFormatInfoSelector_RGBa16 = 41,
    PixelFormatInfoSelector_RGB8 = 42,
    PixelFormatInfoSelector_RGB8_Planar = 43,
    PixelFormatInfoSelector_RGB10 = 44,
    PixelFormatInfoSelector_RGB10_Planar = 45,
    PixelFormatInfoSelector_RGB10p = 46,
    PixelFormatInfoSelector_RGB10p32 = 47,
    PixelFormatInfoSelector_RGB12 = 48,
    PixelFormatInfoSelector_RGB12_Planar = 49,
    PixelFormatInfoSelector_RGB12p = 50,
    PixelFormatInfoSelector_RGB14 = 51,
    PixelFormatInfoSelector_RGB16 = 52,
    PixelFormatInfoSelector_RGB16_Planar = 53,
    PixelFormatInfoSelector_RGB565p = 54,
    PixelFormatInfoSelector_BGRa8 = 55,
    PixelFormatInfoSelector_BGRa10 = 56,
    PixelFormatInfoSelector_BGRa10p = 57,
    PixelFormatInfoSelector_BGRa12 = 58,
    PixelFormatInfoSelector_BGRa12p = 59,
    PixelFormatInfoSelector_BGRa14 = 60,
    PixelFormatInfoSelector_BGRa16 = 61,
    PixelFormatInfoSelector_BGR8 = 62,
    PixelFormatInfoSelector_BGR10 = 63,
    PixelFormatInfoSelector_BGR10p = 64,
    PixelFormatInfoSelector_BGR12 = 65,
    PixelFormatInfoSelector_BGR12p = 66,
    PixelFormatInfoSelector_BGR14 = 67,
    PixelFormatInfoSelector_BGR16 = 68,
    PixelFormatInfoSelector_BGR565p = 69,
    PixelFormatInfoSelector_R8 = 70,
    PixelFormatInfoSelector_R10 = 71,
    PixelFormatInfoSelector_R12 = 72,
    PixelFormatInfoSelector_R16 = 73,
    PixelFormatInfoSelector_G8 = 74,
    PixelFormatInfoSelector_G10 = 75,
    PixelFormatInfoSelector_G12 = 76,
    PixelFormatInfoSelector_G16 = 77,
    PixelFormatInfoSelector_B8 = 78,
    PixelFormatInfoSelector_B10 = 79,
    PixelFormatInfoSelector_B12 = 80,
    PixelFormatInfoSelector_B16 = 81,
    PixelFormatInfoSelector_Coord3D_ABC8 = 82,
    PixelFormatInfoSelector_Coord3D_ABC8_Planar = 83,
    PixelFormatInfoSelector_Coord3D_ABC10p = 84,
    PixelFormatInfoSelector_Coord3D_ABC10p_Planar = 85,
    PixelFormatInfoSelector_Coord3D_ABC12p = 86,
    PixelFormatInfoSelector_Coord3D_ABC12p_Planar = 87,
    PixelFormatInfoSelector_Coord3D_ABC16 = 88,
    PixelFormatInfoSelector_Coord3D_ABC16_Planar = 89,
    PixelFormatInfoSelector_Coord3D_ABC32f = 90,
    PixelFormatInfoSelector_Coord3D_ABC32f_Planar = 91,
    PixelFormatInfoSelector_Coord3D_AC8 = 92,
    PixelFormatInfoSelector_Coord3D_AC8_Planar = 93,
    PixelFormatInfoSelector_Coord3D_AC10p = 94,
    PixelFormatInfoSelector_Coord3D_AC10p_Planar = 95,
    PixelFormatInfoSelector_Coord3D_AC12p = 96,
    PixelFormatInfoSelector_Coord3D_AC12p_Planar = 97,
    PixelFormatInfoSelector_Coord3D_AC16 = 98,
    PixelFormatInfoSelector_Coord3D_AC16_Planar = 99,
    PixelFormatInfoSelector_Coord3D_AC32f = 100,
    PixelFormatInfoSelector_Coord3D_AC32f_Planar = 101,
    PixelFormatInfoSelector_Coord3D_A8 = 102,
    PixelFormatInfoSelector_Coord3D_A10p = 103,
    PixelFormatInfoSelector_Coord3D_A12p = 104,
    PixelFormatInfoSelector_Coord3D_A16 = 105,
    PixelFormatInfoSelector_Coord3D_A32f = 106,
    PixelFormatInfoSelector_Coord3D_B8 = 107,
    PixelFormatInfoSelector_Coord3D_B10p = 108,
    PixelFormatInfoSelector_Coord3D_B12p = 109,
    PixelFormatInfoSelector_Coord3D_B16 = 110,
    PixelFormatInfoSelector_Coord3D_B32f = 111,
    PixelFormatInfoSelector_Coord3D_C8 = 112,
    PixelFormatInfoSelector_Coord3D_C10p = 113,
    PixelFormatInfoSelector_Coord3D_C12p = 114,
    PixelFormatInfoSelector_Coord3D_C16 = 115,
    PixelFormatInfoSelector_Coord3D_C32f = 116,
    PixelFormatInfoSelector_Confidence1 = 117,
    PixelFormatInfoSelector_Confidence1p = 118,
    PixelFormatInfoSelector_Confidence8 = 119,
    PixelFormatInfoSelector_Confidence16 = 120,
    PixelFormatInfoSelector_Confidence32f = 121,
    PixelFormatInfoSelector_BiColorBGRG8 = 122,
    PixelFormatInfoSelector_BiColorBGRG10 = 123,
    PixelFormatInfoSelector_BiColorBGRG10p = 124,
    PixelFormatInfoSelector_BiColorBGRG12 = 125,
    PixelFormatInfoSelector_BiColorBGRG12p = 126,
    PixelFormatInfoSelector_BiColorRGBG8 = 127,
    PixelFormatInfoSelector_BiColorRGBG10 = 128,
    PixelFormatInfoSelector_BiColorRGBG10p = 129,
    PixelFormatInfoSelector_BiColorRGBG12 = 130,
    PixelFormatInfoSelector_BiColorRGBG12p = 131,
    PixelFormatInfoSelector_SCF1WBWG8 = 132,
    PixelFormatInfoSelector_SCF1WBWG10 = 133,
    PixelFormatInfoSelector_SCF1WBWG10p = 134,
    PixelFormatInfoSelector_SCF1WBWG12 = 135,
    PixelFormatInfoSelector_SCF1WBWG12p = 136,
    PixelFormatInfoSelector_SCF1WBWG14 = 137,
    PixelFormatInfoSelector_SCF1WBWG16 = 138,
    PixelFormatInfoSelector_SCF1WGWB8 = 139,
    PixelFormatInfoSelector_SCF1WGWB10 = 140,
    PixelFormatInfoSelector_SCF1WGWB10p = 141,
    PixelFormatInfoSelector_SCF1WGWB12 = 142,
    PixelFormatInfoSelector_SCF1WGWB12p = 143,
    PixelFormatInfoSelector_SCF1WGWB14 = 144,
    PixelFormatInfoSelector_SCF1WGWB16 = 145,
    PixelFormatInfoSelector_SCF1WGWR8 = 146,
    PixelFormatInfoSelector_SCF1WGWR10 = 147,
    PixelFormatInfoSelector_SCF1WGWR10p = 148,
    PixelFormatInfoSelector_SCF1WGWR12 = 149,
    PixelFormatInfoSelector_SCF1WGWR12p = 150,
    PixelFormatInfoSelector_SCF1WGWR14 = 151,
    PixelFormatInfoSelector_SCF1WGWR16 = 152,
    PixelFormatInfoSelector_SCF1WRWG8 = 153,
    PixelFormatInfoSelector_SCF1WRWG10 = 154,
    PixelFormatInfoSelector_SCF1WRWG10p = 155,
    PixelFormatInfoSelector_SCF1WRWG12 = 156,
    PixelFormatInfoSelector_SCF1WRWG12p = 157,
    PixelFormatInfoSelector_SCF1WRWG14 = 158,
    PixelFormatInfoSelector_SCF1WRWG16 = 159,
    PixelFormatInfoSelector_YCbCr8 = 160,
    PixelFormatInfoSelector_YCbCr8_CbYCr = 161,
    PixelFormatInfoSelector_YCbCr10_CbYCr = 162,
    PixelFormatInfoSelector_YCbCr10p_CbYCr = 163,
    PixelFormatInfoSelector_YCbCr12_CbYCr = 164,
    PixelFormatInfoSelector_YCbCr12p_CbYCr = 165,
    PixelFormatInfoSelector_YCbCr411_8 = 166,
    PixelFormatInfoSelector_YCbCr411_8_CbYYCrYY = 167,
    PixelFormatInfoSelector_YCbCr422_8 = 168,
    PixelFormatInfoSelector_YCbCr422_8_CbYCrY = 169,
    PixelFormatInfoSelector_YCbCr422_10 = 170,
    PixelFormatInfoSelector_YCbCr422_10_CbYCrY = 171,
    PixelFormatInfoSelector_YCbCr422_10p = 172,
    PixelFormatInfoSelector_YCbCr422_10p_CbYCrY = 173,
    PixelFormatInfoSelector_YCbCr422_12 = 174,
    PixelFormatInfoSelector_YCbCr422_12_CbYCrY = 175,
    PixelFormatInfoSelector_YCbCr422_12p = 176,
    PixelFormatInfoSelector_YCbCr422_12p_CbYCrY = 177,
    PixelFormatInfoSelector_YCbCr601_8_CbYCr = 178,
    PixelFormatInfoSelector_YCbCr601_10_CbYCr = 179,
    PixelFormatInfoSelector_YCbCr601_10p_CbYCr = 180,
    PixelFormatInfoSelector_YCbCr601_12_CbYCr = 181,
    PixelFormatInfoSelector_YCbCr601_12p_CbYCr = 182,
    PixelFormatInfoSelector_YCbCr601_411_8_CbYYCrYY = 183,
    PixelFormatInfoSelector_YCbCr601_422_8 = 184,
    PixelFormatInfoSelector_YCbCr601_422_8_CbYCrY = 185,
    PixelFormatInfoSelector_YCbCr601_422_10 = 186,
    PixelFormatInfoSelector_YCbCr601_422_10_CbYCrY = 187,
    PixelFormatInfoSelector_YCbCr601_422_10p = 188,
    PixelFormatInfoSelector_YCbCr601_422_10p_CbYCrY = 189,
    PixelFormatInfoSelector_YCbCr601_422_12 = 190,
    PixelFormatInfoSelector_YCbCr601_422_12_CbYCrY = 191,
    PixelFormatInfoSelector_YCbCr601_422_12p = 192,
    PixelFormatInfoSelector_YCbCr601_422_12p_CbYCrY = 193,
    PixelFormatInfoSelector_YCbCr709_8_CbYCr = 194,
    PixelFormatInfoSelector_YCbCr709_10_CbYCr = 195,
    PixelFormatInfoSelector_YCbCr709_10p_CbYCr = 196,
    PixelFormatInfoSelector_YCbCr709_12_CbYCr = 197,
    PixelFormatInfoSelector_YCbCr709_12p_CbYCr = 198,
    PixelFormatInfoSelector_YCbCr709_411_8_CbYYCrYY = 199,
    PixelFormatInfoSelector_YCbCr709_422_8 = 200,
    PixelFormatInfoSelector_YCbCr709_422_8_CbYCrY = 201,
    PixelFormatInfoSelector_YCbCr709_422_10 = 202,
    PixelFormatInfoSelector_YCbCr709_422_10_CbYCrY = 203,
    PixelFormatInfoSelector_YCbCr709_422_10p = 204,
    PixelFormatInfoSelector_YCbCr709_422_10p_CbYCrY = 205,
    PixelFormatInfoSelector_YCbCr709_422_12 = 206,
    PixelFormatInfoSelector_YCbCr709_422_12_CbYCrY = 207,
    PixelFormatInfoSelector_YCbCr709_422_12p = 208,
    PixelFormatInfoSelector_YCbCr709_422_12p_CbYCrY = 209,
    PixelFormatInfoSelector_YUV8_UYV = 210,
    PixelFormatInfoSelector_YUV411_8_UYYVYY = 211,
    PixelFormatInfoSelector_YUV422_8 = 212,
    PixelFormatInfoSelector_YUV422_8_UYVY = 213,
    PixelFormatInfoSelector_Polarized8 = 214,
    PixelFormatInfoSelector_Polarized10p = 215,
    PixelFormatInfoSelector_Polarized12p = 216,
    PixelFormatInfoSelector_Polarized16 = 217,
    PixelFormatInfoSelector_BayerRGPolarized8 = 218,
    PixelFormatInfoSelector_BayerRGPolarized10p = 219,
    PixelFormatInfoSelector_BayerRGPolarized12p = 220,
    PixelFormatInfoSelector_BayerRGPolarized16 = 221,
    NUM_PIXELFORMATINFOSELECTOR = 222,
)

const spinPixelFormatInfoSelectorEnums = _spinPixelFormatInfoSelectorEnums

@cenum(_spinDeinterlacingEnums,
    Deinterlacing_Off = 0,
    Deinterlacing_LineDuplication = 1,
    Deinterlacing_Weave = 2,
    NUM_DEINTERLACING = 3,
)

const spinDeinterlacingEnums = _spinDeinterlacingEnums

@cenum(_spinImageCompressionRateOptionEnums,
    ImageCompressionRateOption_FixBitrate = 0,
    ImageCompressionRateOption_FixQuality = 1,
    NUM_IMAGECOMPRESSIONRATEOPTION = 2,
)

const spinImageCompressionRateOptionEnums = _spinImageCompressionRateOptionEnums

@cenum(_spinImageCompressionJPEGFormatOptionEnums,
    ImageCompressionJPEGFormatOption_Lossless = 0,
    ImageCompressionJPEGFormatOption_BaselineStandard = 1,
    ImageCompressionJPEGFormatOption_BaselineOptimized = 2,
    ImageCompressionJPEGFormatOption_Progressive = 3,
    NUM_IMAGECOMPRESSIONJPEGFORMATOPTION = 4,
)

const spinImageCompressionJPEGFormatOptionEnums = _spinImageCompressionJPEGFormatOptionEnums

@cenum(_spinAcquisitionStatusSelectorEnums,
    AcquisitionStatusSelector_AcquisitionTriggerWait = 0,
    AcquisitionStatusSelector_AcquisitionActive = 1,
    AcquisitionStatusSelector_AcquisitionTransfer = 2,
    AcquisitionStatusSelector_FrameTriggerWait = 3,
    AcquisitionStatusSelector_FrameActive = 4,
    AcquisitionStatusSelector_ExposureActive = 5,
    NUM_ACQUISITIONSTATUSSELECTOR = 6,
)

const spinAcquisitionStatusSelectorEnums = _spinAcquisitionStatusSelectorEnums

@cenum(_spinExposureTimeModeEnums,
    ExposureTimeMode_Common = 0,
    ExposureTimeMode_Individual = 1,
    NUM_EXPOSURETIMEMODE = 2,
)

const spinExposureTimeModeEnums = _spinExposureTimeModeEnums

@cenum(_spinExposureTimeSelectorEnums,
    ExposureTimeSelector_Common = 0,
    ExposureTimeSelector_Red = 1,
    ExposureTimeSelector_Green = 2,
    ExposureTimeSelector_Blue = 3,
    ExposureTimeSelector_Cyan = 4,
    ExposureTimeSelector_Magenta = 5,
    ExposureTimeSelector_Yellow = 6,
    ExposureTimeSelector_Infrared = 7,
    ExposureTimeSelector_Ultraviolet = 8,
    ExposureTimeSelector_Stage1 = 9,
    ExposureTimeSelector_Stage2 = 10,
    NUM_EXPOSURETIMESELECTOR = 11,
)

const spinExposureTimeSelectorEnums = _spinExposureTimeSelectorEnums

@cenum(_spinGainAutoBalanceEnums,
    GainAutoBalance_Off = 0,
    GainAutoBalance_Once = 1,
    GainAutoBalance_Continuous = 2,
    NUM_GAINAUTOBALANCE = 3,
)

const spinGainAutoBalanceEnums = _spinGainAutoBalanceEnums

@cenum(_spinBlackLevelAutoEnums,
    BlackLevelAuto_Off = 0,
    BlackLevelAuto_Once = 1,
    BlackLevelAuto_Continuous = 2,
    NUM_BLACKLEVELAUTO = 3,
)

const spinBlackLevelAutoEnums = _spinBlackLevelAutoEnums

@cenum(_spinBlackLevelAutoBalanceEnums,
    BlackLevelAutoBalance_Off = 0,
    BlackLevelAutoBalance_Once = 1,
    BlackLevelAutoBalance_Continuous = 2,
    NUM_BLACKLEVELAUTOBALANCE = 3,
)

const spinBlackLevelAutoBalanceEnums = _spinBlackLevelAutoBalanceEnums

@cenum(_spinWhiteClipSelectorEnums,
    WhiteClipSelector_All = 0,
    WhiteClipSelector_Red = 1,
    WhiteClipSelector_Green = 2,
    WhiteClipSelector_Blue = 3,
    WhiteClipSelector_Y = 4,
    WhiteClipSelector_U = 5,
    WhiteClipSelector_V = 6,
    WhiteClipSelector_Tap1 = 7,
    WhiteClipSelector_Tap2 = 8,
    NUM_WHITECLIPSELECTOR = 9,
)

const spinWhiteClipSelectorEnums = _spinWhiteClipSelectorEnums

@cenum(_spinTimerSelectorEnums,
    TimerSelector_Timer0 = 0,
    TimerSelector_Timer1 = 1,
    TimerSelector_Timer2 = 2,
    NUM_TIMERSELECTOR = 3,
)

const spinTimerSelectorEnums = _spinTimerSelectorEnums

@cenum(_spinTimerStatusEnums,
    TimerStatus_TimerIdle = 0,
    TimerStatus_TimerTriggerWait = 1,
    TimerStatus_TimerActive = 2,
    TimerStatus_TimerCompleted = 3,
    NUM_TIMERSTATUS = 4,
)

const spinTimerStatusEnums = _spinTimerStatusEnums

@cenum(_spinTimerTriggerSourceEnums,
    TimerTriggerSource_Off = 0,
    TimerTriggerSource_AcquisitionTrigger = 1,
    TimerTriggerSource_AcquisitionStart = 2,
    TimerTriggerSource_AcquisitionEnd = 3,
    TimerTriggerSource_FrameTrigger = 4,
    TimerTriggerSource_FrameStart = 5,
    TimerTriggerSource_FrameEnd = 6,
    TimerTriggerSource_FrameBurstStart = 7,
    TimerTriggerSource_FrameBurstEnd = 8,
    TimerTriggerSource_LineTrigger = 9,
    TimerTriggerSource_LineStart = 10,
    TimerTriggerSource_LineEnd = 11,
    TimerTriggerSource_ExposureStart = 12,
    TimerTriggerSource_ExposureEnd = 13,
    TimerTriggerSource_Line0 = 14,
    TimerTriggerSource_Line1 = 15,
    TimerTriggerSource_Line2 = 16,
    TimerTriggerSource_UserOutput0 = 17,
    TimerTriggerSource_UserOutput1 = 18,
    TimerTriggerSource_UserOutput2 = 19,
    TimerTriggerSource_Counter0Start = 20,
    TimerTriggerSource_Counter1Start = 21,
    TimerTriggerSource_Counter2Start = 22,
    TimerTriggerSource_Counter0End = 23,
    TimerTriggerSource_Counter1End = 24,
    TimerTriggerSource_Counter2End = 25,
    TimerTriggerSource_Timer0Start = 26,
    TimerTriggerSource_Timer1Start = 27,
    TimerTriggerSource_Timer2Start = 28,
    TimerTriggerSource_Timer0End = 29,
    TimerTriggerSource_Timer1End = 30,
    TimerTriggerSource_Timer2End = 31,
    TimerTriggerSource_Encoder0 = 32,
    TimerTriggerSource_Encoder1 = 33,
    TimerTriggerSource_Encoder2 = 34,
    TimerTriggerSource_SoftwareSignal0 = 35,
    TimerTriggerSource_SoftwareSignal1 = 36,
    TimerTriggerSource_SoftwareSignal2 = 37,
    TimerTriggerSource_Action0 = 38,
    TimerTriggerSource_Action1 = 39,
    TimerTriggerSource_Action2 = 40,
    TimerTriggerSource_LinkTrigger0 = 41,
    TimerTriggerSource_LinkTrigger1 = 42,
    TimerTriggerSource_LinkTrigger2 = 43,
    NUM_TIMERTRIGGERSOURCE = 44,
)

const spinTimerTriggerSourceEnums = _spinTimerTriggerSourceEnums

@cenum(_spinTimerTriggerActivationEnums,
    TimerTriggerActivation_RisingEdge = 0,
    TimerTriggerActivation_FallingEdge = 1,
    TimerTriggerActivation_AnyEdge = 2,
    TimerTriggerActivation_LevelHigh = 3,
    TimerTriggerActivation_LevelLow = 4,
    NUM_TIMERTRIGGERACTIVATION = 5,
)

const spinTimerTriggerActivationEnums = _spinTimerTriggerActivationEnums

@cenum(_spinEncoderSelectorEnums,
    EncoderSelector_Encoder0 = 0,
    EncoderSelector_Encoder1 = 1,
    EncoderSelector_Encoder2 = 2,
    NUM_ENCODERSELECTOR = 3,
)

const spinEncoderSelectorEnums = _spinEncoderSelectorEnums

@cenum(_spinEncoderSourceAEnums,
    EncoderSourceA_Off = 0,
    EncoderSourceA_Line0 = 1,
    EncoderSourceA_Line1 = 2,
    EncoderSourceA_Line2 = 3,
    NUM_ENCODERSOURCEA = 4,
)

const spinEncoderSourceAEnums = _spinEncoderSourceAEnums

@cenum(_spinEncoderSourceBEnums,
    EncoderSourceB_Off = 0,
    EncoderSourceB_Line0 = 1,
    EncoderSourceB_Line1 = 2,
    EncoderSourceB_Line2 = 3,
    NUM_ENCODERSOURCEB = 4,
)

const spinEncoderSourceBEnums = _spinEncoderSourceBEnums

@cenum(_spinEncoderModeEnums,
    EncoderMode_FourPhase = 0,
    EncoderMode_HighResolution = 1,
    NUM_ENCODERMODE = 2,
)

const spinEncoderModeEnums = _spinEncoderModeEnums

@cenum(_spinEncoderOutputModeEnums,
    EncoderOutputMode_Off = 0,
    EncoderOutputMode_PositionUp = 1,
    EncoderOutputMode_PositionDown = 2,
    EncoderOutputMode_DirectionUp = 3,
    EncoderOutputMode_DirectionDown = 4,
    EncoderOutputMode_Motion = 5,
    NUM_ENCODEROUTPUTMODE = 6,
)

const spinEncoderOutputModeEnums = _spinEncoderOutputModeEnums

@cenum(_spinEncoderStatusEnums,
    EncoderStatus_EncoderUp = 0,
    EncoderStatus_EncoderDown = 1,
    EncoderStatus_EncoderIdle = 2,
    EncoderStatus_EncoderStatic = 3,
    NUM_ENCODERSTATUS = 4,
)

const spinEncoderStatusEnums = _spinEncoderStatusEnums

@cenum(_spinEncoderResetSourceEnums,
    EncoderResetSource_Off = 0,
    EncoderResetSource_AcquisitionTrigger = 1,
    EncoderResetSource_AcquisitionStart = 2,
    EncoderResetSource_AcquisitionEnd = 3,
    EncoderResetSource_FrameTrigger = 4,
    EncoderResetSource_FrameStart = 5,
    EncoderResetSource_FrameEnd = 6,
    EncoderResetSource_ExposureStart = 7,
    EncoderResetSource_ExposureEnd = 8,
    EncoderResetSource_Line0 = 9,
    EncoderResetSource_Line1 = 10,
    EncoderResetSource_Line2 = 11,
    EncoderResetSource_Counter0Start = 12,
    EncoderResetSource_Counter1Start = 13,
    EncoderResetSource_Counter2Start = 14,
    EncoderResetSource_Counter0End = 15,
    EncoderResetSource_Counter1End = 16,
    EncoderResetSource_Counter2End = 17,
    EncoderResetSource_Timer0Start = 18,
    EncoderResetSource_Timer1Start = 19,
    EncoderResetSource_Timer2Start = 20,
    EncoderResetSource_Timer0End = 21,
    EncoderResetSource_Timer1End = 22,
    EncoderResetSource_Timer2End = 23,
    EncoderResetSource_UserOutput0 = 24,
    EncoderResetSource_UserOutput1 = 25,
    EncoderResetSource_UserOutput2 = 26,
    EncoderResetSource_SoftwareSignal0 = 27,
    EncoderResetSource_SoftwareSignal1 = 28,
    EncoderResetSource_SoftwareSignal2 = 29,
    EncoderResetSource_Action0 = 30,
    EncoderResetSource_Action1 = 31,
    EncoderResetSource_Action2 = 32,
    EncoderResetSource_LinkTrigger0 = 33,
    EncoderResetSource_LinkTrigger1 = 34,
    EncoderResetSource_LinkTrigger2 = 35,
    NUM_ENCODERRESETSOURCE = 36,
)

const spinEncoderResetSourceEnums = _spinEncoderResetSourceEnums

@cenum(_spinEncoderResetActivationEnums,
    EncoderResetActivation_RisingEdge = 0,
    EncoderResetActivation_FallingEdge = 1,
    EncoderResetActivation_AnyEdge = 2,
    EncoderResetActivation_LevelHigh = 3,
    EncoderResetActivation_LevelLow = 4,
    NUM_ENCODERRESETACTIVATION = 5,
)

const spinEncoderResetActivationEnums = _spinEncoderResetActivationEnums

@cenum(_spinSoftwareSignalSelectorEnums,
    SoftwareSignalSelector_SoftwareSignal0 = 0,
    SoftwareSignalSelector_SoftwareSignal1 = 1,
    SoftwareSignalSelector_SoftwareSignal2 = 2,
    NUM_SOFTWARESIGNALSELECTOR = 3,
)

const spinSoftwareSignalSelectorEnums = _spinSoftwareSignalSelectorEnums

@cenum(_spinActionUnconditionalModeEnums,
    ActionUnconditionalMode_Off = 0,
    ActionUnconditionalMode_On = 1,
    NUM_ACTIONUNCONDITIONALMODE = 2,
)

const spinActionUnconditionalModeEnums = _spinActionUnconditionalModeEnums

@cenum(_spinSourceSelectorEnums,
    SourceSelector_Source0 = 0,
    SourceSelector_Source1 = 1,
    SourceSelector_Source2 = 2,
    SourceSelector_All = 3,
    NUM_SOURCESELECTOR = 4,
)

const spinSourceSelectorEnums = _spinSourceSelectorEnums

@cenum(_spinTransferSelectorEnums,
    TransferSelector_Stream0 = 0,
    TransferSelector_Stream1 = 1,
    TransferSelector_Stream2 = 2,
    TransferSelector_All = 3,
    NUM_TRANSFERSELECTOR = 4,
)

const spinTransferSelectorEnums = _spinTransferSelectorEnums

@cenum(_spinTransferTriggerSelectorEnums,
    TransferTriggerSelector_TransferStart = 0,
    TransferTriggerSelector_TransferStop = 1,
    TransferTriggerSelector_TransferAbort = 2,
    TransferTriggerSelector_TransferPause = 3,
    TransferTriggerSelector_TransferResume = 4,
    TransferTriggerSelector_TransferActive = 5,
    TransferTriggerSelector_TransferBurstStart = 6,
    TransferTriggerSelector_TransferBurstStop = 7,
    NUM_TRANSFERTRIGGERSELECTOR = 8,
)

const spinTransferTriggerSelectorEnums = _spinTransferTriggerSelectorEnums

@cenum(_spinTransferTriggerModeEnums,
    TransferTriggerMode_Off = 0,
    TransferTriggerMode_On = 1,
    NUM_TRANSFERTRIGGERMODE = 2,
)

const spinTransferTriggerModeEnums = _spinTransferTriggerModeEnums

@cenum(_spinTransferTriggerSourceEnums,
    TransferTriggerSource_Line0 = 0,
    TransferTriggerSource_Line1 = 1,
    TransferTriggerSource_Line2 = 2,
    TransferTriggerSource_Counter0Start = 3,
    TransferTriggerSource_Counter1Start = 4,
    TransferTriggerSource_Counter2Start = 5,
    TransferTriggerSource_Counter0End = 6,
    TransferTriggerSource_Counter1End = 7,
    TransferTriggerSource_Counter2End = 8,
    TransferTriggerSource_Timer0Start = 9,
    TransferTriggerSource_Timer1Start = 10,
    TransferTriggerSource_Timer2Start = 11,
    TransferTriggerSource_Timer0End = 12,
    TransferTriggerSource_Timer1End = 13,
    TransferTriggerSource_Timer2End = 14,
    TransferTriggerSource_SoftwareSignal0 = 15,
    TransferTriggerSource_SoftwareSignal1 = 16,
    TransferTriggerSource_SoftwareSignal2 = 17,
    TransferTriggerSource_Action0 = 18,
    TransferTriggerSource_Action1 = 19,
    TransferTriggerSource_Action2 = 20,
    NUM_TRANSFERTRIGGERSOURCE = 21,
)

const spinTransferTriggerSourceEnums = _spinTransferTriggerSourceEnums

@cenum(_spinTransferTriggerActivationEnums,
    TransferTriggerActivation_RisingEdge = 0,
    TransferTriggerActivation_FallingEdge = 1,
    TransferTriggerActivation_AnyEdge = 2,
    TransferTriggerActivation_LevelHigh = 3,
    TransferTriggerActivation_LevelLow = 4,
    NUM_TRANSFERTRIGGERACTIVATION = 5,
)

const spinTransferTriggerActivationEnums = _spinTransferTriggerActivationEnums

@cenum(_spinTransferStatusSelectorEnums,
    TransferStatusSelector_Streaming = 0,
    TransferStatusSelector_Paused = 1,
    TransferStatusSelector_Stopping = 2,
    TransferStatusSelector_Stopped = 3,
    TransferStatusSelector_QueueOverflow = 4,
    NUM_TRANSFERSTATUSSELECTOR = 5,
)

const spinTransferStatusSelectorEnums = _spinTransferStatusSelectorEnums

@cenum(_spinTransferComponentSelectorEnums,
    TransferComponentSelector_Red = 0,
    TransferComponentSelector_Green = 1,
    TransferComponentSelector_Blue = 2,
    TransferComponentSelector_All = 3,
    NUM_TRANSFERCOMPONENTSELECTOR = 4,
)

const spinTransferComponentSelectorEnums = _spinTransferComponentSelectorEnums

@cenum(_spinScan3dDistanceUnitEnums,
    Scan3dDistanceUnit_Millimeter = 0,
    Scan3dDistanceUnit_Inch = 1,
    NUM_SCAN3DDISTANCEUNIT = 2,
)

const spinScan3dDistanceUnitEnums = _spinScan3dDistanceUnitEnums

@cenum(_spinScan3dCoordinateSystemEnums,
    Scan3dCoordinateSystem_Cartesian = 0,
    Scan3dCoordinateSystem_Spherical = 1,
    Scan3dCoordinateSystem_Cylindrical = 2,
    NUM_SCAN3DCOORDINATESYSTEM = 3,
)

const spinScan3dCoordinateSystemEnums = _spinScan3dCoordinateSystemEnums

@cenum(_spinScan3dOutputModeEnums,
    Scan3dOutputMode_UncalibratedC = 0,
    Scan3dOutputMode_CalibratedABC_Grid = 1,
    Scan3dOutputMode_CalibratedABC_PointCloud = 2,
    Scan3dOutputMode_CalibratedAC = 3,
    Scan3dOutputMode_CalibratedAC_Linescan = 4,
    Scan3dOutputMode_CalibratedC = 5,
    Scan3dOutputMode_CalibratedC_Linescan = 6,
    Scan3dOutputMode_RectifiedC = 7,
    Scan3dOutputMode_RectifiedC_Linescan = 8,
    Scan3dOutputMode_DisparityC = 9,
    Scan3dOutputMode_DisparityC_Linescan = 10,
    NUM_SCAN3DOUTPUTMODE = 11,
)

const spinScan3dOutputModeEnums = _spinScan3dOutputModeEnums

@cenum(_spinScan3dCoordinateSystemReferenceEnums,
    Scan3dCoordinateSystemReference_Anchor = 0,
    Scan3dCoordinateSystemReference_Transformed = 1,
    NUM_SCAN3DCOORDINATESYSTEMREFERENCE = 2,
)

const spinScan3dCoordinateSystemReferenceEnums = _spinScan3dCoordinateSystemReferenceEnums

@cenum(_spinScan3dCoordinateSelectorEnums,
    Scan3dCoordinateSelector_CoordinateA = 0,
    Scan3dCoordinateSelector_CoordinateB = 1,
    Scan3dCoordinateSelector_CoordinateC = 2,
    NUM_SCAN3DCOORDINATESELECTOR = 3,
)

const spinScan3dCoordinateSelectorEnums = _spinScan3dCoordinateSelectorEnums

@cenum(_spinScan3dCoordinateTransformSelectorEnums,
    Scan3dCoordinateTransformSelector_RotationX = 0,
    Scan3dCoordinateTransformSelector_RotationY = 1,
    Scan3dCoordinateTransformSelector_RotationZ = 2,
    Scan3dCoordinateTransformSelector_TranslationX = 3,
    Scan3dCoordinateTransformSelector_TranslationY = 4,
    Scan3dCoordinateTransformSelector_TranslationZ = 5,
    NUM_SCAN3DCOORDINATETRANSFORMSELECTOR = 6,
)

const spinScan3dCoordinateTransformSelectorEnums = _spinScan3dCoordinateTransformSelectorEnums

@cenum(_spinScan3dCoordinateReferenceSelectorEnums,
    Scan3dCoordinateReferenceSelector_RotationX = 0,
    Scan3dCoordinateReferenceSelector_RotationY = 1,
    Scan3dCoordinateReferenceSelector_RotationZ = 2,
    Scan3dCoordinateReferenceSelector_TranslationX = 3,
    Scan3dCoordinateReferenceSelector_TranslationY = 4,
    Scan3dCoordinateReferenceSelector_TranslationZ = 5,
    NUM_SCAN3DCOORDINATEREFERENCESELECTOR = 6,
)

const spinScan3dCoordinateReferenceSelectorEnums = _spinScan3dCoordinateReferenceSelectorEnums

@cenum(_spinChunkImageComponentEnums,
    ChunkImageComponent_Intensity = 0,
    ChunkImageComponent_Color = 1,
    ChunkImageComponent_Infrared = 2,
    ChunkImageComponent_Ultraviolet = 3,
    ChunkImageComponent_Range = 4,
    ChunkImageComponent_Disparity = 5,
    ChunkImageComponent_Confidence = 6,
    ChunkImageComponent_Scatter = 7,
    NUM_CHUNKIMAGECOMPONENT = 8,
)

const spinChunkImageComponentEnums = _spinChunkImageComponentEnums

@cenum(_spinChunkCounterSelectorEnums,
    ChunkCounterSelector_Counter0 = 0,
    ChunkCounterSelector_Counter1 = 1,
    ChunkCounterSelector_Counter2 = 2,
    NUM_CHUNKCOUNTERSELECTOR = 3,
)

const spinChunkCounterSelectorEnums = _spinChunkCounterSelectorEnums

@cenum(_spinChunkTimerSelectorEnums,
    ChunkTimerSelector_Timer0 = 0,
    ChunkTimerSelector_Timer1 = 1,
    ChunkTimerSelector_Timer2 = 2,
    NUM_CHUNKTIMERSELECTOR = 3,
)

const spinChunkTimerSelectorEnums = _spinChunkTimerSelectorEnums

@cenum(_spinChunkEncoderSelectorEnums,
    ChunkEncoderSelector_Encoder0 = 0,
    ChunkEncoderSelector_Encoder1 = 1,
    ChunkEncoderSelector_Encoder2 = 2,
    NUM_CHUNKENCODERSELECTOR = 3,
)

const spinChunkEncoderSelectorEnums = _spinChunkEncoderSelectorEnums

@cenum(_spinChunkEncoderStatusEnums,
    ChunkEncoderStatus_EncoderUp = 0,
    ChunkEncoderStatus_EncoderDown = 1,
    ChunkEncoderStatus_EncoderIdle = 2,
    ChunkEncoderStatus_EncoderStatic = 3,
    NUM_CHUNKENCODERSTATUS = 4,
)

const spinChunkEncoderStatusEnums = _spinChunkEncoderStatusEnums

@cenum(_spinChunkExposureTimeSelectorEnums,
    ChunkExposureTimeSelector_Common = 0,
    ChunkExposureTimeSelector_Red = 1,
    ChunkExposureTimeSelector_Green = 2,
    ChunkExposureTimeSelector_Blue = 3,
    ChunkExposureTimeSelector_Cyan = 4,
    ChunkExposureTimeSelector_Magenta = 5,
    ChunkExposureTimeSelector_Yellow = 6,
    ChunkExposureTimeSelector_Infrared = 7,
    ChunkExposureTimeSelector_Ultraviolet = 8,
    ChunkExposureTimeSelector_Stage1 = 9,
    ChunkExposureTimeSelector_Stage2 = 10,
    NUM_CHUNKEXPOSURETIMESELECTOR = 11,
)

const spinChunkExposureTimeSelectorEnums = _spinChunkExposureTimeSelectorEnums

@cenum(_spinChunkSourceIDEnums,
    ChunkSourceID_Source0 = 0,
    ChunkSourceID_Source1 = 1,
    ChunkSourceID_Source2 = 2,
    NUM_CHUNKSOURCEID = 3,
)

const spinChunkSourceIDEnums = _spinChunkSourceIDEnums

@cenum(_spinChunkRegionIDEnums,
    ChunkRegionID_Region0 = 0,
    ChunkRegionID_Region1 = 1,
    ChunkRegionID_Region2 = 2,
    NUM_CHUNKREGIONID = 3,
)

const spinChunkRegionIDEnums = _spinChunkRegionIDEnums

@cenum(_spinChunkTransferStreamIDEnums,
    ChunkTransferStreamID_Stream0 = 0,
    ChunkTransferStreamID_Stream1 = 1,
    ChunkTransferStreamID_Stream2 = 2,
    ChunkTransferStreamID_Stream3 = 3,
    NUM_CHUNKTRANSFERSTREAMID = 4,
)

const spinChunkTransferStreamIDEnums = _spinChunkTransferStreamIDEnums

@cenum(_spinChunkScan3dDistanceUnitEnums,
    ChunkScan3dDistanceUnit_Millimeter = 0,
    ChunkScan3dDistanceUnit_Inch = 1,
    NUM_CHUNKSCAN3DDISTANCEUNIT = 2,
)

const spinChunkScan3dDistanceUnitEnums = _spinChunkScan3dDistanceUnitEnums

@cenum(_spinChunkScan3dOutputModeEnums,
    ChunkScan3dOutputMode_UncalibratedC = 0,
    ChunkScan3dOutputMode_CalibratedABC_Grid = 1,
    ChunkScan3dOutputMode_CalibratedABC_PointCloud = 2,
    ChunkScan3dOutputMode_CalibratedAC = 3,
    ChunkScan3dOutputMode_CalibratedAC_Linescan = 4,
    ChunkScan3dOutputMode_CalibratedC = 5,
    ChunkScan3dOutputMode_CalibratedC_Linescan = 6,
    ChunkScan3dOutputMode_RectifiedC = 7,
    ChunkScan3dOutputMode_RectifiedC_Linescan = 8,
    ChunkScan3dOutputMode_DisparityC = 9,
    ChunkScan3dOutputMode_DisparityC_Linescan = 10,
    NUM_CHUNKSCAN3DOUTPUTMODE = 11,
)

const spinChunkScan3dOutputModeEnums = _spinChunkScan3dOutputModeEnums

@cenum(_spinChunkScan3dCoordinateSystemEnums,
    ChunkScan3dCoordinateSystem_Cartesian = 0,
    ChunkScan3dCoordinateSystem_Spherical = 1,
    ChunkScan3dCoordinateSystem_Cylindrical = 2,
    NUM_CHUNKSCAN3DCOORDINATESYSTEM = 3,
)

const spinChunkScan3dCoordinateSystemEnums = _spinChunkScan3dCoordinateSystemEnums

@cenum(_spinChunkScan3dCoordinateSystemReferenceEnums,
    ChunkScan3dCoordinateSystemReference_Anchor = 0,
    ChunkScan3dCoordinateSystemReference_Transformed = 1,
    NUM_CHUNKSCAN3DCOORDINATESYSTEMREFERENCE = 2,
)

const spinChunkScan3dCoordinateSystemReferenceEnums = _spinChunkScan3dCoordinateSystemReferenceEnums

@cenum(_spinChunkScan3dCoordinateSelectorEnums,
    ChunkScan3dCoordinateSelector_CoordinateA = 0,
    ChunkScan3dCoordinateSelector_CoordinateB = 1,
    ChunkScan3dCoordinateSelector_CoordinateC = 2,
    NUM_CHUNKSCAN3DCOORDINATESELECTOR = 3,
)

const spinChunkScan3dCoordinateSelectorEnums = _spinChunkScan3dCoordinateSelectorEnums

@cenum(_spinChunkScan3dCoordinateTransformSelectorEnums,
    ChunkScan3dCoordinateTransformSelector_RotationX = 0,
    ChunkScan3dCoordinateTransformSelector_RotationY = 1,
    ChunkScan3dCoordinateTransformSelector_RotationZ = 2,
    ChunkScan3dCoordinateTransformSelector_TranslationX = 3,
    ChunkScan3dCoordinateTransformSelector_TranslationY = 4,
    ChunkScan3dCoordinateTransformSelector_TranslationZ = 5,
    NUM_CHUNKSCAN3DCOORDINATETRANSFORMSELECTOR = 6,
)

const spinChunkScan3dCoordinateTransformSelectorEnums = _spinChunkScan3dCoordinateTransformSelectorEnums

@cenum(_spinChunkScan3dCoordinateReferenceSelectorEnums,
    ChunkScan3dCoordinateReferenceSelector_RotationX = 0,
    ChunkScan3dCoordinateReferenceSelector_RotationY = 1,
    ChunkScan3dCoordinateReferenceSelector_RotationZ = 2,
    ChunkScan3dCoordinateReferenceSelector_TranslationX = 3,
    ChunkScan3dCoordinateReferenceSelector_TranslationY = 4,
    ChunkScan3dCoordinateReferenceSelector_TranslationZ = 5,
    NUM_CHUNKSCAN3DCOORDINATEREFERENCESELECTOR = 6,
)

const spinChunkScan3dCoordinateReferenceSelectorEnums = _spinChunkScan3dCoordinateReferenceSelectorEnums

@cenum(_spinDeviceTapGeometryEnums,
    DeviceTapGeometry_Geometry_1X_1Y = 0,
    DeviceTapGeometry_Geometry_1X2_1Y = 1,
    DeviceTapGeometry_Geometry_1X2_1Y2 = 2,
    DeviceTapGeometry_Geometry_2X_1Y = 3,
    DeviceTapGeometry_Geometry_2X_1Y2Geometry_2XE_1Y = 4,
    DeviceTapGeometry_Geometry_2XE_1Y2 = 5,
    DeviceTapGeometry_Geometry_2XM_1Y = 6,
    DeviceTapGeometry_Geometry_2XM_1Y2 = 7,
    DeviceTapGeometry_Geometry_1X_1Y2 = 8,
    DeviceTapGeometry_Geometry_1X_2YE = 9,
    DeviceTapGeometry_Geometry_1X3_1Y = 10,
    DeviceTapGeometry_Geometry_3X_1Y = 11,
    DeviceTapGeometry_Geometry_1X = 12,
    DeviceTapGeometry_Geometry_1X2 = 13,
    DeviceTapGeometry_Geometry_2X = 14,
    DeviceTapGeometry_Geometry_2XE = 15,
    DeviceTapGeometry_Geometry_2XM = 16,
    DeviceTapGeometry_Geometry_1X3 = 17,
    DeviceTapGeometry_Geometry_3X = 18,
    DeviceTapGeometry_Geometry_1X4_1Y = 19,
    DeviceTapGeometry_Geometry_4X_1Y = 20,
    DeviceTapGeometry_Geometry_2X2_1Y = 21,
    DeviceTapGeometry_Geometry_2X2E_1YGeometry_2X2M_1Y = 22,
    DeviceTapGeometry_Geometry_1X2_2YE = 23,
    DeviceTapGeometry_Geometry_2X_2YE = 24,
    DeviceTapGeometry_Geometry_2XE_2YE = 25,
    DeviceTapGeometry_Geometry_2XM_2YE = 26,
    DeviceTapGeometry_Geometry_1X4 = 27,
    DeviceTapGeometry_Geometry_4X = 28,
    DeviceTapGeometry_Geometry_2X2 = 29,
    DeviceTapGeometry_Geometry_2X2E = 30,
    DeviceTapGeometry_Geometry_2X2M = 31,
    DeviceTapGeometry_Geometry_1X8_1Y = 32,
    DeviceTapGeometry_Geometry_8X_1Y = 33,
    DeviceTapGeometry_Geometry_4X2_1Y = 34,
    DeviceTapGeometry_Geometry_2X2E_2YE = 35,
    DeviceTapGeometry_Geometry_1X8 = 36,
    DeviceTapGeometry_Geometry_8X = 37,
    DeviceTapGeometry_Geometry_4X2 = 38,
    DeviceTapGeometry_Geometry_4X2E = 39,
    DeviceTapGeometry_Geometry_4X2E_1Y = 40,
    DeviceTapGeometry_Geometry_1X10_1Y = 41,
    DeviceTapGeometry_Geometry_10X_1Y = 42,
    DeviceTapGeometry_Geometry_1X10 = 43,
    DeviceTapGeometry_Geometry_10X = 44,
    NUM_DEVICETAPGEOMETRY = 45,
)

const spinDeviceTapGeometryEnums = _spinDeviceTapGeometryEnums

@cenum(_spinGevPhysicalLinkConfigurationEnums,
    GevPhysicalLinkConfiguration_SingleLink = 0,
    GevPhysicalLinkConfiguration_MultiLink = 1,
    GevPhysicalLinkConfiguration_StaticLAG = 2,
    GevPhysicalLinkConfiguration_DynamicLAG = 3,
    NUM_GEVPHYSICALLINKCONFIGURATION = 4,
)

const spinGevPhysicalLinkConfigurationEnums = _spinGevPhysicalLinkConfigurationEnums

@cenum(_spinGevCurrentPhysicalLinkConfigurationEnums,
    GevCurrentPhysicalLinkConfiguration_SingleLink = 0,
    GevCurrentPhysicalLinkConfiguration_MultiLink = 1,
    GevCurrentPhysicalLinkConfiguration_StaticLAG = 2,
    GevCurrentPhysicalLinkConfiguration_DynamicLAG = 3,
    NUM_GEVCURRENTPHYSICALLINKCONFIGURATION = 4,
)

const spinGevCurrentPhysicalLinkConfigurationEnums = _spinGevCurrentPhysicalLinkConfigurationEnums

@cenum(_spinGevIPConfigurationStatusEnums,
    GevIPConfigurationStatus_None = 0,
    GevIPConfigurationStatus_PersistentIP = 1,
    GevIPConfigurationStatus_DHCP = 2,
    GevIPConfigurationStatus_LLA = 3,
    GevIPConfigurationStatus_ForceIP = 4,
    NUM_GEVIPCONFIGURATIONSTATUS = 5,
)

const spinGevIPConfigurationStatusEnums = _spinGevIPConfigurationStatusEnums

@cenum(_spinGevGVCPExtendedStatusCodesSelectorEnums,
    GevGVCPExtendedStatusCodesSelector_Version1_1 = 0,
    GevGVCPExtendedStatusCodesSelector_Version2_0 = 1,
    NUM_GEVGVCPEXTENDEDSTATUSCODESSELECTOR = 2,
)

const spinGevGVCPExtendedStatusCodesSelectorEnums = _spinGevGVCPExtendedStatusCodesSelectorEnums

@cenum(_spinGevGVSPExtendedIDModeEnums,
    GevGVSPExtendedIDMode_Off = 0,
    GevGVSPExtendedIDMode_On = 1,
    NUM_GEVGVSPEXTENDEDIDMODE = 2,
)

const spinGevGVSPExtendedIDModeEnums = _spinGevGVSPExtendedIDModeEnums

@cenum(_spinClConfigurationEnums,
    ClConfiguration_Base = 0,
    ClConfiguration_Medium = 1,
    ClConfiguration_Full = 2,
    ClConfiguration_DualBase = 3,
    ClConfiguration_EightyBit = 4,
    NUM_CLCONFIGURATION = 5,
)

const spinClConfigurationEnums = _spinClConfigurationEnums

@cenum(_spinClTimeSlotsCountEnums,
    ClTimeSlotsCount_One = 0,
    ClTimeSlotsCount_Two = 1,
    ClTimeSlotsCount_Three = 2,
    NUM_CLTIMESLOTSCOUNT = 3,
)

const spinClTimeSlotsCountEnums = _spinClTimeSlotsCountEnums

@cenum(_spinCxpLinkConfigurationStatusEnums,
    CxpLinkConfigurationStatus_None = 0,
    CxpLinkConfigurationStatus_Pending = 1,
    CxpLinkConfigurationStatus_CXP1_X1 = 2,
    CxpLinkConfigurationStatus_CXP2_X1 = 3,
    CxpLinkConfigurationStatus_CXP3_X1 = 4,
    CxpLinkConfigurationStatus_CXP5_X1 = 5,
    CxpLinkConfigurationStatus_CXP6_X1 = 6,
    CxpLinkConfigurationStatus_CXP1_X2 = 7,
    CxpLinkConfigurationStatus_CXP2_X2 = 8,
    CxpLinkConfigurationStatus_CXP3_X2 = 9,
    CxpLinkConfigurationStatus_CXP5_X2 = 10,
    CxpLinkConfigurationStatus_CXP6_X2 = 11,
    CxpLinkConfigurationStatus_CXP1_X3 = 12,
    CxpLinkConfigurationStatus_CXP2_X3 = 13,
    CxpLinkConfigurationStatus_CXP3_X3 = 14,
    CxpLinkConfigurationStatus_CXP5_X3 = 15,
    CxpLinkConfigurationStatus_CXP6_X3 = 16,
    CxpLinkConfigurationStatus_CXP1_X4 = 17,
    CxpLinkConfigurationStatus_CXP2_X4 = 18,
    CxpLinkConfigurationStatus_CXP3_X4 = 19,
    CxpLinkConfigurationStatus_CXP5_X4 = 20,
    CxpLinkConfigurationStatus_CXP6_X4 = 21,
    CxpLinkConfigurationStatus_CXP1_X5 = 22,
    CxpLinkConfigurationStatus_CXP2_X5 = 23,
    CxpLinkConfigurationStatus_CXP3_X5 = 24,
    CxpLinkConfigurationStatus_CXP5_X5 = 25,
    CxpLinkConfigurationStatus_CXP6_X5 = 26,
    CxpLinkConfigurationStatus_CXP1_X6 = 27,
    CxpLinkConfigurationStatus_CXP2_X6 = 28,
    CxpLinkConfigurationStatus_CXP3_X6 = 29,
    CxpLinkConfigurationStatus_CXP5_X6 = 30,
    CxpLinkConfigurationStatus_CXP6_X6 = 31,
    NUM_CXPLINKCONFIGURATIONSTATUS = 32,
)

const spinCxpLinkConfigurationStatusEnums = _spinCxpLinkConfigurationStatusEnums

@cenum(_spinCxpLinkConfigurationPreferredEnums,
    CxpLinkConfigurationPreferred_CXP1_X1 = 0,
    CxpLinkConfigurationPreferred_CXP2_X1 = 1,
    CxpLinkConfigurationPreferred_CXP3_X1 = 2,
    CxpLinkConfigurationPreferred_CXP5_X1 = 3,
    CxpLinkConfigurationPreferred_CXP6_X1 = 4,
    CxpLinkConfigurationPreferred_CXP1_X2 = 5,
    CxpLinkConfigurationPreferred_CXP2_X2 = 6,
    CxpLinkConfigurationPreferred_CXP3_X2 = 7,
    CxpLinkConfigurationPreferred_CXP5_X2 = 8,
    CxpLinkConfigurationPreferred_CXP6_X2 = 9,
    CxpLinkConfigurationPreferred_CXP1_X3 = 10,
    CxpLinkConfigurationPreferred_CXP2_X3 = 11,
    CxpLinkConfigurationPreferred_CXP3_X3 = 12,
    CxpLinkConfigurationPreferred_CXP5_X3 = 13,
    CxpLinkConfigurationPreferred_CXP6_X3 = 14,
    CxpLinkConfigurationPreferred_CXP1_X4 = 15,
    CxpLinkConfigurationPreferred_CXP2_X4 = 16,
    CxpLinkConfigurationPreferred_CXP3_X4 = 17,
    CxpLinkConfigurationPreferred_CXP5_X4 = 18,
    CxpLinkConfigurationPreferred_CXP6_X4 = 19,
    CxpLinkConfigurationPreferred_CXP1_X5 = 20,
    CxpLinkConfigurationPreferred_CXP2_X5 = 21,
    CxpLinkConfigurationPreferred_CXP3_X5 = 22,
    CxpLinkConfigurationPreferred_CXP5_X5 = 23,
    CxpLinkConfigurationPreferred_CXP6_X5 = 24,
    CxpLinkConfigurationPreferred_CXP1_X6 = 25,
    CxpLinkConfigurationPreferred_CXP2_X6 = 26,
    CxpLinkConfigurationPreferred_CXP3_X6 = 27,
    CxpLinkConfigurationPreferred_CXP5_X6 = 28,
    CxpLinkConfigurationPreferred_CXP6_X6 = 29,
    NUM_CXPLINKCONFIGURATIONPREFERRED = 30,
)

const spinCxpLinkConfigurationPreferredEnums = _spinCxpLinkConfigurationPreferredEnums

@cenum(_spinCxpLinkConfigurationEnums,
    CxpLinkConfiguration_Auto = 0,
    CxpLinkConfiguration_CXP1_X1 = 1,
    CxpLinkConfiguration_CXP2_X1 = 2,
    CxpLinkConfiguration_CXP3_X1 = 3,
    CxpLinkConfiguration_CXP5_X1 = 4,
    CxpLinkConfiguration_CXP6_X1 = 5,
    CxpLinkConfiguration_CXP1_X2 = 6,
    CxpLinkConfiguration_CXP2_X2 = 7,
    CxpLinkConfiguration_CXP3_X2 = 8,
    CxpLinkConfiguration_CXP5_X2 = 9,
    CxpLinkConfiguration_CXP6_X2 = 10,
    CxpLinkConfiguration_CXP1_X3 = 11,
    CxpLinkConfiguration_CXP2_X3 = 12,
    CxpLinkConfiguration_CXP3_X3 = 13,
    CxpLinkConfiguration_CXP5_X3 = 14,
    CxpLinkConfiguration_CXP6_X3 = 15,
    CxpLinkConfiguration_CXP1_X4 = 16,
    CxpLinkConfiguration_CXP2_X4 = 17,
    CxpLinkConfiguration_CXP3_X4 = 18,
    CxpLinkConfiguration_CXP5_X4 = 19,
    CxpLinkConfiguration_CXP6_X4 = 20,
    CxpLinkConfiguration_CXP1_X5 = 21,
    CxpLinkConfiguration_CXP2_X5 = 22,
    CxpLinkConfiguration_CXP3_X5 = 23,
    CxpLinkConfiguration_CXP5_X5 = 24,
    CxpLinkConfiguration_CXP6_X5 = 25,
    CxpLinkConfiguration_CXP1_X6 = 26,
    CxpLinkConfiguration_CXP2_X6 = 27,
    CxpLinkConfiguration_CXP3_X6 = 28,
    CxpLinkConfiguration_CXP5_X6 = 29,
    CxpLinkConfiguration_CXP6_X6 = 30,
    NUM_CXPLINKCONFIGURATION = 31,
)

const spinCxpLinkConfigurationEnums = _spinCxpLinkConfigurationEnums

@cenum(_spinCxpConnectionTestModeEnums,
    CxpConnectionTestMode_Off = 0,
    CxpConnectionTestMode_Mode1 = 1,
    NUM_CXPCONNECTIONTESTMODE = 2,
)

const spinCxpConnectionTestModeEnums = _spinCxpConnectionTestModeEnums

@cenum(_spinCxpPoCxpStatusEnums,
    CxpPoCxpStatus_Auto = 0,
    CxpPoCxpStatus_Off = 1,
    CxpPoCxpStatus_Tripped = 2,
    NUM_CXPPOCXPSTATUS = 3,
)

const spinCxpPoCxpStatusEnums = _spinCxpPoCxpStatusEnums

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

const spinChunkData = _spinChunkData
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

const quickSpin = _quickSpin
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

@cenum(_spinError{Int32},
    SPINNAKER_ERR_SUCCESS = 0,
    SPINNAKER_ERR_ERROR = -1001,
    SPINNAKER_ERR_NOT_INITIALIZED = -1002,
    SPINNAKER_ERR_NOT_IMPLEMENTED = -1003,
    SPINNAKER_ERR_RESOURCE_IN_USE = -1004,
    SPINNAKER_ERR_ACCESS_DENIED = -1005,
    SPINNAKER_ERR_INVALID_HANDLE = -1006,
    SPINNAKER_ERR_INVALID_ID = -1007,
    SPINNAKER_ERR_NO_DATA = -1008,
    SPINNAKER_ERR_INVALID_PARAMETER = -1009,
    SPINNAKER_ERR_IO = -1010,
    SPINNAKER_ERR_TIMEOUT = -1011,
    SPINNAKER_ERR_ABORT = -1012,
    SPINNAKER_ERR_INVALID_BUFFER = -1013,
    SPINNAKER_ERR_NOT_AVAILABLE = -1014,
    SPINNAKER_ERR_INVALID_ADDRESS = -1015,
    SPINNAKER_ERR_BUFFER_TOO_SMALL = -1016,
    SPINNAKER_ERR_INVALID_INDEX = -1017,
    SPINNAKER_ERR_PARSING_CHUNK_DATA = -1018,
    SPINNAKER_ERR_INVALID_VALUE = -1019,
    SPINNAKER_ERR_RESOURCE_EXHAUSTED = -1020,
    SPINNAKER_ERR_OUT_OF_MEMORY = -1021,
    SPINNAKER_ERR_BUSY = -1022,
    GENICAM_ERR_INVALID_ARGUMENT = -2001,
    GENICAM_ERR_OUT_OF_RANGE = -2002,
    GENICAM_ERR_PROPERTY = -2003,
    GENICAM_ERR_RUN_TIME = -2004,
    GENICAM_ERR_LOGICAL = -2005,
    GENICAM_ERR_ACCESS = -2006,
    GENICAM_ERR_TIMEOUT = -2007,
    GENICAM_ERR_DYNAMIC_CAST = -2008,
    GENICAM_ERR_GENERIC = -2009,
    GENICAM_ERR_BAD_ALLOCATION = -2010,
    SPINNAKER_ERR_IM_CONVERT = -3001,
    SPINNAKER_ERR_IM_COPY = -3002,
    SPINNAKER_ERR_IM_MALLOC = -3003,
    SPINNAKER_ERR_IM_NOT_SUPPORTED = -3004,
    SPINNAKER_ERR_IM_HISTOGRAM_RANGE = -3005,
    SPINNAKER_ERR_IM_HISTOGRAM_MEAN = -3006,
    SPINNAKER_ERR_IM_MIN_MAX = -3007,
    SPINNAKER_ERR_IM_COLOR_CONVERSION = -3008,
    SPINNAKER_ERR_CUSTOM_ID = -10000,
)

const spinError = _spinError

@cenum(_spinColorProcessingAlgorithm,
    DEFAULT = 0,
    NO_COLOR_PROCESSING = 1,
    NEAREST_NEIGHBOR = 2,
    EDGE_SENSING = 3,
    HQ_LINEAR = 4,
    RIGOROUS = 5,
    IPP = 6,
    DIRECTIONAL_FILTER = 7,
    WEIGHTED_DIRECTIONAL_FILTER = 8,
)

const spinColorProcessingAlgorithm = _spinColorProcessingAlgorithm

@cenum(_spinStatisticsChannel,
    GREY = 0,
    RED = 1,
    GREEN = 2,
    BLUE = 3,
    HUE = 4,
    SATURATION = 5,
    LIGHTNESS = 6,
    NUM_STATISTICS_CHANNELS = 7,
)

const spinStatisticsChannel = _spinStatisticsChannel

@cenum(_spinImageFileFormat{Int32},
    FROM_FILE_EXT = -1,
    PGM = 0,
    PPM = 1,
    BMP = 2,
    JPEG = 3,
    JPEG2000 = 4,
    TIFF = 5,
    PNG = 6,
    RAW = 7,
    IMAGE_FILE_FORMAT_FORCE_32BITS = 2147483647,
)

const spinImageFileFormat = _spinImageFileFormat

@cenum(_spinPixelFormatNamespaceID,
    SPINNAKER_PIXELFORMAT_NAMESPACE_UNKNOWN = 0,
    SPINNAKER_PIXELFORMAT_NAMESPACE_GEV = 1,
    SPINNAKER_PIXELFORMAT_NAMESPACE_IIDC = 2,
    SPINNAKER_PIXELFORMAT_NAMESPACE_PFNC_16BIT = 3,
    SPINNAKER_PIXELFORMAT_NAMESPACE_PFNC_32BIT = 4,
    SPINNAKER_PIXELFORMAT_NAMESPACE_CUSTOM_ID = 1000,
)

const spinPixelFormatNamespaceID = _spinPixelFormatNamespaceID

@cenum(_spinImageStatus{Int32},
    IMAGE_UNKNOWN_ERROR = -1,
    IMAGE_NO_ERROR = 0,
    IMAGE_CRC_CHECK_FAILED = 1,
    IMAGE_DATA_OVERFLOW = 2,
    IMAGE_MISSING_PACKETS = 3,
    IMAGE_LEADER_BUFFER_SIZE_INCONSISTENT = 4,
    IMAGE_TRAILER_BUFFER_SIZE_INCONSISTENT = 5,
    IMAGE_PACKETID_INCONSISTENT = 6,
    IMAGE_MISSING_LEADER = 7,
    IMAGE_MISSING_TRAILER = 8,
    IMAGE_DATA_INCOMPLETE = 9,
    IMAGE_INFO_INCONSISTENT = 10,
    IMAGE_CHUNK_DATA_INVALID = 11,
    IMAGE_NO_SYSTEM_RESOURCES = 12,
)

const spinImageStatus = _spinImageStatus

@cenum(_spinLogLevel{Int32},
    LOG_LEVEL_OFF = -1,
    LOG_LEVEL_FATAL = 0,
    LOG_LEVEL_ALERT = 100,
    LOG_LEVEL_CRIT = 200,
    LOG_LEVEL_ERROR = 300,
    LOG_LEVEL_WARN = 400,
    LOG_LEVEL_NOTICE = 500,
    LOG_LEVEL_INFO = 600,
    LOG_LEVEL_DEBUG = 700,
    LOG_LEVEL_NOTSET = 800,
)

const spinnakerLogLevel = _spinLogLevel

@cenum(_spinPayloadTypeInfoIDs,
    PAYLOAD_TYPE_UNKNOWN = 0,
    PAYLOAD_TYPE_IMAGE = 1,
    PAYLOAD_TYPE_RAW_DATA = 2,
    PAYLOAD_TYPE_FILE = 3,
    PAYLOAD_TYPE_CHUNK_DATA = 4,
    PAYLOAD_TYPE_JPEG = 5,
    PAYLOAD_TYPE_JPEG2000 = 6,
    PAYLOAD_TYPE_H264 = 7,
    PAYLOAD_TYPE_CHUNK_ONLY = 8,
    PAYLOAD_TYPE_DEVICE_SPECIFIC = 9,
    PAYLOAD_TYPE_MULTI_PART = 10,
    PAYLOAD_TYPE_CUSTOM_ID = 1000,
    PAYLOAD_TYPE_EXTENDED_CHUNK = 1001,
)

const spinPayloadTypeInfoIDs = _spinPayloadTypeInfoIDs

struct _spinPNGOption
    interlaced::bool8_t
    compressionLevel::UInt32
    reserved::NTuple{16, UInt32}
end

const spinPNGOption = _spinPNGOption

struct _spinPPMOption
    binaryFile::bool8_t
    reserved::NTuple{16, UInt32}
end

const spinPPMOption = _spinPPMOption

struct _spinPGMOption
    binaryFile::bool8_t
    reserved::NTuple{16, UInt32}
end

const spinPGMOption = _spinPGMOption

@cenum(CompressionMethod,
    NONE = 1,
    PACKBITS = 2,
    DEFLATE = 3,
    ADOBE_DEFLATE = 4,
    CCITTFAX3 = 5,
    CCITTFAX4 = 6,
    LZW = 7,
    JPG = 8,
)

const spinCompressionMethod = CompressionMethod

struct _spinTIFFOption
    compression::spinCompressionMethod
    reserved::NTuple{16, UInt32}
end

const spinTIFFOption = _spinTIFFOption

struct _spinJPEGOption
    progressive::bool8_t
    quality::UInt32
    reserved::NTuple{16, UInt32}
end

const spinJPEGOption = _spinJPEGOption

struct _spinJPG2Option
    quality::UInt32
    reserved::NTuple{16, UInt32}
end

const spinJPG2Option = _spinJPG2Option

struct _spinBMPOption
    indexedColor_8bit::bool8_t
    reserved::NTuple{16, UInt32}
end

const spinBMPOption = _spinBMPOption

struct _spinMJPGOption
    frameRate::Cfloat
    quality::UInt32
    reserved::NTuple{256, UInt32}
end

const spinMJPGOption = _spinMJPGOption

struct _spinH264Option
    frameRate::Cfloat
    width::UInt32
    height::UInt32
    bitrate::UInt32
    reserved::NTuple{256, UInt32}
end

const spinH264Option = _spinH264Option

struct _spinAVIOption
    frameRate::Cfloat
    reserved::NTuple{256, UInt32}
end

const spinAVIOption = _spinAVIOption

struct _spinLibraryVersion
    major::UInt32
    minor::UInt32
    type::UInt32
    build::UInt32
end

const spinLibraryVersion = _spinLibraryVersion

@cenum(_actionCommandStatus,
    ACTION_COMMAND_STATUS_OK = 0,
    ACTION_COMMAND_STATUS_NO_REF_TIME = 32787,
    ACTION_COMMAND_STATUS_OVERFLOW = 32789,
    ACTION_COMMAND_STATUS_ACTION_LATE = 32790,
    ACTION_COMMAND_STATUS_ERROR = 36863,
)

const actionCommandStatus = _actionCommandStatus

struct _actionCommandResult
    DeviceAddress::UInt32
    Status::actionCommandStatus
end

const actionCommandResult = _actionCommandResult
const spinNodeMapHandle = Ptr{Cvoid}
const spinNodeCallbackHandle = Ptr{Cvoid}
const spinNodeCallbackFunction = Ptr{Cvoid}

@cenum(_spinNodeType{Int32},
    ValueNode = 0,
    BaseNode = 1,
    IntegerNode = 2,
    BooleanNode = 3,
    FloatNode = 4,
    CommandNode = 5,
    StringNode = 6,
    RegisterNode = 7,
    EnumerationNode = 8,
    EnumEntryNode = 9,
    CategoryNode = 10,
    PortNode = 11,
    UnknownNode = -1,
)

const spinNodeType = _spinNodeType

@cenum(_spinSign,
    Signed = 0,
    Unsigned = 1,
    _UndefinedSign = 2,
)

const spinSign = _spinSign

@cenum(_spinAccessMode,
    NI = 0,
    NA = 1,
    WO = 2,
    RO = 3,
    RW = 4,
    _UndefinedAccesMode = 5,
    _CycleDetectAccesMode = 6,
)

const spinAccessMode = _spinAccessMode

@cenum(_spinVisibility,
    Beginner = 0,
    Expert = 1,
    Guru = 2,
    Invisible = 3,
    _UndefinedVisibility = 99,
)

const spinVisibility = _spinVisibility

@cenum(_spinCachingMode,
    NoCache = 0,
    WriteThrough = 1,
    WriteAround = 2,
    _UndefinedCachingMode = 3,
)

const spinCachingMode = _spinCachingMode

@cenum(_spinRepresentation,
    Linear = 0,
    Logarithmic = 1,
    Boolean = 2,
    PureNumber = 3,
    HexNumber = 4,
    IPV4Address = 5,
    MACAddress = 6,
    _UndefinedRepresentation = 7,
)

const spinRepresentation = _spinRepresentation

@cenum(_spinEndianess,
    BigEndian = 0,
    LittleEndian = 1,
    _UndefinedEndian = 2,
)

const spinEndianess = _spinEndianess

@cenum(_spinNameSpace,
    Custom = 0,
    Standard = 1,
    _UndefinedNameSpace = 2,
)

const spinNameSpace = _spinNameSpace

@cenum(_spinStandardNameSpace,
    None = 0,
    GEV = 1,
    IIDC = 2,
    CL = 3,
    USB = 4,
    _UndefinedStandardNameSpace = 5,
)

const spinStandardNameSpace = _spinStandardNameSpace

@cenum(_spinYesNo,
    Yes = 1,
    No = 0,
    _UndefinedYesNo = 2,
)

const spinYesNo = _spinYesNo

@cenum(_spinSlope,
    Increasing = 0,
    Decreasing = 1,
    Varying = 2,
    Automatic = 3,
    _UndefinedESlope = 4,
)

const spinSlope = _spinSlope

@cenum(_spinXMLValidation,
    xvLoad = 1,
    xvCycles = 2,
    xvSFNC = 4,
    xvDefault = 0,
    xvAll = 4294967295,
    _UndefinedEXMLValidation = 134217728,
)

const spinXMLValidation = _spinXMLValidation

@cenum(_spinDisplayNotation,
    fnAutomatic = 0,
    fnFixed = 1,
    fnScientific = 2,
    _UndefinedEDisplayNotation = 3,
)

const spinDisplayNotation = _spinDisplayNotation

@cenum(_spinInterfaceType,
    intfIValue = 0,
    intfIBase = 1,
    intfIInteger = 2,
    intfIBoolean = 3,
    intfICommand = 4,
    intfIFloat = 5,
    intfIString = 6,
    intfIRegister = 7,
    intfICategory = 8,
    intfIEnumeration = 9,
    intfIEnumEntry = 10,
    intfIPort = 11,
)

const spinInterfaceType = _spinInterfaceType

@cenum(_spinLinkType,
    ctAllDependingNodes = 0,
    ctAllTerminalNodes = 1,
    ctInvalidators = 2,
    ctReadingChildren = 3,
    ctWritingChildren = 4,
    ctDependingChildren = 5,
)

const spinLinkType = _spinLinkType

@cenum(_spinIncMode,
    noIncrement = 0,
    fixedIncrement = 1,
    listIncrement = 2,
)

const spinIncMode = _spinIncMode

@cenum(_spinInputDirection,
    idFrom = 0,
    idTo = 1,
    idNone = 2,
)

const spinInputDirection = _spinInputDirection

# Skipping MacroDefinition: SPINC_IMPORT_EXPORT __attribute__ ( ( visibility ( "default" ) ) )
# Skipping MacroDefinition: EXTERN_C extern "C"
# Skipping MacroDefinition: SPINNAKERC_API_DEPRECATED ( msg , func ) SPINC_IMPORT_EXPORT spinError SPINC_CALLTYPE func __attribute__ ( ( deprecated ( msg ) ) )
# Skipping MacroDefinition: SPINNAKERC_API SPINC_IMPORT_EXPORT spinError SPINC_CALLTYPE

@cenum(_spinTLStreamTypeEnums,
    StreamType_Mixed = 0,
    StreamType_Custom = 1,
    StreamType_GEV = 2,
    StreamType_CL = 3,
    StreamType_IIDC = 4,
    StreamType_UVC = 5,
    StreamType_CXP = 6,
    StreamType_CLHS = 7,
    StreamType_U3V = 8,
    StreamType_ETHERNET = 9,
    StreamType_PCI = 10,
    NUMSTREAMTYPE = 11,
)

const spinTLStreamTypeEnums = _spinTLStreamTypeEnums

@cenum(_spinTLStreamDefaultBufferCountModeEnums,
    StreamDefaultBufferCountMode_Manual = 0,
    StreamDefaultBufferCountMode_Auto = 1,
    NUMSTREAMDEFAULTBUFFERCOUNTMODE = 2,
)

const spinTLStreamDefaultBufferCountModeEnums = _spinTLStreamDefaultBufferCountModeEnums

@cenum(_spinTLStreamBufferCountModeEnums,
    StreamBufferCountMode_Manual = 0,
    StreamBufferCountMode_Auto = 1,
    NUMSTREAMBUFFERCOUNTMODE = 2,
)

const spinTLStreamBufferCountModeEnums = _spinTLStreamBufferCountModeEnums

@cenum(_spinTLStreamBufferHandlingModeEnums,
    StreamBufferHandlingMode_OldestFirst = 0,
    StreamBufferHandlingMode_OldestFirstOverwrite = 1,
    StreamBufferHandlingMode_NewestFirst = 2,
    StreamBufferHandlingMode_NewestFirstOverwrite = 3,
    StreamBufferHandlingMode_NewestOnly = 4,
    NUMSTREAMBUFFERHANDLINGMODE = 5,
)

const spinTLStreamBufferHandlingModeEnums = _spinTLStreamBufferHandlingModeEnums

@cenum(_spinTLDeviceTypeEnums,
    DeviceType_Mixed = 0,
    DeviceType_Custom = 1,
    DeviceType_GEV = 2,
    DeviceType_CL = 3,
    DeviceType_IIDC = 4,
    DeviceType_UVC = 5,
    DeviceType_CXP = 6,
    DeviceType_CLHS = 7,
    DeviceType_U3V = 8,
    DeviceType_ETHERNET = 9,
    DeviceType_PCI = 10,
    NUMDEVICETYPE = 11,
)

const spinTLDeviceTypeEnums = _spinTLDeviceTypeEnums

@cenum(_spinTLDeviceAccessStatusEnums,
    DeviceAccessStatus_Unknown = 0,
    DeviceAccessStatus_ReadWrite = 1,
    DeviceAccessStatus_ReadOnly = 2,
    DeviceAccessStatus_NoAccess = 3,
    NUMDEVICEACCESSSTATUS = 4,
)

const spinTLDeviceAccessStatusEnums = _spinTLDeviceAccessStatusEnums

@cenum(_spinTLGevCCPEnums,
    GevCCP_EnumEntry_GevCCP_OpenAccess = 0,
    GevCCP_EnumEntry_GevCCP_ExclusiveAccess = 1,
    GevCCP_EnumEntry_GevCCP_ControlAccess = 2,
    NUMGEVCCP = 3,
)

const spinTLGevCCPEnums = _spinTLGevCCPEnums

@cenum(_spinTLGUIXMLLocationEnums,
    GUIXMLLocation_Device = 0,
    GUIXMLLocation_Host = 1,
    NUMGUIXMLLOCATION = 2,
)

const spinTLGUIXMLLocationEnums = _spinTLGUIXMLLocationEnums

@cenum(_spinTLGenICamXMLLocationEnums,
    GenICamXMLLocation_Device = 0,
    GenICamXMLLocation_Host = 1,
    NUMGENICAMXMLLOCATION = 2,
)

const spinTLGenICamXMLLocationEnums = _spinTLGenICamXMLLocationEnums

@cenum(_spinTLDeviceEndianessMechanismEnums,
    DeviceEndianessMechanism_Legacy = 0,
    DeviceEndianessMechanism_Standard = 1,
    NUMDEVICEENDIANESSMECHANISM = 2,
)

const spinTLDeviceEndianessMechanismEnums = _spinTLDeviceEndianessMechanismEnums

@cenum(_spinTLDeviceCurrentSpeedEnums,
    DeviceCurrentSpeed_UnknownSpeed = 0,
    DeviceCurrentSpeed_LowSpeed = 1,
    DeviceCurrentSpeed_FullSpeed = 2,
    DeviceCurrentSpeed_HighSpeed = 3,
    DeviceCurrentSpeed_SuperSpeed = 4,
    NUMDEVICECURRENTSPEED = 5,
)

const spinTLDeviceCurrentSpeedEnums = _spinTLDeviceCurrentSpeedEnums

@cenum(_spinTLPOEStatusEnums,
    POEStatus_NotSupported = 0,
    POEStatus_PowerOff = 1,
    POEStatus_PowerOn = 2,
    NUMPOESTATUS = 3,
)

const spinTLPOEStatusEnums = _spinTLPOEStatusEnums

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

const quickSpinTLDevice = _quickSpinTLDevice

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

const quickSpinTLInterface = _quickSpinTLInterface

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

const quickSpinTLStream = _quickSpinTLStream
