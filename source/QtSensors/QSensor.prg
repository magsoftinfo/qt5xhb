/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
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
   METHOD dataRate
   METHOD setDataRate
   METHOD outputRange
   METHOD setOutputRange
   METHOD description
   METHOD error
   METHOD addFilter
   METHOD removeFilter
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

PROCEDURE destroyObject () CLASS QSensor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSensors/QSensor>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSensors/QSensor>
#endif
#endif

/*
QSensor(const QByteArray &type, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QSensor * o = new QSensor ( *PQBYTEARRAY(1), OPQOBJECT(2,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QSENSOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events (obj, true);
    Signals_disconnect_all_signals (obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QByteArray identifier() const
*/
HB_FUNC_STATIC( QSENSOR_IDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->identifier () );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setIdentifier(const QByteArray &identifier)
*/
HB_FUNC_STATIC( QSENSOR_SETIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      obj->setIdentifier ( *PQBYTEARRAY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QByteArray type() const
*/
HB_FUNC_STATIC( QSENSOR_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->type () );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool connectToBackend()
*/
HB_FUNC_STATIC( QSENSOR_CONNECTTOBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->connectToBackend () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isConnectedToBackend() const
*/
HB_FUNC_STATIC( QSENSOR_ISCONNECTEDTOBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isConnectedToBackend () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isBusy() const
*/
HB_FUNC_STATIC( QSENSOR_ISBUSY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBusy () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setActive(bool active)
*/
HB_FUNC_STATIC( QSENSOR_SETACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setActive ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isActive() const
*/
HB_FUNC_STATIC( QSENSOR_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isAlwaysOn() const
*/
HB_FUNC_STATIC( QSENSOR_ISALWAYSON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAlwaysOn () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setAlwaysOn(bool alwaysOn)
*/
HB_FUNC_STATIC( QSENSOR_SETALWAYSON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAlwaysOn ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool skipDuplicates() const
*/
HB_FUNC_STATIC( QSENSOR_SKIPDUPLICATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->skipDuplicates () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setSkipDuplicates(bool skipDuplicates)
*/
HB_FUNC_STATIC( QSENSOR_SETSKIPDUPLICATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setSkipDuplicates ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qrangelist availableDataRates() const
*/

/*
int dataRate() const
*/
HB_FUNC_STATIC( QSENSOR_DATARATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->dataRate () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setDataRate(int rate)
*/
HB_FUNC_STATIC( QSENSOR_SETDATARATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setDataRate ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qoutputrangelist outputRanges() const
*/

/*
int outputRange() const
*/
HB_FUNC_STATIC( QSENSOR_OUTPUTRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->outputRange () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setOutputRange(int index)
*/
HB_FUNC_STATIC( QSENSOR_SETOUTPUTRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOutputRange ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString description() const
*/
HB_FUNC_STATIC( QSENSOR_DESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->description () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
int error() const
*/
HB_FUNC_STATIC( QSENSOR_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->error () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void addFilter(QSensorFilter *filter)
*/
HB_FUNC_STATIC( QSENSOR_ADDFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSENSORFILTER(1) )
    {
#endif
      obj->addFilter ( PQSENSORFILTER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void removeFilter(QSensorFilter *filter)
*/
HB_FUNC_STATIC( QSENSOR_REMOVEFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSENSORFILTER(1) )
    {
#endif
      obj->removeFilter ( PQSENSORFILTER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QSensorFilter*> filters() const
*/

/*
QSensorReading *reading() const
*/
HB_FUNC_STATIC( QSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSensorReading * ptr = obj->reading ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QSENSORREADING" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isFeatureSupported(Feature feature) const
*/
HB_FUNC_STATIC( QSENSOR_ISFEATURESUPPORTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isFeatureSupported ( (QSensor::Feature) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
AxesOrientationMode axesOrientationMode() const
*/
HB_FUNC_STATIC( QSENSOR_AXESORIENTATIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->axesOrientationMode () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setAxesOrientationMode(AxesOrientationMode axesOrientationMode)
*/
HB_FUNC_STATIC( QSENSOR_SETAXESORIENTATIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setAxesOrientationMode ( (QSensor::AxesOrientationMode) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int currentOrientation() const
*/
HB_FUNC_STATIC( QSENSOR_CURRENTORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->currentOrientation () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setCurrentOrientation(int currentOrientation)
*/
HB_FUNC_STATIC( QSENSOR_SETCURRENTORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setCurrentOrientation ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int userOrientation() const
*/
HB_FUNC_STATIC( QSENSOR_USERORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->userOrientation () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setUserOrientation(int userOrientation)
*/
HB_FUNC_STATIC( QSENSOR_SETUSERORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setUserOrientation ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int maxBufferSize() const
*/
HB_FUNC_STATIC( QSENSOR_MAXBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->maxBufferSize () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setMaxBufferSize(int maxBufferSize)
*/
HB_FUNC_STATIC( QSENSOR_SETMAXBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMaxBufferSize ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int efficientBufferSize() const
*/
HB_FUNC_STATIC( QSENSOR_EFFICIENTBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->efficientBufferSize () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setEfficientBufferSize(int efficientBufferSize)
*/
HB_FUNC_STATIC( QSENSOR_SETEFFICIENTBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setEfficientBufferSize ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int bufferSize() const
*/
HB_FUNC_STATIC( QSENSOR_BUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->bufferSize () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setBufferSize(int bufferSize)
*/
HB_FUNC_STATIC( QSENSOR_SETBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBufferSize ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool start()
*/
HB_FUNC_STATIC( QSENSOR_START )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->start () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void stop()
*/
HB_FUNC_STATIC( QSENSOR_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
static QList<QByteArray> sensorTypes()
*/
HB_FUNC_STATIC( QSENSOR_SENSORTYPES )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QList<QByteArray> list = QSensor::sensorTypes ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QList<QByteArray> sensorsForType(const QByteArray &type)
*/
HB_FUNC_STATIC( QSENSOR_SENSORSFORTYPE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
#endif
      QList<QByteArray> list = QSensor::sensorsForType ( *PQBYTEARRAY(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QByteArray defaultSensorForType(const QByteArray &type)
*/
HB_FUNC_STATIC( QSENSOR_DEFAULTSENSORFORTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
#endif
      QByteArray * ptr = new QByteArray( QSensor::defaultSensorForType ( *PQBYTEARRAY(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

void QSensorSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSENSOR_ONBUSYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "busyChanged()", "busyChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSENSOR_ONACTIVECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "activeChanged()", "activeChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSENSOR_ONREADINGCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "readingChanged()", "readingChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSENSOR_ONSENSORERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "sensorError(int)", "sensorError(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSENSOR_ONAVAILABLESENSORSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "availableSensorsChanged()", "availableSensorsChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSENSOR_ONALWAYSONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "alwaysOnChanged()", "alwaysOnChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSENSOR_ONDATARATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "dataRateChanged()", "dataRateChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSENSOR_ONSKIPDUPLICATESCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "skipDuplicatesChanged(bool)", "skipDuplicatesChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSENSOR_ONAXESORIENTATIONMODECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "axesOrientationModeChanged(QSensor::AxesOrientationMode)", "axesOrientationModeChanged(QSensor::AxesOrientationMode)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSENSOR_ONCURRENTORIENTATIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "currentOrientationChanged(int)", "currentOrientationChanged(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSENSOR_ONUSERORIENTATIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "userOrientationChanged(int)", "userOrientationChanged(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSENSOR_ONMAXBUFFERSIZECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "maxBufferSizeChanged(int)", "maxBufferSizeChanged(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSENSOR_ONEFFICIENTBUFFERSIZECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "efficientBufferSizeChanged(int)", "efficientBufferSizeChanged(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSENSOR_ONBUFFERSIZECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorSlots_connect_signal( "bufferSizeChanged(int)", "bufferSizeChanged(int)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
