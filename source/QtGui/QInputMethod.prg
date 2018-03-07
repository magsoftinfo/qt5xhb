/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTRANSFORM
REQUEST QLOCALE
#endif

CLASS QInputMethod INHERIT QObject

   METHOD cursorRectangle
   METHOD inputDirection
   METHOD inputItemTransform
   METHOD isAnimating
   METHOD isVisible
   METHOD keyboardRectangle
   METHOD locale
   METHOD setInputItemTransform
   METHOD setVisible
   METHOD commit
   METHOD hide
   METHOD invokeAction
   METHOD reset
   METHOD show
   METHOD update

   METHOD onAnimatingChanged
   METHOD onCursorRectangleChanged
   METHOD onInputDirectionChanged
   METHOD onKeyboardRectangleChanged
   METHOD onLocaleChanged
   METHOD onVisibleChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInputMethod
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QInputMethod>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QInputMethod>
#endif

#include <QRectF>
#include <QTransform>
#include <QLocale>

/*
QRectF cursorRectangle() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_CURSORRECTANGLE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRectF * ptr = new QRectF( obj->cursorRectangle () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::LayoutDirection inputDirection() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_INPUTDIRECTION )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->inputDirection () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTransform inputItemTransform() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_INPUTITEMTRANSFORM )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QTransform * ptr = new QTransform( obj->inputItemTransform () );
      _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isAnimating() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_ISANIMATING )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isAnimating () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isVisible() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_ISVISIBLE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRectF keyboardRectangle() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_KEYBOARDRECTANGLE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRectF * ptr = new QRectF( obj->keyboardRectangle () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_LOCALE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QLocale * ptr = new QLocale( obj->locale () );
      _qt5xhb_createReturnClass ( ptr, "QLOCALE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setInputItemTransform(const QTransform & transform)
*/
HB_FUNC_STATIC( QINPUTMETHOD_SETINPUTITEMTRANSFORM )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQTRANSFORM(1) )
    {
      obj->setInputItemTransform ( *PQTRANSFORM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QINPUTMETHOD_SETVISIBLE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void commit()
*/
HB_FUNC_STATIC( QINPUTMETHOD_COMMIT )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->commit ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void hide()
*/
HB_FUNC_STATIC( QINPUTMETHOD_HIDE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->hide ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void invokeAction(Action a, int cursorPosition)
*/
HB_FUNC_STATIC( QINPUTMETHOD_INVOKEACTION )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->invokeAction ( (QInputMethod::Action) hb_parni(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void reset()
*/
HB_FUNC_STATIC( QINPUTMETHOD_RESET )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->reset ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void show()
*/
HB_FUNC_STATIC( QINPUTMETHOD_SHOW )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->show ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update(Qt::InputMethodQueries queries)
*/
HB_FUNC_STATIC( QINPUTMETHOD_UPDATE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->update ( (Qt::InputMethodQueries) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QInputMethodSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QINPUTMETHOD_ONANIMATINGCHANGED )
{
  QInputMethodSlots_connect_signal( "animatingChanged()", "animatingChanged()" );
}

HB_FUNC_STATIC( QINPUTMETHOD_ONCURSORRECTANGLECHANGED )
{
  QInputMethodSlots_connect_signal( "cursorRectangleChanged()", "cursorRectangleChanged()" );
}

HB_FUNC_STATIC( QINPUTMETHOD_ONINPUTDIRECTIONCHANGED )
{
  QInputMethodSlots_connect_signal( "inputDirectionChanged(Qt::LayoutDirection)", "inputDirectionChanged(Qt::LayoutDirection)" );
}

HB_FUNC_STATIC( QINPUTMETHOD_ONKEYBOARDRECTANGLECHANGED )
{
  QInputMethodSlots_connect_signal( "keyboardRectangleChanged()", "keyboardRectangleChanged()" );
}

HB_FUNC_STATIC( QINPUTMETHOD_ONLOCALECHANGED )
{
  QInputMethodSlots_connect_signal( "localeChanged()", "localeChanged()" );
}

HB_FUNC_STATIC( QINPUTMETHOD_ONVISIBLECHANGED )
{
  QInputMethodSlots_connect_signal( "visibleChanged()", "visibleChanged()" );
}


#pragma ENDDUMP
