/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionTab INHERIT QStyleOption

   METHOD new

   METHOD shape
   METHOD text
   METHOD icon
   METHOD row
   METHOD position
   METHOD selectedPosition
   METHOD cornerWidgets
   METHOD iconSize
   METHOD documentMode
   METHOD leftButtonSize
   METHOD rightButtonSize
   METHOD features

   METHOD setShape
   METHOD setText
   METHOD setIcon
   METHOD setRow
   METHOD setPosition
   METHOD setSelectedPosition
   METHOD setCornerWidgets
   METHOD setIconSize
   METHOD setDocumentMode
   METHOD setLeftButtonSize
   METHOD setRightButtonSize
   METHOD setFeatures

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionTab
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionTab>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionTab>
#endif

/*
QStyleOptionTab()
*/
void QStyleOptionTab_new1 ()
{
  QStyleOptionTab * o = new QStyleOptionTab ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionTab(const QStyleOptionTab &other)
*/
void QStyleOptionTab_new2 ()
{
  QStyleOptionTab * o = new QStyleOptionTab ( *PQSTYLEOPTIONTAB(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionTab(int version) (protected)
*/

//[1]QStyleOptionTab()
//[2]QStyleOptionTab(const QStyleOptionTab &other)
//[3]QStyleOptionTab(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONTAB_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionTab_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTAB(1) )
  {
    QStyleOptionTab_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTabBar::Shape shape
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SHAPE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->shape );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETSHAPE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->shape = (QTabBar::Shape) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_TEXT )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETTEXT )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->text = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_ICON )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETICON )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->icon = *PQICON(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int row
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_ROW )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->row );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETROW )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->row = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
TabPosition position
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_POSITION )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->position );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETPOSITION )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->position = (QStyleOptionTab::TabPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
SelectedPosition selectedPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SELECTEDPOSITION )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->selectedPosition );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETSELECTEDPOSITION )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->selectedPosition = (QStyleOptionTab::SelectedPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
CornerWidgets cornerWidgets
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_CORNERWIDGETS )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->cornerWidgets );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETCORNERWIDGETS )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->cornerWidgets = (QStyleOptionTab::CornerWidgets) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize iconSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_ICONSIZE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->iconSize );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETICONSIZE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->iconSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool documentMode
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_DOCUMENTMODE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->documentMode );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETDOCUMENTMODE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->documentMode = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize leftButtonSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_LEFTBUTTONSIZE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->leftButtonSize );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETLEFTBUTTONSIZE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->leftButtonSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize rightButtonSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_RIGHTBUTTONSIZE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->rightButtonSize );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETRIGHTBUTTONSIZE )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->rightButtonSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
TabFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONTAB_FEATURES )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->features );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTAB_SETFEATURES )
{
  QStyleOptionTab * obj = (QStyleOptionTab *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->features = (QStyleOptionTab::TabFeatures) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP