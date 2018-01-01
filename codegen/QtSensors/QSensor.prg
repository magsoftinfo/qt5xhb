%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QRANGELIST
REQUEST QOUTPUTRANGELIST
REQUEST QSENSORFILTER
REQUEST QSENSORREADING
#endif

CLASS QSensor INHERIT QObject

   METHOD new
   METHOD delete
   METHOD identifier
   METHOD setIdentifier
   METHOD type
   METHOD connectToBackend
   METHOD isConnectedToBackend
   METHOD isBusy
   METHOD setActive
   METHOD isActive
   METHOD isAlwaysOn
   METHOD setAlwaysOn
   METHOD skipDuplicates
   METHOD setSkipDuplicates
   METHOD availableDataRates
   METHOD dataRate
   METHOD setDataRate
   METHOD outputRanges
   METHOD outputRange
   METHOD setOutputRange
   METHOD description
   METHOD error
   METHOD addFilter
   METHOD removeFilter
   METHOD filters
   METHOD reading
   METHOD isFeatureSupported
   METHOD axesOrientationMode
   METHOD setAxesOrientationMode
   METHOD currentOrientation
   METHOD setCurrentOrientation
   METHOD userOrientation
   METHOD setUserOrientation
   METHOD maxBufferSize
   METHOD setMaxBufferSize
   METHOD efficientBufferSize
   METHOD setEfficientBufferSize
   METHOD bufferSize
   METHOD setBufferSize
   METHOD start
   METHOD stop
   METHOD sensorTypes
   METHOD sensorsForType
   METHOD defaultSensorForType

   METHOD onBusyChanged
   METHOD onActiveChanged
   METHOD onReadingChanged
   METHOD onSensorError
   METHOD onAvailableSensorsChanged
   METHOD onAlwaysOnChanged
   METHOD onDataRateChanged
   METHOD onSkipDuplicatesChanged
   METHOD onAxesOrientationModeChanged
   METHOD onCurrentOrientationChanged
   METHOD onUserOrientationChanged
   METHOD onMaxBufferSizeChanged
   METHOD onEfficientBufferSizeChanged
   METHOD onBufferSizeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QSensor(const QByteArray &type, QObject *parent = 0)
$constructor=5,1,0|new|const QByteArray &,QObject *=0

$deleteMethod=5,1,0

$prototype=QByteArray identifier() const
$method=5,1,0|QByteArray|identifier|

$prototype=void setIdentifier(const QByteArray &identifier)
$method=5,1,0|void|setIdentifier|const QByteArray &

$prototype=QByteArray type() const
$method=5,1,0|QByteArray|type|

$prototype=bool connectToBackend()
$method=5,1,0|bool|connectToBackend|

$prototype=bool isConnectedToBackend() const
$method=5,1,0|bool|isConnectedToBackend|

$prototype=bool isBusy() const
$method=5,1,0|bool|isBusy|

$prototype=void setActive(bool active)
$method=5,1,0|void|setActive|bool

$prototype=bool isActive() const
$method=5,1,0|bool|isActive|

$prototype=bool isAlwaysOn() const
$method=5,1,0|bool|isAlwaysOn|

$prototype=void setAlwaysOn(bool alwaysOn)
$method=5,1,0|void|setAlwaysOn|bool

$prototype=bool skipDuplicates() const
$method=5,1,0|bool|skipDuplicates|

$prototype=void setSkipDuplicates(bool skipDuplicates)
$method=5,1,0|void|setSkipDuplicates|bool

$prototype=qrangelist availableDataRates() const
$method=5,1,0|qrangelist|availableDataRates|

$prototype=int dataRate() const
$method=5,1,0|int|dataRate|

$prototype=void setDataRate(int rate)
$method=5,1,0|void|setDataRate|int

$prototype=qoutputrangelist outputRanges() const
$method=5,1,0|qoutputrangelist|outputRanges|

$prototype=int outputRange() const
$method=5,1,0|int|outputRange|

$prototype=void setOutputRange(int index)
$method=5,1,0|void|setOutputRange|int

$prototype=QString description() const
$method=5,1,0|QString|description|

$prototype=int error() const
$method=5,1,0|int|error|

$prototype=void addFilter(QSensorFilter *filter)
$method=5,1,0|void|addFilter|QSensorFilter *

$prototype=void removeFilter(QSensorFilter *filter)
$method=5,1,0|void|removeFilter|QSensorFilter *

$prototype=QList<QSensorFilter*> filters() const
$method=5,1,0|QList<QSensorFilter *>|filters|

$prototype=QSensorReading *reading() const
$method=5,1,0|QSensorReading *|reading|

$prototype=bool isFeatureSupported(Feature feature) const
$method=5,1,0|bool|isFeatureSupported|QSensor::Feature

$prototype=AxesOrientationMode axesOrientationMode() const
$method=5,1,0|AxesOrientationMode|axesOrientationMode|

$prototype=void setAxesOrientationMode(AxesOrientationMode axesOrientationMode)
$method=5,1,0|void|setAxesOrientationMode|QSensor::AxesOrientationMode

$prototype=int currentOrientation() const
$method=5,1,0|int|currentOrientation|

$prototype=void setCurrentOrientation(int currentOrientation)
$method=5,1,0|void|setCurrentOrientation|int

$prototype=int userOrientation() const
$method=5,1,0|int|userOrientation|

$prototype=void setUserOrientation(int userOrientation)
$method=5,1,0|void|setUserOrientation|int

$prototype=int maxBufferSize() const
$method=5,1,0|int|maxBufferSize|

$prototype=void setMaxBufferSize(int maxBufferSize)
$method=5,1,0|void|setMaxBufferSize|int

$prototype=int efficientBufferSize() const
$method=5,1,0|int|efficientBufferSize|

$prototype=void setEfficientBufferSize(int efficientBufferSize)
$method=5,1,0|void|setEfficientBufferSize|int

$prototype=int bufferSize() const
$method=5,1,0|int|bufferSize|

$prototype=void setBufferSize(int bufferSize)
$method=5,1,0|void|setBufferSize|int

$prototype=bool start()
$method=5,1,0|bool|start|

$prototype=void stop()
$method=5,1,0|void|stop|

$prototype=static QList<QByteArray> sensorTypes()
$staticMethod=|QList<QByteArray>|sensorTypes|

$prototype=static QList<QByteArray> sensorsForType(const QByteArray &type)
$staticMethod=|QList<QByteArray>|sensorsForType|const QByteArray &

$prototype=static QByteArray defaultSensorForType(const QByteArray &type)
$staticMethod=5,1,0|QByteArray|defaultSensorForType|const QByteArray &

#pragma ENDDUMP
