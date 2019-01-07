/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSCATTER3DSERIESSLOTS_H
#define QSCATTER3DSERIESSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QScatter3DSeries>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class QScatter3DSeriesSlots: public QObject
{
  Q_OBJECT
  public:
  QScatter3DSeriesSlots(QObject *parent = 0);
  ~QScatter3DSeriesSlots();
  public slots:
  void dataProxyChanged( QScatterDataProxy * proxy );
  void itemSizeChanged( float size );
  void selectedItemChanged( int index );
};

#endif /* QSCATTER3DSERIESSLOTS_H */
