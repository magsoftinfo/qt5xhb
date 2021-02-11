/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QCameraExposure INHERIT QObject

   METHOD aperture
   METHOD shutterSpeed
   METHOD isoSensitivity
   METHOD exposureCompensation
   METHOD setExposureCompensation
   METHOD isFlashReady
   METHOD flashMode
   METHOD setFlashMode
   METHOD exposureMode
   METHOD setExposureMode
   METHOD meteringMode
   METHOD setMeteringMode
   METHOD isAvailable
   METHOD isExposureModeSupported
   METHOD isFlashModeSupported
   METHOD isMeteringModeSupported
   METHOD requestedAperture
   METHOD requestedIsoSensitivity
   METHOD requestedShutterSpeed
   METHOD setSpotMeteringPoint
   METHOD spotMeteringPoint
   METHOD supportedApertures
   METHOD supportedIsoSensitivities
   METHOD supportedShutterSpeeds
   METHOD setAutoAperture
   METHOD setAutoIsoSensitivity
   METHOD setAutoShutterSpeed
   METHOD setManualAperture
   METHOD setManualIsoSensitivity
   METHOD setManualShutterSpeed

   METHOD onApertureChanged
   METHOD onApertureRangeChanged
   METHOD onExposureCompensationChanged
   METHOD onFlashReady
   METHOD onIsoSensitivityChanged
   METHOD onShutterSpeedChanged
   METHOD onShutterSpeedRangeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraExposure
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraExposure>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraExposure>
#endif

#include <QtCore/QPointF>

/*
qreal aperture() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_APERTURE )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->aperture() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal shutterSpeed() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SHUTTERSPEED )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->shutterSpeed() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int isoSensitivity() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_ISOSENSITIVITY )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->isoSensitivity() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal exposureCompensation() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_EXPOSURECOMPENSATION )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->exposureCompensation() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setExposureCompensation(qreal ev)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETEXPOSURECOMPENSATION )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setExposureCompensation( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isFlashReady() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_ISFLASHREADY )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFlashReady() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
FlashModes flashMode() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_FLASHMODE )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->flashMode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setFlashMode(FlashModes mode)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETFLASHMODE )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFlashMode( (QCameraExposure::FlashModes) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ExposureMode exposureMode() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_EXPOSUREMODE )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->exposureMode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setExposureMode(ExposureMode mode)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETEXPOSUREMODE )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setExposureMode( (QCameraExposure::ExposureMode) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
MeteringMode meteringMode() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_METERINGMODE )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->meteringMode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setMeteringMode(MeteringMode mode)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETMETERINGMODE )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMeteringMode( (QCameraExposure::MeteringMode) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isAvailable() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_ISAVAILABLE )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAvailable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isExposureModeSupported(ExposureMode mode) const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_ISEXPOSUREMODESUPPORTED )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isExposureModeSupported( (QCameraExposure::ExposureMode) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isFlashModeSupported(FlashModes mode) const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_ISFLASHMODESUPPORTED )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isFlashModeSupported( (QCameraExposure::FlashModes) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isMeteringModeSupported(MeteringMode mode) const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_ISMETERINGMODESUPPORTED )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isMeteringModeSupported( (QCameraExposure::MeteringMode) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal requestedAperture() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_REQUESTEDAPERTURE )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->requestedAperture() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int requestedIsoSensitivity() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_REQUESTEDISOSENSITIVITY )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->requestedIsoSensitivity() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal requestedShutterSpeed() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_REQUESTEDSHUTTERSPEED )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->requestedShutterSpeed() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setSpotMeteringPoint(const QPointF & point)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETSPOTMETERINGPOINT )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINTF(1) )
    {
#endif
      obj->setSpotMeteringPoint( *PQPOINTF(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPointF spotMeteringPoint() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SPOTMETERINGPOINT )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPointF * ptr = new QPointF( obj->spotMeteringPoint() );
      Qt5xHb::createReturnClass( ptr, "QPOINTF", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<qreal> supportedApertures(bool * continuous = Q_NULLPTR) const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SUPPORTEDAPERTURES )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISLOG(1)||ISNIL(1)) )
    {
#endif
      bool par1;
      QList<qreal> list = obj->supportedApertures( &par1 );
      Qt5xHb::convert_qlist_qreal_to_array( list );
      hb_storl( par1, 1 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<int> supportedIsoSensitivities(bool * continuous = Q_NULLPTR) const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SUPPORTEDISOSENSITIVITIES )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISLOG(1)||ISNIL(1)) )
    {
#endif
      bool par1;
      QList<int> list = obj->supportedIsoSensitivities( &par1 );
      Qt5xHb::convert_qlist_int_to_array( list );
      hb_storl( par1, 1 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<qreal> supportedShutterSpeeds(bool * continuous = Q_NULLPTR) const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SUPPORTEDSHUTTERSPEEDS )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISLOG(1)||ISNIL(1)) )
    {
#endif
      bool par1;
      QList<qreal> list = obj->supportedShutterSpeeds( &par1 );
      Qt5xHb::convert_qlist_qreal_to_array( list );
      hb_storl( par1, 1 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setAutoAperture()
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETAUTOAPERTURE )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->setAutoAperture();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoIsoSensitivity()
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETAUTOISOSENSITIVITY )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->setAutoIsoSensitivity();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoShutterSpeed()
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETAUTOSHUTTERSPEED )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->setAutoShutterSpeed();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setManualAperture(qreal aperture)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETMANUALAPERTURE )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setManualAperture( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setManualIsoSensitivity(int iso)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETMANUALISOSENSITIVITY )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setManualIsoSensitivity( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setManualShutterSpeed(qreal seconds)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETMANUALSHUTTERSPEED )
{
  QCameraExposure * obj = (QCameraExposure *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setManualShutterSpeed( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QCameraExposureSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCAMERAEXPOSURE_ONAPERTURECHANGED )
{
  QCameraExposureSlots_connect_signal( "apertureChanged(qreal)", "apertureChanged(qreal)" );
}

HB_FUNC_STATIC( QCAMERAEXPOSURE_ONAPERTURERANGECHANGED )
{
  QCameraExposureSlots_connect_signal( "apertureRangeChanged()", "apertureRangeChanged()" );
}

HB_FUNC_STATIC( QCAMERAEXPOSURE_ONEXPOSURECOMPENSATIONCHANGED )
{
  QCameraExposureSlots_connect_signal( "exposureCompensationChanged(qreal)", "exposureCompensationChanged(qreal)" );
}

HB_FUNC_STATIC( QCAMERAEXPOSURE_ONFLASHREADY )
{
  QCameraExposureSlots_connect_signal( "flashReady(bool)", "flashReady(bool)" );
}

HB_FUNC_STATIC( QCAMERAEXPOSURE_ONISOSENSITIVITYCHANGED )
{
  QCameraExposureSlots_connect_signal( "isoSensitivityChanged(int)", "isoSensitivityChanged(int)" );
}

HB_FUNC_STATIC( QCAMERAEXPOSURE_ONSHUTTERSPEEDCHANGED )
{
  QCameraExposureSlots_connect_signal( "shutterSpeedChanged(qreal)", "shutterSpeedChanged(qreal)" );
}

HB_FUNC_STATIC( QCAMERAEXPOSURE_ONSHUTTERSPEEDRANGECHANGED )
{
  QCameraExposureSlots_connect_signal( "shutterSpeedRangeChanged()", "shutterSpeedRangeChanged()" );
}

#pragma ENDDUMP
