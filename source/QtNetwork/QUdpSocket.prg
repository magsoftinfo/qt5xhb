/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKDATAGRAM
REQUEST QNETWORKINTERFACE
#endif

CLASS QUdpSocket INHERIT QAbstractSocket

   METHOD new
   METHOD delete
   METHOD joinMulticastGroup
   METHOD leaveMulticastGroup
   METHOD multicastInterface
   METHOD setMulticastInterface
   METHOD hasPendingDatagrams
   METHOD pendingDatagramSize
   METHOD receiveDatagram
   METHOD writeDatagram

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QUdpSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QUdpSocket>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QUdpSocket>
#endif

#include <QtNetwork/QNetworkInterface>
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtNetwork/QNetworkDatagram>
#endif

/*
explicit QUdpSocket(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QUDPSOCKET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QUdpSocket * obj = new QUdpSocket( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QUdpSocket()
*/
HB_FUNC_STATIC( QUDPSOCKET_DELETE )
{
  QUdpSocket * obj = (QUdpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

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
bool joinMulticastGroup(const QHostAddress &groupAddress)
*/
void QUdpSocket_joinMulticastGroup1()
{
  QUdpSocket * obj = (QUdpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->joinMulticastGroup( *PQHOSTADDRESS(1) ) );
  }
}

/*
bool joinMulticastGroup(const QHostAddress &groupAddress, const QNetworkInterface &iface)
*/
void QUdpSocket_joinMulticastGroup2()
{
  QUdpSocket * obj = (QUdpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->joinMulticastGroup( *PQHOSTADDRESS(1), *PQNETWORKINTERFACE(2) ) );
  }
}

/*
[1]bool joinMulticastGroup(const QHostAddress &groupAddress)
[2]bool joinMulticastGroup(const QHostAddress &groupAddress, const QNetworkInterface &iface)
*/

HB_FUNC_STATIC( QUDPSOCKET_JOINMULTICASTGROUP )
{
  if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
  {
    QUdpSocket_joinMulticastGroup1();
  }
  else if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISQNETWORKINTERFACE(2) )
  {
    QUdpSocket_joinMulticastGroup2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool leaveMulticastGroup(const QHostAddress &groupAddress)
*/
void QUdpSocket_leaveMulticastGroup1()
{
  QUdpSocket * obj = (QUdpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->leaveMulticastGroup( *PQHOSTADDRESS(1) ) );
  }
}

/*
bool leaveMulticastGroup(const QHostAddress &groupAddress, const QNetworkInterface &iface)
*/
void QUdpSocket_leaveMulticastGroup2()
{
  QUdpSocket * obj = (QUdpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->leaveMulticastGroup( *PQHOSTADDRESS(1), *PQNETWORKINTERFACE(2) ) );
  }
}

/*
[1]bool leaveMulticastGroup(const QHostAddress &groupAddress)
[2]bool leaveMulticastGroup(const QHostAddress &groupAddress, const QNetworkInterface &iface)
*/

HB_FUNC_STATIC( QUDPSOCKET_LEAVEMULTICASTGROUP )
{
  if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
  {
    QUdpSocket_leaveMulticastGroup1();
  }
  else if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISQNETWORKINTERFACE(2) )
  {
    QUdpSocket_leaveMulticastGroup2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QNetworkInterface multicastInterface() const
*/
HB_FUNC_STATIC( QUDPSOCKET_MULTICASTINTERFACE )
{
  QUdpSocket * obj = (QUdpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkInterface * ptr = new QNetworkInterface( obj->multicastInterface() );
      Qt5xHb::createReturnClass( ptr, "QNETWORKINTERFACE", true );
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
void setMulticastInterface(const QNetworkInterface &iface)
*/
HB_FUNC_STATIC( QUDPSOCKET_SETMULTICASTINTERFACE )
{
  QUdpSocket * obj = (QUdpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKINTERFACE(1) )
    {
#endif
      obj->setMulticastInterface( *PQNETWORKINTERFACE(1) );
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
bool hasPendingDatagrams() const
*/
HB_FUNC_STATIC( QUDPSOCKET_HASPENDINGDATAGRAMS )
{
  QUdpSocket * obj = (QUdpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasPendingDatagrams() );
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
qint64 pendingDatagramSize() const
*/
HB_FUNC_STATIC( QUDPSOCKET_PENDINGDATAGRAMSIZE )
{
  QUdpSocket * obj = (QUdpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->pendingDatagramSize() );
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
QNetworkDatagram receiveDatagram(qint64 maxSize = -1)
*/
HB_FUNC_STATIC( QUDPSOCKET_RECEIVEDATAGRAM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QUdpSocket * obj = (QUdpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      QNetworkDatagram * ptr = new QNetworkDatagram( obj->receiveDatagram( OPQINT64(1,-1) ) );
      Qt5xHb::createReturnClass( ptr, "QNETWORKDATAGRAM", true );
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
qint64 readDatagram(char *data, qint64 maxlen, QHostAddress *host = Q_NULLPTR, quint16 *port = Q_NULLPTR)
*/

/*
qint64 writeDatagram(const QNetworkDatagram &datagram)
*/
void QUdpSocket_writeDatagram1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QUdpSocket * obj = (QUdpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->writeDatagram( *PQNETWORKDATAGRAM(1) ) );
  }
#endif
}

/*
qint64 writeDatagram(const char *data, qint64 len, const QHostAddress &host, quint16 port)
*/
void QUdpSocket_writeDatagram2()
{
  QUdpSocket * obj = (QUdpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->writeDatagram( PCONSTCHAR(1), PQINT64(2), *PQHOSTADDRESS(3), PQUINT16(4) ) );
  }
}

/*
qint64 writeDatagram(const QByteArray &datagram, const QHostAddress &host, quint16 port)
*/
void QUdpSocket_writeDatagram3()
{
  QUdpSocket * obj = (QUdpSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->writeDatagram( *PQBYTEARRAY(1), *PQHOSTADDRESS(2), PQUINT16(3) ) );
  }
}

/*
[1]qint64 writeDatagram(const QNetworkDatagram &datagram)
[2]qint64 writeDatagram(const char *data, qint64 len, const QHostAddress &host, quint16 port)
[3]qint64 writeDatagram(const QByteArray &datagram, const QHostAddress &host, quint16 port)
*/

HB_FUNC_STATIC( QUDPSOCKET_WRITEDATAGRAM )
{
  if( ISNUMPAR(1) && ISQNETWORKDATAGRAM(1) )
  {
    QUdpSocket_writeDatagram1();
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISQHOSTADDRESS(3) && ISNUM(4) )
  {
    QUdpSocket_writeDatagram2();
  }
  else if( ISNUMPAR(3) && ISQBYTEARRAY(1) && ISQHOSTADDRESS(2) && ISNUM(3) )
  {
    QUdpSocket_writeDatagram3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
