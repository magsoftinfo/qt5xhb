/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTBARSERIESSLOTS_H
#define QABSTRACTBARSERIESSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractBarSeries>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractBarSeries: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractBarSeries(QObject *parent = 0);
  ~SlotsQAbstractBarSeries();
  public slots:
  void barsetsAdded( QList<QBarSet*> sets );
  void barsetsRemoved( QList<QBarSet*> sets );
  void clicked( int index, QBarSet * barset );
  void countChanged();
  void doubleClicked( int index, QBarSet * barset );
  void hovered( bool status, int index, QBarSet * barset );
  void labelsAngleChanged( qreal angle );
  void labelsFormatChanged( const QString & format );
  void labelsPositionChanged( QAbstractBarSeries::LabelsPosition position );
  void labelsVisibleChanged();
  void pressed( int index, QBarSet * barset );
  void released( int index, QBarSet * barset );
};

#endif /* QABSTRACTBARSERIESSLOTS_H */
