/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QSIZE
REQUEST QKEYSEQUENCE
REQUEST QBUTTONGROUP
#endif

CLASS QAbstractButton INHERIT QWidget

   METHOD delete

   METHOD animateClick
   METHOD autoExclusive
   METHOD autoRepeat
   METHOD autoRepeatDelay
   METHOD autoRepeatInterval
   METHOD click
   METHOD group
   METHOD icon
   METHOD iconSize
   METHOD isCheckable
   METHOD isChecked
   METHOD isDown
   METHOD setAutoExclusive
   METHOD setAutoRepeat
   METHOD setAutoRepeatDelay
   METHOD setAutoRepeatInterval
   METHOD setCheckable
   METHOD setChecked
   METHOD setDown
   METHOD setIcon
   METHOD setIconSize
   METHOD setShortcut
   METHOD setText
   METHOD shortcut
   METHOD text
   METHOD toggle

   METHOD onClicked
   METHOD onPressed
   METHOD onReleased
   METHOD onToggled

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractButton>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractButton>
#endif

#include <QButtonGroup>

/*
explicit QAbstractButton(QWidget *parent = Q_NULLPTR) (abstract)
*/

/*
QAbstractButton(QAbstractButtonPrivate &dd, QWidget* parent = Q_NULLPTR) (protected)
*/

/*
~QAbstractButton()
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_DELETE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString text () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_TEXT )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETTEXT )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ICON )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon () );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETICON )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQICON(1)||ISCHAR(1)) )
    {
      obj->setIcon ( ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ICONSIZE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->iconSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setIconSize ( const QSize & size ) (slot)
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETICONSIZE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->setIconSize ( *PQSIZE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QKeySequence shortcut () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SHORTCUT )
{
#ifndef QT_NO_SHORTCUT
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QKeySequence * ptr = new QKeySequence( obj->shortcut () );
      _qt5xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setShortcut ( const QKeySequence & key )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETSHORTCUT )
{
#ifndef QT_NO_SHORTCUT
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQKEYSEQUENCE(1) )
    {
      obj->setShortcut ( *PQKEYSEQUENCE(1) );
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
bool isCheckable () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ISCHECKABLE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isCheckable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCheckable ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETCHECKABLE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setCheckable ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isChecked () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ISCHECKED )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isChecked () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setChecked ( bool ) (slot)
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETCHECKED )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setChecked ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoRepeat () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOREPEAT )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->autoRepeat () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAutoRepeat ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOREPEAT )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAutoRepeat ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoExclusive () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOEXCLUSIVE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->autoExclusive () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAutoExclusive ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOEXCLUSIVE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAutoExclusive ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int autoRepeatDelay () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOREPEATDELAY )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->autoRepeatDelay () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAutoRepeatDelay ( int )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOREPEATDELAY )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAutoRepeatDelay ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int autoRepeatInterval () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOREPEATINTERVAL )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->autoRepeatInterval () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAutoRepeatInterval ( int )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOREPEATINTERVAL )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAutoRepeatInterval ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isDown () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ISDOWN )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isDown () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDown ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETDOWN )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDown ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QButtonGroup * group () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_GROUP )
{
#ifndef QT_NO_BUTTONGROUP
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QButtonGroup * ptr = obj->group ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QBUTTONGROUP" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void animateClick ( int msec = 100 ) (slot)
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ANIMATECLICK )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      obj->animateClick ( OPINT(1,100) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void click () (slot)
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_CLICK )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->click ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void toggle () (slot)
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_TOGGLE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->toggle ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void paintEvent(QPaintEvent *e) Q_DECL_OVERRIDE = 0 (protected)
*/

/*
virtual bool hitButton(const QPoint &pos) const (protected)
*/

/*
virtual void checkStateSet() (protected)
*/

/*
virtual void nextCheckState() (protected)
*/

/*
bool event(QEvent *e) Q_DECL_OVERRIDE (protected)
*/

/*
void keyPressEvent(QKeyEvent *e) Q_DECL_OVERRIDE (protected)
*/

/*
void keyReleaseEvent(QKeyEvent *e) Q_DECL_OVERRIDE (protected)
*/

/*
void mousePressEvent(QMouseEvent *e) Q_DECL_OVERRIDE (protected)
*/

/*
void mouseReleaseEvent(QMouseEvent *e) Q_DECL_OVERRIDE (protected)
*/

/*
void mouseMoveEvent(QMouseEvent *e) Q_DECL_OVERRIDE (protected)
*/

/*
void focusInEvent(QFocusEvent *e) Q_DECL_OVERRIDE (protected)
*/

/*
void focusOutEvent(QFocusEvent *e) Q_DECL_OVERRIDE (protected)
*/

/*
void changeEvent(QEvent *e) Q_DECL_OVERRIDE (protected)
*/

/*
void timerEvent(QTimerEvent *e) Q_DECL_OVERRIDE (protected)
*/

#pragma ENDDUMP
