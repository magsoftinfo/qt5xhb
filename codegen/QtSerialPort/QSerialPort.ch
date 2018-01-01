%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QSerialPort::Direction
flags QSerialPort::Directions
*/
#define QSerialPort_Input                                            1
#define QSerialPort_Output                                           2
#define QSerialPort_AllDirections                                    hb_bitor(QSerialPort_Input,QSerialPort_Output)

/*
enum QSerialPort::BaudRate
*/
#define QSerialPort_Baud1200                                         1200
#define QSerialPort_Baud2400                                         2400
#define QSerialPort_Baud4800                                         4800
#define QSerialPort_Baud9600                                         9600
#define QSerialPort_Baud19200                                        19200
#define QSerialPort_Baud38400                                        38400
#define QSerialPort_Baud57600                                        57600
#define QSerialPort_Baud115200                                       115200
#define QSerialPort_UnknownBaud                                      -1

/*
enum QSerialPort::DataBits
*/
#define QSerialPort_Data5                                            5
#define QSerialPort_Data6                                            6
#define QSerialPort_Data7                                            7
#define QSerialPort_Data8                                            8
#define QSerialPort_UnknownDataBits                                  -1

/*
enum QSerialPort::Parity
*/
#define QSerialPort_NoParity                                         0
#define QSerialPort_EvenParity                                       2
#define QSerialPort_OddParity                                        3
#define QSerialPort_SpaceParity                                      4
#define QSerialPort_MarkParity                                       5
#define QSerialPort_UnknownParity                                    -1

/*
enum QSerialPort::StopBits
*/
#define QSerialPort_OneStop                                          1
#define QSerialPort_OneAndHalfStop                                   3
#define QSerialPort_TwoStop                                          2
#define QSerialPort_UnknownStopBits                                  -1

/*
enum QSerialPort::FlowControl
*/
#define QSerialPort_NoFlowControl                                    0
#define QSerialPort_HardwareControl                                  1
#define QSerialPort_SoftwareControl                                  2
#define QSerialPort_UnknownFlowControl                               -1

/*
enum QSerialPort::PinoutSignal
flags QSerialPort::PinoutSignals
*/
#define QSerialPort_NoSignal                                         0x00
#define QSerialPort_TransmittedDataSignal                            0x01
#define QSerialPort_ReceivedDataSignal                               0x02
#define QSerialPort_DataTerminalReadySignal                          0x04
#define QSerialPort_DataCarrierDetectSignal                          0x08
#define QSerialPort_DataSetReadySignal                               0x10
#define QSerialPort_RingIndicatorSignal                              0x20
#define QSerialPort_RequestToSendSignal                              0x40
#define QSerialPort_ClearToSendSignal                                0x80
#define QSerialPort_SecondaryTransmittedDataSignal                   0x100
#define QSerialPort_SecondaryReceivedDataSignal                      0x200

/*
enum QSerialPort::DataErrorPolicy
*/
#define QSerialPort_SkipPolicy                                       0
#define QSerialPort_PassZeroPolicy                                   1
#define QSerialPort_IgnorePolicy                                     2
#define QSerialPort_StopReceivingPolicy                              3
#define QSerialPort_UnknownPolicy                                    -1

/*
enum QSerialPort::SerialPortError
*/
#define QSerialPort_NoError                                          0
#define QSerialPort_DeviceNotFoundError                              1
#define QSerialPort_PermissionError                                  2
#define QSerialPort_OpenError                                        3
#define QSerialPort_ParityError                                      4
#define QSerialPort_FramingError                                     5
#define QSerialPort_BreakConditionError                              6
#define QSerialPort_WriteError                                       7
#define QSerialPort_ReadError                                        8
#define QSerialPort_ResourceError                                    9
#define QSerialPort_UnsupportedOperationError                        10
#define QSerialPort_UnknownError                                     11
