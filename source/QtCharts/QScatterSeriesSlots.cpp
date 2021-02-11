/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QScatterSeriesSlots.h"

QScatterSeriesSlots::QScatterSeriesSlots( QObject *parent ) : QObject( parent )
{
}

QScatterSeriesSlots::~QScatterSeriesSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QScatterSeriesSlots::borderColorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "borderColorChanged(QColor)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QSCATTERSERIES" );
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object( (void *) &color, "QCOLOR" );

    hb_vmEvalBlockV( cb, 2, psender, pcolor );

    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QScatterSeriesSlots::colorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "colorChanged(QColor)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QSCATTERSERIES" );
    PHB_ITEM pcolor = Qt5xHb::Signals_return_object( (void *) &color, "QCOLOR" );

    hb_vmEvalBlockV( cb, 2, psender, pcolor );

    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QScatterSeriesSlots::markerShapeChanged( QScatterSeries::MarkerShape shape )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "markerShapeChanged(QScatterSeries::MarkerShape)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QSCATTERSERIES" );
    PHB_ITEM pshape = hb_itemPutNI( NULL, (int) shape );

    hb_vmEvalBlockV( cb, 2, psender, pshape );

    hb_itemRelease( psender );
    hb_itemRelease( pshape );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QScatterSeriesSlots::markerSizeChanged( qreal size )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "markerSizeChanged(qreal)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QSCATTERSERIES" );
    PHB_ITEM psize = hb_itemPutND( NULL, size );

    hb_vmEvalBlockV( cb, 2, psender, psize );

    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}
#endif

void QScatterSeriesSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QScatterSeries * obj = (QScatterSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QScatterSeriesSlots * s = QCoreApplication::instance()->findChild<QScatterSeriesSlots *>();

    if( s == NULL )
    {
      s = new QScatterSeriesSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
