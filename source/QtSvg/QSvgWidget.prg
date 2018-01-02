/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content is created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSVGRENDERER
REQUEST QSIZE
#endif

CLASS QSvgWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD renderer
   METHOD sizeHint
   METHOD load

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSvgWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSvgWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSvgWidget>
#endif

#include <QSvgRenderer>

/*
QSvgWidget ( QWidget * parent = 0 )
*/
void QSvgWidget_new1 ()
{
  QSvgWidget * o = new QSvgWidget ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSvgWidget ( const QString & file, QWidget * parent = 0 )
*/
void QSvgWidget_new2 ()
{
  QSvgWidget * o = new QSvgWidget ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QSvgWidget ( QWidget * parent = 0 )
//[2]QSvgWidget ( const QString & file, QWidget * parent = 0 )

HB_FUNC_STATIC( QSVGWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QSvgWidget_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QSvgWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSVGWIDGET_DELETE )
{
  QSvgWidget * obj = (QSvgWidget *) _qt5xhb_itemGetPtrStackSelfItem();

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
QSvgRenderer * renderer () const
*/
HB_FUNC_STATIC( QSVGWIDGET_RENDERER )
{
  QSvgWidget * obj = (QSvgWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSvgRenderer * ptr = obj->renderer ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QSVGRENDERER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSVGWIDGET_SIZEHINT )
{
  QSvgWidget * obj = (QSvgWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->sizeHint () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void load ( const QString & file )
*/
void QSvgWidget_load1 ()
{
  QSvgWidget * obj = (QSvgWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->load ( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void load ( const QByteArray & contents )
*/
void QSvgWidget_load2 ()
{
  QSvgWidget * obj = (QSvgWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->load ( *PQBYTEARRAY(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void load ( const QString & file )
//[2]void load ( const QByteArray & contents )

HB_FUNC_STATIC( QSVGWIDGET_LOAD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSvgWidget_load1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QSvgWidget_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
