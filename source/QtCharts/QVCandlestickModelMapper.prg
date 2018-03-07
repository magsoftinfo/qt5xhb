/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QVCandlestickModelMapper INHERIT QCandlestickModelMapper

   METHOD new
   METHOD delete

   METHOD closeRow
   METHOD firstSetColumn
   METHOD highRow
   METHOD lastSetColumn
   METHOD lowRow
   METHOD openRow
   METHOD orientation
   METHOD setCloseRow
   METHOD setFirstSetColumn
   METHOD setHighRow
   METHOD setLastSetColumn
   METHOD setLowRow
   METHOD setOpenRow
   METHOD setTimestampRow
   METHOD timestampRow

   METHOD onCloseRowChanged
   METHOD onFirstSetColumnChanged
   METHOD onHighRowChanged
   METHOD onLastSetColumnChanged
   METHOD onLowRowChanged
   METHOD onOpenRowChanged
   METHOD onTimestampRowChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVCandlestickModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QVCandlestickModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QVCandlestickModelMapper>
#endif
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

/*
explicit QVCandlestickModelMapper(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QVCandlestickModelMapper * o = new QVCandlestickModelMapper ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
int timestampRow() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_TIMESTAMPROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->timestampRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setTimestampRow(int timestampRow)
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETTIMESTAMPROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTimestampRow ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int openRow() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_OPENROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->openRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setOpenRow(int openRow)
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETOPENROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setOpenRow ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int highRow() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_HIGHROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->highRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setHighRow(int highRow)
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETHIGHROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setHighRow ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int lowRow() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_LOWROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lowRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLowRow(int lowRow)
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETLOWROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLowRow ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int closeRow() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_CLOSEROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->closeRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setCloseRow(int closeRow)
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETCLOSEROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCloseRow ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int firstSetColumn() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_FIRSTSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->firstSetColumn () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setFirstSetColumn(int firstSetColumn)
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETFIRSTSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFirstSetColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int lastSetColumn() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_LASTSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lastSetColumn () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLastSetColumn(int lastSetColumn)
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETLASTSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLastSetColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->orientation () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

void QVCandlestickModelMapperSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONCLOSEROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "closeRowChanged()", "closeRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONFIRSTSETCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "firstSetColumnChanged()", "firstSetColumnChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONHIGHROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "highRowChanged()", "highRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONLASTSETCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "lastSetColumnChanged()", "lastSetColumnChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONLOWROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "lowRowChanged()", "lowRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONOPENROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "openRowChanged()", "openRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONTIMESTAMPROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "timestampRowChanged()", "timestampRowChanged()" );
#else
  hb_retl( false );
#endif
}


#pragma ENDDUMP
