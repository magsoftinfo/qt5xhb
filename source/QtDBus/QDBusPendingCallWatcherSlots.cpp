/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDBusPendingCallWatcherSlots.h"

QDBusPendingCallWatcherSlots::QDBusPendingCallWatcherSlots( QObject *parent ) : QObject( parent )
{
}

QDBusPendingCallWatcherSlots::~QDBusPendingCallWatcherSlots()
{
}

void QDBusPendingCallWatcherSlots::finished( QDBusPendingCallWatcher * self )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "finished(QDBusPendingCallWatcher*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QDBUSPENDINGCALLWATCHER" );
    PHB_ITEM pself = Qt5xHb::Signals_return_qobject( (QObject *) self, "QDBUSPENDINGCALLWATCHER" );

    hb_vmEvalBlockV( cb, 2, psender, pself );

    hb_itemRelease( psender );
    hb_itemRelease( pself );
  }
}

void QDBusPendingCallWatcherSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDBusPendingCallWatcher * obj = (QDBusPendingCallWatcher *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QDBusPendingCallWatcherSlots * s = QCoreApplication::instance()->findChild<QDBusPendingCallWatcherSlots *>();

    if( s == NULL )
    {
      s = new QDBusPendingCallWatcherSlots();
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
