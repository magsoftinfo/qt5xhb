%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QAUDIOFORMAT
#endif

CLASS QAbstractAudioOutput INHERIT QObject

   METHOD delete
   METHOD start
   METHOD stop
   METHOD reset
   METHOD suspend
   METHOD resume
   METHOD bytesFree
   METHOD periodSize
   METHOD setBufferSize
   METHOD bufferSize
   METHOD setNotifyInterval
   METHOD notifyInterval
   METHOD processedUSecs
   METHOD elapsedUSecs
   METHOD error
   METHOD state
   METHOD setFormat
   METHOD format
   METHOD setVolume
   METHOD volume
   METHOD category
   METHOD setCategory

   METHOD onErrorChanged
   METHOD onStateChanged
   METHOD onNotify

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QIODevice>

$deleteMethod

$prototype=virtual void start(QIODevice *device) = 0
$internalVirtualMethod=|void|start,start1|QIODevice *

$prototype=virtual QIODevice* start() = 0
$internalVirtualMethod=|QIODevice *|start,start2|

//[1]virtual void start(QIODevice *device) = 0
//[2]virtual QIODevice* start() = 0

HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QAbstractAudioOutput_start1();
  }
  else if( ISNUMPAR(0) )
  {
    QAbstractAudioOutput_start2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual void stop() = 0
$virtualMethod=|void|stop|

$prototype=virtual void reset() = 0
$virtualMethod=|void|reset|

$prototype=virtual void suspend() = 0
$virtualMethod=|void|suspend|

$prototype=virtual void resume() = 0
$virtualMethod=|void|resume|

$prototype=virtual int bytesFree() const = 0
$virtualMethod=|int|bytesFree|

$prototype=virtual int periodSize() const = 0
$virtualMethod=|int|periodSize|

$prototype=virtual void setBufferSize(int value) = 0
$virtualMethod=|void|setBufferSize|int

$prototype=virtual int bufferSize() const = 0
$virtualMethod=|int|bufferSize|

$prototype=virtual void setNotifyInterval(int milliSeconds) = 0
$virtualMethod=|void|setNotifyInterval|int

$prototype=virtual int notifyInterval() const = 0
$virtualMethod=|int|notifyInterval|

$prototype=virtual qint64 processedUSecs() const = 0
$virtualMethod=|qint64|processedUSecs|

$prototype=virtual qint64 elapsedUSecs() const = 0
$virtualMethod=|qint64|elapsedUSecs|

$prototype=virtual QAudio::Error error() const = 0
$virtualMethod=|QAudio::Error|error|

$prototype=virtual QAudio::State state() const = 0
$virtualMethod=|QAudio::State|state|

$prototype=virtual void setFormat(const QAudioFormat& fmt) = 0
$virtualMethod=|void|setFormat|const QAudioFormat &

$prototype=virtual QAudioFormat format() const = 0
$virtualMethod=|QAudioFormat|format|

$prototype=virtual void setVolume(qreal)
$virtualMethod=|void|setVolume|qreal

$prototype=virtual qreal volume() const
$virtualMethod=|qreal|volume|

$prototype=virtual QString category() const
$virtualMethod=|QString|category|

$prototype=virtual void setCategory(const QString &)
$virtualMethod=|void|setCategory|const QString &

$connectSignalFunction

$signalMethod=|errorChanged(QAudio::Error)
$signalMethod=|stateChanged(QAudio::State)
$signalMethod=|notify()

#pragma ENDDUMP
