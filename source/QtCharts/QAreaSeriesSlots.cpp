/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAreaSeriesSlots.h"

QAreaSeriesSlots::QAreaSeriesSlots( QObject *parent ) : QObject( parent )
{
}

QAreaSeriesSlots::~QAreaSeriesSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAreaSeriesSlots::borderColorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "borderColorChanged(QColor)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QAREASERIES" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );

    hb_vmEvalBlockV( cb, 2, psender, pcolor );

    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAreaSeriesSlots::clicked( const QPointF & point )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(QPointF)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QAREASERIES" );
    PHB_ITEM ppoint = Signals_return_object( (void *) &point, "QPOINTF" );

    hb_vmEvalBlockV( cb, 2, psender, ppoint );

    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAreaSeriesSlots::colorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "colorChanged(QColor)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QAREASERIES" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );

    hb_vmEvalBlockV( cb, 2, psender, pcolor );

    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAreaSeriesSlots::doubleClicked( const QPointF & point )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "doubleClicked(QPointF)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QAREASERIES" );
    PHB_ITEM ppoint = Signals_return_object( (void *) &point, "QPOINTF" );

    hb_vmEvalBlockV( cb, 2, psender, ppoint );

    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAreaSeriesSlots::hovered( const QPointF & point, bool state )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "hovered(QPointF,bool)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QAREASERIES" );
    PHB_ITEM ppoint = Signals_return_object( (void *) &point, "QPOINTF" );
    PHB_ITEM pstate = hb_itemPutL( NULL, state );

    hb_vmEvalBlockV( cb, 3, psender, ppoint, pstate );

    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
    hb_itemRelease( pstate );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAreaSeriesSlots::pointLabelsClippingChanged( bool clipping )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsClippingChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QAREASERIES" );
    PHB_ITEM pclipping = hb_itemPutL( NULL, clipping );

    hb_vmEvalBlockV( cb, 2, psender, pclipping );

    hb_itemRelease( psender );
    hb_itemRelease( pclipping );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAreaSeriesSlots::pointLabelsColorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsColorChanged(QColor)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QAREASERIES" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );

    hb_vmEvalBlockV( cb, 2, psender, pcolor );

    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAreaSeriesSlots::pointLabelsFontChanged( const QFont & font )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsFontChanged(QFont)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QAREASERIES" );
    PHB_ITEM pfont = Signals_return_object( (void *) &font, "QFONT" );

    hb_vmEvalBlockV( cb, 2, psender, pfont );

    hb_itemRelease( psender );
    hb_itemRelease( pfont );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAreaSeriesSlots::pointLabelsFormatChanged( const QString & format )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsFormatChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QAREASERIES" );
    PHB_ITEM pformat = hb_itemPutC( NULL, QSTRINGTOSTRING(format) );

    hb_vmEvalBlockV( cb, 2, psender, pformat );

    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAreaSeriesSlots::pointLabelsVisibilityChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsVisibilityChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QAREASERIES" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );

    hb_vmEvalBlockV( cb, 2, psender, pvisible );

    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAreaSeriesSlots::pressed( const QPointF & point )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "pressed(QPointF)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QAREASERIES" );
    PHB_ITEM ppoint = Signals_return_object( (void *) &point, "QPOINTF" );

    hb_vmEvalBlockV( cb, 2, psender, ppoint );

    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAreaSeriesSlots::released( const QPointF & point )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "released(QPointF)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QAREASERIES" );
    PHB_ITEM ppoint = Signals_return_object( (void *) &point, "QPOINTF" );

    hb_vmEvalBlockV( cb, 2, psender, ppoint );

    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAreaSeriesSlots::selected()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "selected()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QAREASERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

void QAreaSeriesSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QAreaSeriesSlots * s = QCoreApplication::instance()->findChild<QAreaSeriesSlots *>();

    if( s == NULL )
    {
      s = new QAreaSeriesSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
