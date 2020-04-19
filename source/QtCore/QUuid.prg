/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QUuid

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD toByteArray
   METHOD toRfc4122
   METHOD toString
   METHOD variant
   METHOD version
   METHOD createUuidV3
   METHOD createUuidV5
   METHOD fromRfc4122

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QUuid
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QUuid>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QUuid>
#endif

/*
QUuid()
*/
void QUuid_new1()
{
  QUuid * o = new QUuid();
  Qt5xHb::returnNewObject( o, true );
}

/*
QUuid(const QByteArray & text)
*/
void QUuid_new2()
{
  QUuid * o = new QUuid( *PQBYTEARRAY(1) );
  Qt5xHb::returnNewObject( o, true );
}

/*
QUuid(const GUID & guid)
*/

/*
[1]QUuid()
[2]QUuid(const QByteArray & text)
[3]QUuid(const GUID & guid) // TODO: implementar metodo
*/

HB_FUNC_STATIC( QUUID_NEW )
{
  if( ISNUMPAR(0) )
  {
    QUuid_new1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QUuid_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QUUID_DELETE )
{
  QUuid * obj = (QUuid *) Qt5xHb::itemGetPtrStackSelfItem();

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
bool isNull() const
*/
HB_FUNC_STATIC( QUUID_ISNULL )
{
  QUuid * obj = (QUuid *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
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
QByteArray toByteArray() const
*/
HB_FUNC_STATIC( QUUID_TOBYTEARRAY )
{
  QUuid * obj = (QUuid *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->toByteArray() );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
QByteArray toRfc4122() const
*/
HB_FUNC_STATIC( QUUID_TORFC4122 )
{
  QUuid * obj = (QUuid *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->toRfc4122() );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
QString toString() const
*/
HB_FUNC_STATIC( QUUID_TOSTRING )
{
  QUuid * obj = (QUuid *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toString() );
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
QUuid::Variant variant() const
*/
HB_FUNC_STATIC( QUUID_VARIANT )
{
  QUuid * obj = (QUuid *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->variant() );
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
QUuid::Version version() const
*/
HB_FUNC_STATIC( QUUID_VERSION )
{
  QUuid * obj = (QUuid *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->version() );
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
static QUuid createUuidV3(const QUuid & ns, const QByteArray & baseData)
*/
void QUuid_createUuidV31()
{

  QUuid * ptr = new QUuid( QUuid::createUuidV3( *PQUUID(1), *PQBYTEARRAY(2) ) );
  Qt5xHb::createReturnClass( ptr, "QUUID", true );
}

/*
static QUuid createUuidV3(const QUuid & ns, const QString & baseData)
*/
void QUuid_createUuidV32()
{

  QUuid * ptr = new QUuid( QUuid::createUuidV3( *PQUUID(1), PQSTRING(2) ) );
  Qt5xHb::createReturnClass( ptr, "QUUID", true );
}

/*
[1]QUuid createUuidV3(const QUuid & ns, const QByteArray & baseData)
[2]QUuid createUuidV3(const QUuid & ns, const QString & baseData)
*/

HB_FUNC_STATIC( QUUID_CREATEUUIDV3 )
{
  if( ISNUMPAR(2) && ISQUUID(1) && ISQBYTEARRAY(2) )
  {
    QUuid_createUuidV31();
  }
  else if( ISNUMPAR(2) && ISQUUID(1) && ISCHAR(2) )
  {
    QUuid_createUuidV32();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUuid createUuidV5(const QUuid & ns, const QByteArray & baseData)
*/
void QUuid_createUuidV51()
{

  QUuid * ptr = new QUuid( QUuid::createUuidV5( *PQUUID(1), *PQBYTEARRAY(2) ) );
  Qt5xHb::createReturnClass( ptr, "QUUID", true );
}

/*
static QUuid createUuidV5(const QUuid & ns, const QString & baseData)
*/
void QUuid_createUuidV52()
{

  QUuid * ptr = new QUuid( QUuid::createUuidV5( *PQUUID(1), PQSTRING(2) ) );
  Qt5xHb::createReturnClass( ptr, "QUUID", true );
}

/*
[1]QUuid createUuidV5(const QUuid & ns, const QByteArray & baseData)
[2]QUuid createUuidV5(const QUuid & ns, const QString & baseData)
*/

HB_FUNC_STATIC( QUUID_CREATEUUIDV5 )
{
  if( ISNUMPAR(2) && ISQUUID(1) && ISQBYTEARRAY(2) )
  {
    QUuid_createUuidV51();
  }
  else if( ISNUMPAR(2) && ISQUUID(1) && ISCHAR(2) )
  {
    QUuid_createUuidV52();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUuid fromRfc4122(const QByteArray & bytes)
*/
HB_FUNC_STATIC( QUUID_FROMRFC4122 )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
#endif
    QUuid * ptr = new QUuid( QUuid::fromRfc4122( *PQBYTEARRAY(1) ) );
    Qt5xHb::createReturnClass( ptr, "QUUID", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QUUID_NEWFROM )
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QUUID_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QUUID_NEWFROM );
}

HB_FUNC_STATIC( QUUID_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QUUID_NEWFROM );
}

HB_FUNC_STATIC( QUUID_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QUUID_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
