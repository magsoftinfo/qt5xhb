/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QHBarModelMapper INHERIT QBarModelMapper

   METHOD new
   //METHOD delete

   METHOD columnCount
   METHOD firstBarSetRow
   METHOD firstColumn
   METHOD lastBarSetRow
   METHOD model
   METHOD series
   METHOD setColumnCount
   METHOD setFirstBarSetRow
   METHOD setFirstColumn
   METHOD setLastBarSetRow
   METHOD setModel
   METHOD setSeries

   METHOD onColumnCountChanged
   METHOD onFirstBarSetRowChanged
   METHOD onFirstColumnChanged
   METHOD onLastBarSetRowChanged
   METHOD onModelReplaced
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHBarModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHBarModelMapper>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHBarModelMapper>
#endif

/*
explicit QHBarModelMapper(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QHBARMODELMAPPER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QHBarModelMapper * o = new QHBarModelMapper ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractBarSeries *series() const
*/
HB_FUNC_STATIC( QHBARMODELMAPPER_SERIES )
{
  QHBarModelMapper * obj = (QHBarModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractBarSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTBARSERIES" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSeries(QAbstractBarSeries *series)
*/
HB_FUNC_STATIC( QHBARMODELMAPPER_SETSERIES )
{
  QHBarModelMapper * obj = (QHBarModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTBARSERIES(1) )
    {
      obj->setSeries ( PQABSTRACTBARSERIES(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QHBARMODELMAPPER_MODEL )
{
  QHBarModelMapper * obj = (QHBarModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractItemModel * ptr = obj->model ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMMODEL" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setModel(QAbstractItemModel *model)
*/
HB_FUNC_STATIC( QHBARMODELMAPPER_SETMODEL )
{
  QHBarModelMapper * obj = (QHBarModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
      obj->setModel ( PQABSTRACTITEMMODEL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int firstBarSetRow() const
*/
HB_FUNC_STATIC( QHBARMODELMAPPER_FIRSTBARSETROW )
{
  QHBarModelMapper * obj = (QHBarModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->firstBarSetRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFirstBarSetRow(int firstBarSetRow)
*/
HB_FUNC_STATIC( QHBARMODELMAPPER_SETFIRSTBARSETROW )
{
  QHBarModelMapper * obj = (QHBarModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFirstBarSetRow ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int lastBarSetRow() const
*/
HB_FUNC_STATIC( QHBARMODELMAPPER_LASTBARSETROW )
{
  QHBarModelMapper * obj = (QHBarModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lastBarSetRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLastBarSetRow(int lastBarSetRow)
*/
HB_FUNC_STATIC( QHBARMODELMAPPER_SETLASTBARSETROW )
{
  QHBarModelMapper * obj = (QHBarModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLastBarSetRow ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int firstColumn() const
*/
HB_FUNC_STATIC( QHBARMODELMAPPER_FIRSTCOLUMN )
{
  QHBarModelMapper * obj = (QHBarModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->firstColumn () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFirstColumn(int firstColumn)
*/
HB_FUNC_STATIC( QHBARMODELMAPPER_SETFIRSTCOLUMN )
{
  QHBarModelMapper * obj = (QHBarModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFirstColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int columnCount() const
*/
HB_FUNC_STATIC( QHBARMODELMAPPER_COLUMNCOUNT )
{
  QHBarModelMapper * obj = (QHBarModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->columnCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setColumnCount(int columnCount)
*/
HB_FUNC_STATIC( QHBARMODELMAPPER_SETCOLUMNCOUNT )
{
  QHBarModelMapper * obj = (QHBarModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setColumnCount ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
