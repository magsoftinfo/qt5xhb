/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDragSlots.h"

static QDragSlots * s = NULL;

QDragSlots::QDragSlots(QObject *parent) : QObject(parent)
{
}

QDragSlots::~QDragSlots()
{
}
void QDragSlots::actionChanged( Qt::DropAction action )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "actionChanged(Qt::DropAction)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paction = hb_itemPutNI( NULL, (int) action );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paction );
    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}
void QDragSlots::targetChanged( QObject * newTarget )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "targetChanged(QObject*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewTarget = hb_itemPutPtr( NULL, (QObject *) newTarget );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewTarget );
    hb_itemRelease( psender );
    hb_itemRelease( pnewTarget );
  }
}

HB_FUNC( QDRAG_ONACTIONCHANGED )
{
  if( s == NULL )
  {
    s = new QDragSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "actionChanged(Qt::DropAction)", "actionChanged(Qt::DropAction)" ) );
}

HB_FUNC( QDRAG_ONTARGETCHANGED )
{
  if( s == NULL )
  {
    s = new QDragSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "targetChanged(QObject*)", "targetChanged(QObject*)" ) );
}

