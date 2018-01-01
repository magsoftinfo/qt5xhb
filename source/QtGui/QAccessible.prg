/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessible INHERIT QObject

   METHOD queryAccessibleInterface
   METHOD updateAccessibility
   METHOD isActive
   METHOD setRootObject
   METHOD cleanup

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessible
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessible>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessible>
#endif







/*
static QAccessibleInterface *queryAccessibleInterface(QObject *)
*/
HB_FUNC_STATIC( QACCESSIBLE_QUERYACCESSIBLEINTERFACE )
{
  QAccessibleInterface * ptr = QAccessible::queryAccessibleInterface ( PQOBJECT(1) );
  _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
}



/*
static void updateAccessibility(QAccessibleEvent *event)
*/
HB_FUNC_STATIC( QACCESSIBLE_UPDATEACCESSIBILITY )
{
  QAccessibleEvent * par1 = (QAccessibleEvent *) _qt5xhb_itemGetPtr(1);
  QAccessible::updateAccessibility ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool isActive()
*/
HB_FUNC_STATIC( QACCESSIBLE_ISACTIVE )
{
  RBOOL( QAccessible::isActive () );
}


/*
static void setRootObject(QObject *object)
*/
HB_FUNC_STATIC( QACCESSIBLE_SETROOTOBJECT )
{
  QAccessible::setRootObject ( PQOBJECT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void cleanup()
*/
HB_FUNC_STATIC( QACCESSIBLE_CLEANUP )
{
  QAccessible::cleanup ();
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
