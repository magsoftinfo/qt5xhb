/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QAccessibleTextRemoveEvent INHERIT QAccessibleTextCursorEvent

   METHOD new
   METHOD delete
   METHOD textRemoved
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleTextRemoveEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleTextRemoveEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleTextRemoveEvent>
#endif

/*
QAccessibleTextRemoveEvent(QObject *obj, int position, const QString &text)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTREMOVEEVENT_NEW )
{
  QAccessibleTextRemoveEvent * o = new QAccessibleTextRemoveEvent ( PQOBJECT(1), PINT(2), PQSTRING(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QACCESSIBLETEXTREMOVEEVENT_DELETE )
{
  QAccessibleTextRemoveEvent * obj = (QAccessibleTextRemoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString textRemoved() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTREMOVEEVENT_TEXTREMOVED )
{
  QAccessibleTextRemoveEvent * obj = (QAccessibleTextRemoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->textRemoved () );
  }
}


/*
int changePosition() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTREMOVEEVENT_CHANGEPOSITION )
{
  QAccessibleTextRemoveEvent * obj = (QAccessibleTextRemoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->changePosition () );
  }
}



#pragma ENDDUMP
