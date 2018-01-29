/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCategoryAxisSlots.h"

static SlotsQCategoryAxis * s = NULL;

SlotsQCategoryAxis::SlotsQCategoryAxis(QObject *parent) : QObject(parent)
{
}

SlotsQCategoryAxis::~SlotsQCategoryAxis()
{
}
void SlotsQCategoryAxis::categoriesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "categoriesChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQCategoryAxis::labelsPositionChanged( QCategoryAxis::AxisLabelsPosition position )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelsPositionChanged(QCategoryAxis::AxisLabelsPosition)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pposition = hb_itemPutNI( NULL, (int) position );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pposition );
    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}

HB_FUNC( QCATEGORYAXIS_ONCATEGORIESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCategoryAxis( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "categoriesChanged()", "categoriesChanged()" ) );
}

HB_FUNC( QCATEGORYAXIS_ONLABELSPOSITIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCategoryAxis( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "labelsPositionChanged(QCategoryAxis::AxisLabelsPosition)", "labelsPositionChanged(QCategoryAxis::AxisLabelsPosition)" ) );
}

