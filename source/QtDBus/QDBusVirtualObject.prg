/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QDBusVirtualObject INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD introspect
   METHOD handleMessage

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusVirtualObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusVirtualObject>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusVirtualObject>
#endif

/*
explicit QDBusVirtualObject(QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSVIRTUALOBJECT_NEW )
{
  QDBusVirtualObject * o = new QDBusVirtualObject ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QDBUSVIRTUALOBJECT_DELETE )
{
  QDBusVirtualObject * obj = (QDBusVirtualObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString introspect(const QString &path) const = 0
*/
HB_FUNC_STATIC( QDBUSVIRTUALOBJECT_INTROSPECT )
{
  QDBusVirtualObject * obj = (QDBusVirtualObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->introspect ( PQSTRING(1) ) ) );
  }
}


/*
virtual bool handleMessage(const QDBusMessage &message, const QDBusConnection &connection) = 0
*/
HB_FUNC_STATIC( QDBUSVIRTUALOBJECT_HANDLEMESSAGE )
{
  QDBusVirtualObject * obj = (QDBusVirtualObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->handleMessage ( *PQDBUSMESSAGE(1), par2 ) ); // TODO: implementar parametro 2
  }
}



#pragma ENDDUMP
