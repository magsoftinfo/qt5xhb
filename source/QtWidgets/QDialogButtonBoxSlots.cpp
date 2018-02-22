/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDialogButtonBoxSlots.h"

static QDialogButtonBoxSlots * s = NULL;

QDialogButtonBoxSlots::QDialogButtonBoxSlots(QObject *parent) : QObject(parent)
{
}

QDialogButtonBoxSlots::~QDialogButtonBoxSlots()
{
}
void QDialogButtonBoxSlots::accepted()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "accepted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QDialogButtonBoxSlots::clicked( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(QAbstractButton*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbutton = hb_itemPutPtr( NULL, (QAbstractButton *) button );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbutton );
    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}
void QDialogButtonBoxSlots::helpRequested()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "helpRequested()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QDialogButtonBoxSlots::rejected()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rejected()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QDIALOGBUTTONBOX_ONACCEPTED )
{
  if( s == NULL )
  {
    s = new QDialogButtonBoxSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "accepted()", "accepted()" ) );
}

HB_FUNC( QDIALOGBUTTONBOX_ONCLICKED )
{
  if( s == NULL )
  {
    s = new QDialogButtonBoxSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "clicked(QAbstractButton*)", "clicked(QAbstractButton*)" ) );
}

HB_FUNC( QDIALOGBUTTONBOX_ONHELPREQUESTED )
{
  if( s == NULL )
  {
    s = new QDialogButtonBoxSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "helpRequested()", "helpRequested()" ) );
}

HB_FUNC( QDIALOGBUTTONBOX_ONREJECTED )
{
  if( s == NULL )
  {
    s = new QDialogButtonBoxSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rejected()", "rejected()" ) );
}

