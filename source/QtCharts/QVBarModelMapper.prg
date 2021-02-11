/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTBARSERIES
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QVBarModelMapper INHERIT QBarModelMapper

   METHOD new
   METHOD series
   METHOD setSeries
   METHOD model
   METHOD setModel
   METHOD firstBarSetColumn
   METHOD setFirstBarSetColumn
   METHOD lastBarSetColumn
   METHOD setLastBarSetColumn
   METHOD firstRow
   METHOD setFirstRow
   METHOD rowCount
   METHOD setRowCount

   METHOD onFirstBarSetColumnChanged
   METHOD onFirstRowChanged
   METHOD onLastBarSetColumnChanged
   METHOD onModelReplaced
   METHOD onRowCountChanged
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVBarModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QVBarModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QVBarModelMapper>
#endif
#endif

#include <QtCharts/QAbstractBarSeries>
#include <QtCore/QAbstractItemModel>

using namespace QtCharts;

/*
explicit QVBarModelMapper(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QVBARMODELMAPPER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QVBarModelMapper * obj = new QVBarModelMapper( OPQOBJECT(1,Q_NULLPTR) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QAbstractBarSeries *series() const
*/
HB_FUNC_STATIC( QVBARMODELMAPPER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapper * obj = (QVBarModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractBarSeries * ptr = obj->series();
      Qt5xHb::createReturnQObjectClass( ptr, "QABSTRACTBARSERIES" );
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
void setSeries(QAbstractBarSeries *series)
*/
HB_FUNC_STATIC( QVBARMODELMAPPER_SETSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapper * obj = (QVBarModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTBARSERIES(1) )
    {
#endif
      obj->setSeries( PQABSTRACTBARSERIES(1) );
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
QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QVBARMODELMAPPER_MODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapper * obj = (QVBarModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractItemModel * ptr = obj->model();
      Qt5xHb::createReturnQObjectClass( ptr, "QABSTRACTITEMMODEL" );
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
void setModel(QAbstractItemModel *model)
*/
HB_FUNC_STATIC( QVBARMODELMAPPER_SETMODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapper * obj = (QVBarModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
#endif
      obj->setModel( PQABSTRACTITEMMODEL(1) );
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
int firstBarSetColumn() const
*/
HB_FUNC_STATIC( QVBARMODELMAPPER_FIRSTBARSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapper * obj = (QVBarModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->firstBarSetColumn() );
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
void setFirstBarSetColumn(int firstBarSetColumn)
*/
HB_FUNC_STATIC( QVBARMODELMAPPER_SETFIRSTBARSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapper * obj = (QVBarModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFirstBarSetColumn( PINT(1) );
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
int lastBarSetColumn() const
*/
HB_FUNC_STATIC( QVBARMODELMAPPER_LASTBARSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapper * obj = (QVBarModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->lastBarSetColumn() );
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
void setLastBarSetColumn(int lastBarSetColumn)
*/
HB_FUNC_STATIC( QVBARMODELMAPPER_SETLASTBARSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapper * obj = (QVBarModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLastBarSetColumn( PINT(1) );
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
int firstRow() const
*/
HB_FUNC_STATIC( QVBARMODELMAPPER_FIRSTROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapper * obj = (QVBarModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->firstRow() );
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
void setFirstRow(int firstRow)
*/
HB_FUNC_STATIC( QVBARMODELMAPPER_SETFIRSTROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapper * obj = (QVBarModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFirstRow( PINT(1) );
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
int rowCount() const
*/
HB_FUNC_STATIC( QVBARMODELMAPPER_ROWCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapper * obj = (QVBarModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rowCount() );
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
void setRowCount(int rowCount)
*/
HB_FUNC_STATIC( QVBARMODELMAPPER_SETROWCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapper * obj = (QVBarModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setRowCount( PINT(1) );
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

void QVBarModelMapperSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QVBARMODELMAPPER_ONFIRSTBARSETCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapperSlots_connect_signal( "firstBarSetColumnChanged()", "firstBarSetColumnChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVBARMODELMAPPER_ONFIRSTROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapperSlots_connect_signal( "firstRowChanged()", "firstRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVBARMODELMAPPER_ONLASTBARSETCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapperSlots_connect_signal( "lastBarSetColumnChanged()", "lastBarSetColumnChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVBARMODELMAPPER_ONMODELREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapperSlots_connect_signal( "modelReplaced()", "modelReplaced()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVBARMODELMAPPER_ONROWCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapperSlots_connect_signal( "rowCountChanged()", "rowCountChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVBARMODELMAPPER_ONSERIESREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVBarModelMapperSlots_connect_signal( "seriesReplaced()", "seriesReplaced()" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
