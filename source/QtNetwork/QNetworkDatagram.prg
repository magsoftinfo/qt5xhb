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
REQUEST QHOSTADDRESS
#endif

CLASS QNetworkDatagram

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD clear
   METHOD isValid
   METHOD isNull
   METHOD interfaceIndex
   METHOD setInterfaceIndex
   METHOD senderAddress
   METHOD destinationAddress
   METHOD senderPort
   METHOD destinationPort
   METHOD setSender
   METHOD setDestination
   METHOD hopLimit
   METHOD setHopLimit
   METHOD data
   METHOD setData
   METHOD makeReply

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QNetworkDatagram
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtNetwork/QNetworkDatagram>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtNetwork/QNetworkDatagram>
#endif
#endif

/*
QNetworkDatagram()
*/
void QNetworkDatagram_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * o = new QNetworkDatagram();
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QNetworkDatagram(const QByteArray &data, const QHostAddress &destinationAddress = QHostAddress(), quint16 port = 0) (implicit)
*/
void QNetworkDatagram_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * o = new QNetworkDatagram( *PQBYTEARRAY(1), ISNIL(2)? QHostAddress() : *(QHostAddress *) _qt5xhb_itemGetPtr(2), OPQUINT16(3,0) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QNetworkDatagram(const QNetworkDatagram &other)
*/
void QNetworkDatagram_new3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * o = new QNetworkDatagram( *PQNETWORKDATAGRAM(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
explicit QNetworkDatagram(QNetworkDatagramPrivate &dd) [private]
*/

//[1]QNetworkDatagram()
//[2]QNetworkDatagram(const QByteArray &data, const QHostAddress &destinationAddress = QHostAddress(), quint16 port = 0) (implicit)
//[3]QNetworkDatagram(const QNetworkDatagram &other)

HB_FUNC_STATIC( QNETWORKDATAGRAM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkDatagram_new1();
  }
  else if( ISBETWEEN(1,3) && ISQBYTEARRAY(1) && (ISQHOSTADDRESS(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QNetworkDatagram_new2();
  }
  else if( ISNUMPAR(1) && ISQNETWORKDATAGRAM(1) )
  {
    QNetworkDatagram_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QNetworkDatagram()
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void swap(QNetworkDatagram &other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKDATAGRAM(1) )
    {
#endif
      obj->swap( *PQNETWORKDATAGRAM(1) );
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
void clear()
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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
bool isValid() const
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
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
bool isNull() const
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_ISNULL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
uint interfaceIndex() const
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_INTERFACEINDEX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RUINT( obj->interfaceIndex() );
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
void setInterfaceIndex(uint index)
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_SETINTERFACEINDEX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setInterfaceIndex( PUINT(1) );
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
QHostAddress senderAddress() const
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_SENDERADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QHostAddress * ptr = new QHostAddress( obj->senderAddress() );
      _qt5xhb_createReturnClass( ptr, "QHOSTADDRESS", true );
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
QHostAddress destinationAddress() const
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_DESTINATIONADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QHostAddress * ptr = new QHostAddress( obj->destinationAddress() );
      _qt5xhb_createReturnClass( ptr, "QHOSTADDRESS", true );
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
int senderPort() const
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_SENDERPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->senderPort() );
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
int destinationPort() const
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_DESTINATIONPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->destinationPort() );
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
void setSender(const QHostAddress &address, quint16 port = 0)
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_SETSENDER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQHOSTADDRESS(1) && ISOPTNUM(2) )
    {
#endif
      obj->setSender( *PQHOSTADDRESS(1), OPQUINT16(2,0) );
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
void setDestination(const QHostAddress &address, quint16 port)
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_SETDESTINATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISNUM(2) )
    {
#endif
      obj->setDestination( *PQHOSTADDRESS(1), PQUINT16(2) );
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
int hopLimit() const
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_HOPLIMIT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->hopLimit() );
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
void setHopLimit(int count)
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_SETHOPLIMIT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setHopLimit( PINT(1) );
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
QByteArray data() const
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_DATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->data() );
      _qt5xhb_createReturnClass( ptr, "QBYTEARRAY", true );
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
void setData(const QByteArray &data)
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_SETDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      obj->setData( *PQBYTEARRAY(1) );
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
QNetworkDatagram makeReply(const QByteArray &paylaod) const
*/
HB_FUNC_STATIC( QNETWORKDATAGRAM_MAKEREPLY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QNetworkDatagram * obj = (QNetworkDatagram *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      QNetworkDatagram * ptr = new QNetworkDatagram( obj->makeReply( *PQBYTEARRAY(1) ) );
      _qt5xhb_createReturnClass( ptr, "QNETWORKDATAGRAM", true );
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
QNetworkDatagram makeReply_helper(const QByteArray &data) const [private]
*/

/*
void makeReply_helper_inplace(const QByteArray &data) [private]
*/

/*
static void destroy(QNetworkDatagramPrivate *d) [private]
*/

HB_FUNC_STATIC( QNETWORKDATAGRAM_NEWFROM )
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

HB_FUNC_STATIC( QNETWORKDATAGRAM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKDATAGRAM_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKDATAGRAM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKDATAGRAM_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKDATAGRAM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKDATAGRAM_SETSELFDESTRUCTION )
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
