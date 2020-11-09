/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
REQUEST QBLUETOOTHSERVICEINFO
REQUEST QBLUETOOTHUUID
#endif

CLASS QBluetoothServiceDiscoveryAgent INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD error
   METHOD errorString
   METHOD discoveredServices
   METHOD setUuidFilter
   METHOD uuidFilter
   METHOD setRemoteAddress
   METHOD remoteAddress
   METHOD start
   METHOD stop
   METHOD clear

   METHOD onServiceDiscovered
   METHOD onFinished
   METHOD onCanceled
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBluetoothServiceDiscoveryAgent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothServiceDiscoveryAgent>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothServiceDiscoveryAgent>
#endif
#endif

/*
QBluetoothServiceDiscoveryAgent(QObject *parent = 0)
*/
void QBluetoothServiceDiscoveryAgent_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = new QBluetoothServiceDiscoveryAgent( OPQOBJECT(1,0) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
QBluetoothServiceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = 0)
*/
void QBluetoothServiceDiscoveryAgent_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = new QBluetoothServiceDiscoveryAgent( *PQBLUETOOTHADDRESS(1), OPQOBJECT(2,0) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QBluetoothServiceDiscoveryAgent_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QBluetoothServiceDiscoveryAgent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
bool isActive() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive() );
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
Error error() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
QString errorString() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
QList<QBluetoothServiceInfo> discoveredServices() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_DISCOVEREDSERVICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QBluetoothServiceInfo> list = obj->discoveredServices();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBLUETOOTHSERVICEINFO" );
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
          hb_itemPutPtr( pItem, (QBluetoothServiceInfo *) new QBluetoothServiceInfo( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBLUETOOTHSERVICEINFO", HB_ERR_ARGS_BASEPARAMS );
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
#endif
}

/*
void setUuidFilter(const QList<QBluetoothUuid> &uuids)
*/
void QBluetoothServiceDiscoveryAgent_setUuidFilter1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QBluetoothUuid> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QBluetoothUuid *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setUuidFilter( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setUuidFilter(const QBluetoothUuid &uuid)
*/
void QBluetoothServiceDiscoveryAgent_setUuidFilter2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setUuidFilter( *PQBLUETOOTHUUID(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_SETUUIDFILTER )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBluetoothServiceDiscoveryAgent_setUuidFilter1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHUUID(1) )
  {
    QBluetoothServiceDiscoveryAgent_setUuidFilter2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QBluetoothUuid> uuidFilter() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_UUIDFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QBluetoothUuid> list = obj->uuidFilter();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBLUETOOTHUUID" );
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
          hb_itemPutPtr( pItem, (QBluetoothUuid *) new QBluetoothUuid( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBLUETOOTHUUID", HB_ERR_ARGS_BASEPARAMS );
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
#endif
}

/*
bool setRemoteAddress(const QBluetoothAddress &address)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_SETREMOTEADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBLUETOOTHADDRESS(1) )
    {
#endif
      RBOOL( obj->setRemoteAddress( *PQBLUETOOTHADDRESS(1) ) );
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
QBluetoothAddress remoteAddress() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_REMOTEADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBluetoothAddress * ptr = new QBluetoothAddress( obj->remoteAddress() );
      Qt5xHb::createReturnClass( ptr, "QBLUETOOTHADDRESS", true );
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
void start(DiscoveryMode mode = MinimalDiscovery)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_START )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
    {
#endif
      obj->start( ISNIL(1)? (QBluetoothServiceDiscoveryAgent::DiscoveryMode) QBluetoothServiceDiscoveryAgent::MinimalDiscovery : (QBluetoothServiceDiscoveryAgent::DiscoveryMode) hb_parni(1) );
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
void stop()
*/
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
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
HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

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

void QBluetoothServiceDiscoveryAgentSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ONSERVICEDISCOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgentSlots_connect_signal( "serviceDiscovered(QBluetoothServiceInfo)", "serviceDiscovered(QBluetoothServiceInfo)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgentSlots_connect_signal( "finished()", "finished()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ONCANCELED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgentSlots_connect_signal( "canceled()", "canceled()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgentSlots_connect_signal( "error(QBluetoothServiceDiscoveryAgent::Error)", "error(QBluetoothServiceDiscoveryAgent::Error)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
