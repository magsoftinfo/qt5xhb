/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QPieLegendMarker INHERIT QLegendMarker

   METHOD new
   METHOD delete

   METHOD series
   METHOD slice
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPieLegendMarker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPieLegendMarker>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPieLegendMarker>
#endif

/*
explicit QPieLegendMarker(QPieSeries *series, QPieSlice *slice, QLegend *legend, QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QPIELEGENDMARKER_NEW )
{
  if( ISBETWEEN(3,4) && ISQPIESERIES(1) && ISQPIESLICE(2) && ISQLEGEND(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    QPieLegendMarker * o = new QPieLegendMarker ( PQPIESERIES(1), PQPIESLICE(2), PQLEGEND(3), OPQOBJECT(4,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPieLegendMarker(QPieLegendMarkerPrivate &d, QObject *parent = Q_NULLPTR) (protected)
*/

/*
virtual ~QPieLegendMarker()
*/
HB_FUNC_STATIC( QPIELEGENDMARKER_DELETE )
{
  QPieLegendMarker * obj = (QPieLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
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
virtual LegendMarkerType type()
*/
HB_FUNC_STATIC( QPIELEGENDMARKER_TYPE )
{
  QPieLegendMarker * obj = (QPieLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->type () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QPieSeries* series()
*/
HB_FUNC_STATIC( QPIELEGENDMARKER_SERIES )
{
  QPieLegendMarker * obj = (QPieLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPieSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QPIESERIES" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPieSlice* slice()
*/
HB_FUNC_STATIC( QPIELEGENDMARKER_SLICE )
{
  QPieLegendMarker * obj = (QPieLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPieSlice * ptr = obj->slice ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QPIESLICE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
