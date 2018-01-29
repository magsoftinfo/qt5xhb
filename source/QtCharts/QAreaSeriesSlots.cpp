/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAreaSeriesSlots.h"

static SlotsQAreaSeries * s = NULL;

SlotsQAreaSeries::SlotsQAreaSeries(QObject *parent) : QObject(parent)
{
}

SlotsQAreaSeries::~SlotsQAreaSeries()
{
}
void SlotsQAreaSeries::borderColorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "borderColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
void SlotsQAreaSeries::clicked( const QPointF & point )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(QPointF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppoint = hb_itemPutPtr( NULL, (QPointF *) &point );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppoint );
    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}
void SlotsQAreaSeries::colorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "colorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
void SlotsQAreaSeries::doubleClicked( const QPointF & point )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "doubleClicked(QPointF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppoint = hb_itemPutPtr( NULL, (QPointF *) &point );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppoint );
    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}
void SlotsQAreaSeries::hovered( const QPointF & point, bool state )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hovered(QPointF,bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppoint = hb_itemPutPtr( NULL, (QPointF *) &point );
    PHB_ITEM pstate = hb_itemPutL( NULL, state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, ppoint, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
    hb_itemRelease( pstate );
  }
}
void SlotsQAreaSeries::pointLabelsClippingChanged( bool clipping )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsClippingChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pclipping = hb_itemPutL( NULL, clipping );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pclipping );
    hb_itemRelease( psender );
    hb_itemRelease( pclipping );
  }
}
void SlotsQAreaSeries::pointLabelsColorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
void SlotsQAreaSeries::pointLabelsFontChanged( const QFont & font )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsFontChanged(QFont)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfont = hb_itemPutPtr( NULL, (QFont *) &font );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfont );
    hb_itemRelease( psender );
    hb_itemRelease( pfont );
  }
}
void SlotsQAreaSeries::pointLabelsFormatChanged( const QString & format )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsFormatChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformat = hb_itemPutC( NULL, QSTRINGTOSTRING(format) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformat );
    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}
void SlotsQAreaSeries::pointLabelsVisibilityChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pointLabelsVisibilityChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}
void SlotsQAreaSeries::pressed( const QPointF & point )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pressed(QPointF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppoint = hb_itemPutPtr( NULL, (QPointF *) &point );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppoint );
    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}
void SlotsQAreaSeries::released( const QPointF & point )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "released(QPointF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppoint = hb_itemPutPtr( NULL, (QPointF *) &point );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppoint );
    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}
void SlotsQAreaSeries::selected()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selected()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QAREASERIES_ONBORDERCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAreaSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "borderColorChanged(QColor)", "borderColorChanged(QColor)" ) );
}

HB_FUNC( QAREASERIES_ONCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQAreaSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "clicked(QPointF)", "clicked(QPointF)" ) );
}

HB_FUNC( QAREASERIES_ONCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAreaSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "colorChanged(QColor)", "colorChanged(QColor)" ) );
}

HB_FUNC( QAREASERIES_ONDOUBLECLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQAreaSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "doubleClicked(QPointF)", "doubleClicked(QPointF)" ) );
}

HB_FUNC( QAREASERIES_ONHOVERED )
{
  if( s == NULL )
  {
    s = new SlotsQAreaSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "hovered(QPointF,bool)", "hovered(QPointF,bool)" ) );
}

HB_FUNC( QAREASERIES_ONPOINTLABELSCLIPPINGCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAreaSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointLabelsClippingChanged(bool)", "pointLabelsClippingChanged(bool)" ) );
}

HB_FUNC( QAREASERIES_ONPOINTLABELSCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAreaSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointLabelsColorChanged(QColor)", "pointLabelsColorChanged(QColor)" ) );
}

HB_FUNC( QAREASERIES_ONPOINTLABELSFONTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAreaSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointLabelsFontChanged(QFont)", "pointLabelsFontChanged(QFont)" ) );
}

HB_FUNC( QAREASERIES_ONPOINTLABELSFORMATCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAreaSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointLabelsFormatChanged(QString)", "pointLabelsFormatChanged(QString)" ) );
}

HB_FUNC( QAREASERIES_ONPOINTLABELSVISIBILITYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAreaSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pointLabelsVisibilityChanged(bool)", "pointLabelsVisibilityChanged(bool)" ) );
}

HB_FUNC( QAREASERIES_ONPRESSED )
{
  if( s == NULL )
  {
    s = new SlotsQAreaSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pressed(QPointF)", "pressed(QPointF)" ) );
}

HB_FUNC( QAREASERIES_ONRELEASED )
{
  if( s == NULL )
  {
    s = new SlotsQAreaSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "released(QPointF)", "released(QPointF)" ) );
}

HB_FUNC( QAREASERIES_ONSELECTED )
{
  if( s == NULL )
  {
    s = new SlotsQAreaSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "selected()", "selected()" ) );
}

