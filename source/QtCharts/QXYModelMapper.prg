/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QXYModelMapper INHERIT QObject

   METHOD new
   METHOD delete

   METHOD count
   METHOD first
   METHOD model
   METHOD orientation
   METHOD series
   METHOD setCount
   METHOD setFirst
   METHOD setModel
   METHOD setOrientation
   METHOD setSeries
   METHOD setXSection
   METHOD setYSection
   METHOD xSection
   METHOD ySection

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXYModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXYModelMapper>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXYModelMapper>
#endif

/*
explicit QXYModelMapper(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QXYMODELMAPPER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QXYModelMapper * o = new QXYModelMapper ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QXYMODELMAPPER_MODEL )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QXYMODELMAPPER_SETMODEL )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

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
QXYSeries *series() const
*/
HB_FUNC_STATIC( QXYMODELMAPPER_SERIES )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QXYSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QXYSERIES" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSeries(QXYSeries *series)
*/
HB_FUNC_STATIC( QXYMODELMAPPER_SETSERIES )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXYSERIES(1) )
    {
      obj->setSeries ( PQXYSERIES(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int first() const
*/
HB_FUNC_STATIC( QXYMODELMAPPER_FIRST )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->first () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFirst(int first)
*/
HB_FUNC_STATIC( QXYMODELMAPPER_SETFIRST )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFirst ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int count() const
*/
HB_FUNC_STATIC( QXYMODELMAPPER_COUNT )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->count () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCount(int count)
*/
HB_FUNC_STATIC( QXYMODELMAPPER_SETCOUNT )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setCount ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QXYMODELMAPPER_ORIENTATION )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

/*
void setOrientation(Qt::Orientation orientation)
*/
HB_FUNC_STATIC( QXYMODELMAPPER_SETORIENTATION )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setOrientation ( (Qt::Orientation) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int xSection() const
*/
HB_FUNC_STATIC( QXYMODELMAPPER_XSECTION )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->xSection () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setXSection(int xSection)
*/
HB_FUNC_STATIC( QXYMODELMAPPER_SETXSECTION )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setXSection ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int ySection() const
*/
HB_FUNC_STATIC( QXYMODELMAPPER_YSECTION )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->ySection () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setYSection(int ySection)
*/
HB_FUNC_STATIC( QXYMODELMAPPER_SETYSECTION )
{
  QXYModelMapper * obj = (QXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setYSection ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
