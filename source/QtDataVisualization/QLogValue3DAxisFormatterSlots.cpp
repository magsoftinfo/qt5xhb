/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QLogValue3DAxisFormatterSlots.h"

static SlotsQLogValue3DAxisFormatter * s = NULL;

SlotsQLogValue3DAxisFormatter::SlotsQLogValue3DAxisFormatter(QObject *parent) : QObject(parent)
{
}

SlotsQLogValue3DAxisFormatter::~SlotsQLogValue3DAxisFormatter()
{
}
void SlotsQLogValue3DAxisFormatter::autoSubGridChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "autoSubGridChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penabled );
    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}
void SlotsQLogValue3DAxisFormatter::baseChanged( qreal base )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "baseChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbase = hb_itemPutND( NULL, base );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbase );
    hb_itemRelease( psender );
    hb_itemRelease( pbase );
  }
}
void SlotsQLogValue3DAxisFormatter::showEdgeLabelsChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "showEdgeLabelsChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penabled );
    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

HB_FUNC( QLOGVALUE3DAXISFORMATTER_ONAUTOSUBGRIDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQLogValue3DAxisFormatter( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "autoSubGridChanged(bool)", "autoSubGridChanged(bool)" ) );
}

HB_FUNC( QLOGVALUE3DAXISFORMATTER_ONBASECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQLogValue3DAxisFormatter( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "baseChanged(qreal)", "baseChanged(qreal)" ) );
}

HB_FUNC( QLOGVALUE3DAXISFORMATTER_ONSHOWEDGELABELSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQLogValue3DAxisFormatter( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "showEdgeLabelsChanged(bool)", "showEdgeLabelsChanged(bool)" ) );
}
