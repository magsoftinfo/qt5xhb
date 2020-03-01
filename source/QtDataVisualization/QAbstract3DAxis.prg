/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAbstract3DAxis INHERIT QObject

   METHOD delete
   METHOD title
   METHOD setTitle
   METHOD labels
   METHOD setLabels
   METHOD orientation
   METHOD type
   METHOD min
   METHOD setMin
   METHOD max
   METHOD setMax
   METHOD isAutoAdjustRange
   METHOD setAutoAdjustRange
   METHOD labelAutoRotation
   METHOD setLabelAutoRotation
   METHOD isTitleVisible
   METHOD setTitleVisible
   METHOD isTitleFixed
   METHOD setTitleFixed
   METHOD setRange

   METHOD onAutoAdjustRangeChanged
   METHOD onLabelAutoRotationChanged
   METHOD onLabelsChanged
   METHOD onMaxChanged
   METHOD onMinChanged
   METHOD onOrientationChanged
   METHOD onRangeChanged
   METHOD onTitleChanged
   METHOD onTitleFixedChanged
   METHOD onTitleVisibilityChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstract3DAxis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QAbstract3DAxis>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QAbstract3DAxis>
#endif

using namespace QtDataVisualization;

/*
explicit QAbstract3DAxis(QAbstract3DAxisPrivate *d, QObject *parent = Q_NULLPTR) [protected]
*/

/*
virtual ~QAbstract3DAxis()
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_DELETE )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

/*
QString title() const
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_TITLE )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->title () );
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
void setTitle(const QString &title)
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_SETTITLE )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setTitle ( PQSTRING(1) );
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
QStringList labels() const
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_LABELS )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->labels () );
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
void setLabels(const QStringList &labels)
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_SETLABELS )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setLabels ( PQSTRINGLIST(1) );
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
AxisOrientation orientation() const
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_ORIENTATION )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->orientation () );
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
AxisType type() const
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_TYPE )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type () );
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
float min() const
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_MIN )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->min () );
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
void setMin(float min)
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_SETMIN )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMin ( PFLOAT(1) );
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
float max() const
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_MAX )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->max () );
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
void setMax(float max)
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_SETMAX )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMax ( PFLOAT(1) );
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
bool isAutoAdjustRange() const
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_ISAUTOADJUSTRANGE )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAutoAdjustRange () );
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
void setAutoAdjustRange(bool autoAdjust)
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_SETAUTOADJUSTRANGE )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAutoAdjustRange ( PBOOL(1) );
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
float labelAutoRotation() const
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_LABELAUTOROTATION )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->labelAutoRotation () );
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
void setLabelAutoRotation(float angle)
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_SETLABELAUTOROTATION )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLabelAutoRotation ( PFLOAT(1) );
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
bool isTitleVisible() const
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_ISTITLEVISIBLE )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTitleVisible () );
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
void setTitleVisible(bool visible)
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_SETTITLEVISIBLE )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setTitleVisible ( PBOOL(1) );
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
bool isTitleFixed() const
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_ISTITLEFIXED )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTitleFixed () );
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
void setTitleFixed(bool fixed)
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_SETTITLEFIXED )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setTitleFixed ( PBOOL(1) );
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
void setRange(float min, float max)
*/
HB_FUNC_STATIC( QABSTRACT3DAXIS_SETRANGE )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->setRange ( PFLOAT(1), PFLOAT(2) );
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

void QAbstract3DAxisSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QABSTRACT3DAXIS_ONAUTOADJUSTRANGECHANGED )
{
  QAbstract3DAxisSlots_connect_signal( "autoAdjustRangeChanged(bool)", "autoAdjustRangeChanged(bool)" );
}

HB_FUNC_STATIC( QABSTRACT3DAXIS_ONLABELAUTOROTATIONCHANGED )
{
  QAbstract3DAxisSlots_connect_signal( "labelAutoRotationChanged(float)", "labelAutoRotationChanged(float)" );
}

HB_FUNC_STATIC( QABSTRACT3DAXIS_ONLABELSCHANGED )
{
  QAbstract3DAxisSlots_connect_signal( "labelsChanged()", "labelsChanged()" );
}

HB_FUNC_STATIC( QABSTRACT3DAXIS_ONMAXCHANGED )
{
  QAbstract3DAxisSlots_connect_signal( "maxChanged(float)", "maxChanged(float)" );
}

HB_FUNC_STATIC( QABSTRACT3DAXIS_ONMINCHANGED )
{
  QAbstract3DAxisSlots_connect_signal( "minChanged(float)", "minChanged(float)" );
}

HB_FUNC_STATIC( QABSTRACT3DAXIS_ONORIENTATIONCHANGED )
{
  QAbstract3DAxisSlots_connect_signal( "orientationChanged(QAbstract3DAxis::AxisOrientation)", "orientationChanged(QAbstract3DAxis::AxisOrientation)" );
}

HB_FUNC_STATIC( QABSTRACT3DAXIS_ONRANGECHANGED )
{
  QAbstract3DAxisSlots_connect_signal( "rangeChanged(float,float)", "rangeChanged(float,float)" );
}

HB_FUNC_STATIC( QABSTRACT3DAXIS_ONTITLECHANGED )
{
  QAbstract3DAxisSlots_connect_signal( "titleChanged(QString)", "titleChanged(QString)" );
}

HB_FUNC_STATIC( QABSTRACT3DAXIS_ONTITLEFIXEDCHANGED )
{
  QAbstract3DAxisSlots_connect_signal( "titleFixedChanged(bool)", "titleFixedChanged(bool)" );
}

HB_FUNC_STATIC( QABSTRACT3DAXIS_ONTITLEVISIBILITYCHANGED )
{
  QAbstract3DAxisSlots_connect_signal( "titleVisibilityChanged(bool)", "titleVisibilityChanged(bool)" );
}

#pragma ENDDUMP
