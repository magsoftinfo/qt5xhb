/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDBusConnectionInterfaceSlots.h"

QDBusConnectionInterfaceSlots::QDBusConnectionInterfaceSlots(QObject *parent) : QObject(parent)
{
}

QDBusConnectionInterfaceSlots::~QDBusConnectionInterfaceSlots()
{
}
void QDBusConnectionInterfaceSlots::serviceRegistered( const QString & service )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceRegistered(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDBUSCONNECTIONINTERFACE" );
    PHB_ITEM pservice = hb_itemPutC( NULL, QSTRINGTOSTRING(service) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pservice );
    hb_itemRelease( psender );
    hb_itemRelease( pservice );
  }
}
void QDBusConnectionInterfaceSlots::serviceUnregistered( const QString & service )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceUnregistered(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDBUSCONNECTIONINTERFACE" );
    PHB_ITEM pservice = hb_itemPutC( NULL, QSTRINGTOSTRING(service) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pservice );
    hb_itemRelease( psender );
    hb_itemRelease( pservice );
  }
}
void QDBusConnectionInterfaceSlots::serviceOwnerChanged( const QString & name, const QString & oldOwner, const QString & newOwner )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceOwnerChanged(QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDBUSCONNECTIONINTERFACE" );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    PHB_ITEM poldOwner = hb_itemPutC( NULL, QSTRINGTOSTRING(oldOwner) );
    PHB_ITEM pnewOwner = hb_itemPutC( NULL, QSTRINGTOSTRING(newOwner) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pname, poldOwner, pnewOwner );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
    hb_itemRelease( poldOwner );
    hb_itemRelease( pnewOwner );
  }
}
void QDBusConnectionInterfaceSlots::callWithCallbackFailed( const QDBusError & error, const QDBusMessage & call )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "callWithCallbackFailed(QDBusError,QDBusMessage)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDBUSCONNECTIONINTERFACE" );
    PHB_ITEM perror = Signals_return_object( (void *) &error, "QDBUSERROR" );
    PHB_ITEM pcall = Signals_return_object( (void *) &call, "QDBUSMESSAGE" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, perror, pcall );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( pcall );
  }
}

void QDBusConnectionInterfaceSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QDBusConnectionInterface * obj = (QDBusConnectionInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QDBusConnectionInterfaceSlots * s = QCoreApplication::instance()->findChild<QDBusConnectionInterfaceSlots *>();

    if( s == NULL )
    {
      s = new QDBusConnectionInterfaceSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
