/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTBUTTON
REQUEST QCHECKBOX
REQUEST QPIXMAP
REQUEST QPUSHBUTTON
#endif

CLASS QMessageBox INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD addButton
   METHOD button
   METHOD buttonRole
   METHOD buttons
   METHOD clickedButton
   METHOD defaultButton
   METHOD detailedText
   METHOD setDetailedText
   METHOD escapeButton
   METHOD icon
   METHOD setIcon
   METHOD iconPixmap
   METHOD setIconPixmap
   METHOD informativeText
   METHOD setInformativeText
   METHOD open
   METHOD removeButton
   METHOD setDefaultButton
   METHOD setEscapeButton
   METHOD setWindowModality
   METHOD setWindowTitle
   METHOD standardButton
   METHOD standardButtons
   METHOD setStandardButtons
   METHOD text
   METHOD setText
   METHOD textFormat
   METHOD setTextFormat
   METHOD setVisible
   METHOD exec
   METHOD about
   METHOD aboutQt
   METHOD critical
   METHOD information
   METHOD question
   METHOD warning
   METHOD textInteractionFlags
   METHOD setTextInteractionFlags
   METHOD checkBox
   METHOD setCheckBox
   METHOD standardIcon
   METHOD buttonText
   METHOD setButtonText

   METHOD onButtonClicked

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMessageBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QMessageBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QMessageBox>
#endif

#include <QtWidgets/QPushButton>
#include <QtWidgets/QAbstractButton>
#include <QtWidgets/QCheckBox>

/*
QMessageBox( QWidget * parent = 0 )
*/
void QMessageBox_new1()
{
  QMessageBox * obj = new QMessageBox( OPQWIDGET(1,0) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QMessageBox( QMessageBox::Icon icon, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )
*/
void QMessageBox_new2()
{
  QMessageBox * obj = new QMessageBox( (QMessageBox::Icon) hb_parni(1), PQSTRING(2), PQSTRING(3), HB_ISNIL(4)? (QMessageBox::StandardButtons) QMessageBox::NoButton : (QMessageBox::StandardButtons) hb_parni(4), OPQWIDGET(5,0), HB_ISNIL(6)? (Qt::WindowFlags) Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint : (Qt::WindowFlags) hb_parni(6) );
  Qt5xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QMESSAGEBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||HB_ISNIL(1)) )
  {
    QMessageBox_new1();
  }
  else if( ISBETWEEN(3,6) && HB_ISNUM(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && (ISNUM(4)||HB_ISNIL(4)) && (ISQWIDGET(5)||HB_ISNIL(5)) && (ISNUM(6)||HB_ISNIL(6)) )
  {
    QMessageBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMESSAGEBOX_DELETE )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
void addButton( QAbstractButton * button, QMessageBox::ButtonRole role )
*/
void QMessageBox_addButton1()
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addButton( PQABSTRACTBUTTON(1), (QMessageBox::ButtonRole) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPushButton * addButton( const QString & text, QMessageBox::ButtonRole role )
*/
void QMessageBox_addButton2()
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPushButton * ptr = obj->addButton( PQSTRING(1), (QMessageBox::ButtonRole) hb_parni(2) );
    Qt5xHb::createReturnQWidgetClass( ptr, "QPUSHBUTTON" );
  }
}

/*
QPushButton * addButton( QMessageBox::StandardButton button )
*/
void QMessageBox_addButton3()
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPushButton * ptr = obj->addButton( (QMessageBox::StandardButton) hb_parni(1) );
    Qt5xHb::createReturnQWidgetClass( ptr, "QPUSHBUTTON" );
  }
}

HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON )
{
  if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && HB_ISNUM(2) )
  {
    QMessageBox_addButton1();
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
  {
    QMessageBox_addButton2();
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) )
  {
    QMessageBox_addButton3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractButton * button( QMessageBox::StandardButton which ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTON )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QAbstractButton * ptr = obj->button( (QMessageBox::StandardButton) hb_parni(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QABSTRACTBUTTON" );
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
QMessageBox::ButtonRole buttonRole( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONROLE )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
    {
#endif
      RENUM( obj->buttonRole( PQABSTRACTBUTTON(1) ) );
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
QList<QAbstractButton *> buttons() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONS )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAbstractButton *> list = obj->buttons();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTBUTTON" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QAbstractButton *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QABSTRACTBUTTON", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
QAbstractButton * clickedButton() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_CLICKEDBUTTON )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractButton * ptr = obj->clickedButton();
      Qt5xHb::createReturnQWidgetClass( ptr, "QABSTRACTBUTTON" );
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
QPushButton * defaultButton() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_DEFAULTBUTTON )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPushButton * ptr = obj->defaultButton();
      Qt5xHb::createReturnQWidgetClass( ptr, "QPUSHBUTTON" );
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
QString detailedText () const
*/
HB_FUNC_STATIC( QMESSAGEBOX_DETAILEDTEXT )
{
#ifndef QT_NO_TEXTEDIT
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->detailedText() );
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
void setDetailedText ( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETDETAILEDTEXT )
{
#ifndef QT_NO_TEXTEDIT
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setDetailedText( PQSTRING(1) );
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
QAbstractButton * escapeButton() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ESCAPEBUTTON )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractButton * ptr = obj->escapeButton();
      Qt5xHb::createReturnQWidgetClass( ptr, "QABSTRACTBUTTON" );
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
QMessageBox::Icon icon() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ICON )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->icon() );
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
void setIcon( QMessageBox::Icon )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETICON )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setIcon( (QMessageBox::Icon) hb_parni(1) );
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
QPixmap iconPixmap() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_ICONPIXMAP )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->iconPixmap() );
      Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
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
void setIconPixmap( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETICONPIXMAP )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIXMAP(1) )
    {
#endif
      obj->setIconPixmap( *PQPIXMAP(1) );
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
QString informativeText() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_INFORMATIVETEXT )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->informativeText() );
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
void setInformativeText( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETINFORMATIVETEXT )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setInformativeText( PQSTRING(1) );
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
void open( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QMESSAGEBOX_OPEN )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2) )
    {
#endif
      obj->open( PQOBJECT(1), PCONSTCHAR(2) );
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
void removeButton( QAbstractButton * button )
*/
HB_FUNC_STATIC( QMESSAGEBOX_REMOVEBUTTON )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
    {
#endif
      obj->removeButton( PQABSTRACTBUTTON(1) );
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
void setDefaultButton( QPushButton * button )
*/
void QMessageBox_setDefaultButton1()
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDefaultButton( PQPUSHBUTTON(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultButton( QMessageBox::StandardButton button )
*/
void QMessageBox_setDefaultButton2()
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDefaultButton( (QMessageBox::StandardButton) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON )
{
  if( ISNUMPAR(1) && ISQPUSHBUTTON(1) )
  {
    QMessageBox_setDefaultButton1();
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    QMessageBox_setDefaultButton2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setEscapeButton( QAbstractButton * button )
*/
void QMessageBox_setEscapeButton1()
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setEscapeButton( PQABSTRACTBUTTON(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEscapeButton( QMessageBox::StandardButton button )
*/
void QMessageBox_setEscapeButton2()
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setEscapeButton( (QMessageBox::StandardButton) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    QMessageBox_setEscapeButton1();
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    QMessageBox_setEscapeButton2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setWindowModality( Qt::WindowModality windowModality )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETWINDOWMODALITY )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setWindowModality( (Qt::WindowModality) hb_parni(1) );
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
void setWindowTitle( const QString & title )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETWINDOWTITLE )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setWindowTitle( PQSTRING(1) );
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
QMessageBox::StandardButton standardButton( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDBUTTON )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
    {
#endif
      RENUM( obj->standardButton( PQABSTRACTBUTTON(1) ) );
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
QMessageBox::StandardButtons standardButtons() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDBUTTONS )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->standardButtons() );
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
void setStandardButtons( QMessageBox::StandardButtons buttons )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETSTANDARDBUTTONS )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setStandardButtons( (QMessageBox::StandardButtons) hb_parni(1) );
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
QString text() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXT )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->text() );
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
void setText( const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETTEXT )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setText( PQSTRING(1) );
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
Qt::TextFormat textFormat() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXTFORMAT )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->textFormat() );
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
void setTextFormat( Qt::TextFormat format )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETTEXTFORMAT )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTextFormat( (Qt::TextFormat) hb_parni(1) );
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
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETVISIBLE )
{
#ifdef Q_OS_WINCE
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
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
int exec()
*/
HB_FUNC_STATIC( QMESSAGEBOX_EXEC )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->exec() );
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
static void about( QWidget * parent, const QString & title, const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ABOUT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(3) && ISQWIDGET(1) && HB_ISCHAR(2) && HB_ISCHAR(3) )
  {
#endif
    QMessageBox::about( PQWIDGET(1), PQSTRING(2), PQSTRING(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void aboutQt( QWidget * parent, const QString & title = QString() )
*/
HB_FUNC_STATIC( QMESSAGEBOX_ABOUTQT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,2) && ISQWIDGET(1) && (ISCHAR(2)||HB_ISNIL(2)) )
  {
#endif
    QMessageBox::aboutQt( PQWIDGET(1), OPQSTRING(2,QString()) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QMessageBox::StandardButton critical( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_CRITICAL )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(3,5) && ISQWIDGET(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && (ISNUM(4)||HB_ISNIL(4)) && (ISNUM(5)||HB_ISNIL(5)) )
  {
#endif
    RENUM( QMessageBox::critical( PQWIDGET(1), PQSTRING(2), PQSTRING(3), HB_ISNIL(4)? (QMessageBox::StandardButtons) QMessageBox::Ok : (QMessageBox::StandardButtons) hb_parni(4), HB_ISNIL(5)? (QMessageBox::StandardButton) QMessageBox::NoButton : (QMessageBox::StandardButton) hb_parni(5) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QMessageBox::StandardButton information( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_INFORMATION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(3,5) && ISQWIDGET(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && (ISNUM(4)||HB_ISNIL(4)) && (ISNUM(5)||HB_ISNIL(5)) )
  {
#endif
    RENUM( QMessageBox::information( PQWIDGET(1), PQSTRING(2), PQSTRING(3), HB_ISNIL(4)? (QMessageBox::StandardButtons) QMessageBox::Ok : (QMessageBox::StandardButtons) hb_parni(4), HB_ISNIL(5)? (QMessageBox::StandardButton) QMessageBox::NoButton : (QMessageBox::StandardButton) hb_parni(5) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QMessageBox::StandardButton question( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_QUESTION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(3,5) && ISQWIDGET(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && (ISNUM(4)||HB_ISNIL(4)) && (ISNUM(5)||HB_ISNIL(5)) )
  {
#endif
    RENUM( QMessageBox::question( PQWIDGET(1), PQSTRING(2), PQSTRING(3), HB_ISNIL(4)? (QMessageBox::StandardButtons) QMessageBox::Ok : (QMessageBox::StandardButtons) hb_parni(4), HB_ISNIL(5)? (QMessageBox::StandardButton) QMessageBox::NoButton : (QMessageBox::StandardButton) hb_parni(5) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QMessageBox::StandardButton warning( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )
*/
HB_FUNC_STATIC( QMESSAGEBOX_WARNING )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(3,5) && ISQWIDGET(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && (ISNUM(4)||HB_ISNIL(4)) && (ISNUM(5)||HB_ISNIL(5)) )
  {
#endif
    RENUM( QMessageBox::warning( PQWIDGET(1), PQSTRING(2), PQSTRING(3), HB_ISNIL(4)? (QMessageBox::StandardButtons) QMessageBox::Ok : (QMessageBox::StandardButtons) hb_parni(4), HB_ISNIL(5)? (QMessageBox::StandardButton) QMessageBox::NoButton : (QMessageBox::StandardButton) hb_parni(5) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
Qt::TextInteractionFlags textInteractionFlags() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_TEXTINTERACTIONFLAGS )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->textInteractionFlags() );
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
void setTextInteractionFlags( Qt::TextInteractionFlags flags )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETTEXTINTERACTIONFLAGS )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTextInteractionFlags( (Qt::TextInteractionFlags) hb_parni(1) );
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
QCheckBox * checkBox() const
*/
HB_FUNC_STATIC( QMESSAGEBOX_CHECKBOX )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCheckBox * ptr = obj->checkBox();
      Qt5xHb::createReturnQWidgetClass( ptr, "QCHECKBOX" );
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
void setCheckBox( QCheckBox * cb )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETCHECKBOX )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCHECKBOX(1) )
    {
#endif
      obj->setCheckBox( PQCHECKBOX(1) );
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
static QPixmap standardIcon( QMessageBox::Icon icon )
*/
HB_FUNC_STATIC( QMESSAGEBOX_STANDARDICON )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    QPixmap * ptr = new QPixmap( QMessageBox::standardIcon( (QMessageBox::Icon) hb_parni(1) ) );
    Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QString buttonText( int button ) const
*/
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONTEXT )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->buttonText( PINT(1) ) );
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
void setButtonText( int button, const QString & text )
*/
HB_FUNC_STATIC( QMESSAGEBOX_SETBUTTONTEXT )
{
  QMessageBox * obj = (QMessageBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      obj->setButtonText( PINT(1), PQSTRING(2) );
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

void QMessageBoxSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMESSAGEBOX_ONBUTTONCLICKED )
{
  QMessageBoxSlots_connect_signal( "buttonClicked(QAbstractButton*)", "buttonClicked(QAbstractButton*)" );
}

#pragma ENDDUMP
