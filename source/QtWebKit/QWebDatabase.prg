/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBSECURITYORIGIN
#endif

CLASS QWebDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD displayName
   METHOD expectedSize
   METHOD fileName
   METHOD name
   METHOD origin
   METHOD size
   METHOD removeAllDatabases
   METHOD removeDatabase

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebDatabase>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWebDatabase>
#endif

#include <QWebSecurityOrigin>

/*
QWebDatabase ( const QWebDatabase & other )
*/
HB_FUNC_STATIC( QWEBDATABASE_NEW )
{
  QWebDatabase * o = new QWebDatabase ( *PQWEBDATABASE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


HB_FUNC_STATIC( QWEBDATABASE_DELETE )
{
  QWebDatabase * obj = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString displayName () const
*/
HB_FUNC_STATIC( QWEBDATABASE_DISPLAYNAME )
{
  QWebDatabase * obj = (QWebDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->displayName () ) );
  }
}


/*
qint64 expectedSize () const
*/
HB_FUNC_STATIC( QWEBDATABASE_EXPECTEDSIZE )
{
  QWebDatabase * obj = (QWebDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->expectedSize () );
  }
}


/*
QString fileName () const
*/
HB_FUNC_STATIC( QWEBDATABASE_FILENAME )
{
  QWebDatabase * obj = (QWebDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->fileName () ) );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QWEBDATABASE_NAME )
{
  QWebDatabase * obj = (QWebDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->name () ) );
  }
}


/*
QWebSecurityOrigin origin () const
*/
HB_FUNC_STATIC( QWEBDATABASE_ORIGIN )
{
  QWebDatabase * obj = (QWebDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebSecurityOrigin * ptr = new QWebSecurityOrigin( obj->origin () );
    _qt5xhb_createReturnClass ( ptr, "QWEBSECURITYORIGIN", true );
  }
}


/*
qint64 size () const
*/
HB_FUNC_STATIC( QWEBDATABASE_SIZE )
{
  QWebDatabase * obj = (QWebDatabase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->size () );
  }
}


/*
static void removeAllDatabases ()
*/
HB_FUNC_STATIC( QWEBDATABASE_REMOVEALLDATABASES )
{
  QWebDatabase::removeAllDatabases ();
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void removeDatabase ( const QWebDatabase & db )
*/
HB_FUNC_STATIC( QWEBDATABASE_REMOVEDATABASE )
{
  QWebDatabase::removeDatabase ( *PQWEBDATABASE(1) );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QWEBDATABASE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QWEBDATABASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QWEBDATABASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QWEBDATABASE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBDATABASE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
