/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QStatusBarSlots.h"

static QStatusBarSlots * s = NULL;

QStatusBarSlots::QStatusBarSlots(QObject *parent) : QObject(parent)
{
}

QStatusBarSlots::~QStatusBarSlots()
{
}
void QStatusBarSlots::messageChanged( const QString & message )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "messageChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmessage = hb_itemPutC( NULL, QSTRINGTOSTRING(message) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmessage );
    hb_itemRelease( psender );
    hb_itemRelease( pmessage );
  }
}

HB_FUNC( QSTATUSBAR_ONMESSAGECHANGED )
{
  if( s == NULL )
  {
    s = new QStatusBarSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "messageChanged(QString)", "messageChanged(QString)" ) );
}

