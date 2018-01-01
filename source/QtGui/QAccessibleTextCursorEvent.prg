/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QAccessibleTextCursorEvent INHERIT QAccessibleEvent

   METHOD new
   METHOD delete
   METHOD setCursorPosition
   METHOD cursorPosition

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleTextCursorEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleTextCursorEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleTextCursorEvent>
#endif

/*
QAccessibleTextCursorEvent(QObject *obj, int cursorPos)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTCURSOREVENT_NEW )
{
  QAccessibleTextCursorEvent * o = new QAccessibleTextCursorEvent ( PQOBJECT(1), PINT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QACCESSIBLETEXTCURSOREVENT_DELETE )
{
  QAccessibleTextCursorEvent * obj = (QAccessibleTextCursorEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setCursorPosition(int position)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTCURSOREVENT_SETCURSORPOSITION )
{
  QAccessibleTextCursorEvent * obj = (QAccessibleTextCursorEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCursorPosition ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int cursorPosition() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTCURSOREVENT_CURSORPOSITION )
{
  QAccessibleTextCursorEvent * obj = (QAccessibleTextCursorEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->cursorPosition () );
  }
}



#pragma ENDDUMP
