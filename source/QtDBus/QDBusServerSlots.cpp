/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDBusServerSlots.h"

QDBusServerSlots::QDBusServerSlots( QObject *parent ) : QObject( parent )
{
}

QDBusServerSlots::~QDBusServerSlots()
{
}

void QDBusServerSlots::newConnection( const QDBusConnection & connection )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "newConnection(QDBusConnection)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QDBUSSERVER" );
    PHB_ITEM pconnection = Qt5xHb::Signals_return_object( (void *) &connection, "QDBUSCONNECTION" );

    hb_vmEvalBlockV( cb, 2, psender, pconnection );

    hb_itemRelease( psender );
    hb_itemRelease( pconnection );
  }
}

void QDBusServerSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDBusServer * obj = (QDBusServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QDBusServerSlots * s = QCoreApplication::instance()->findChild<QDBusServerSlots *>();

    if( s == NULL )
    {
      s = new QDBusServerSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
