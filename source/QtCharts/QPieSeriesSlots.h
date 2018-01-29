/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPIESERIESSLOTS_H
#define QPIESERIESSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QPieSeries>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQPieSeries: public QObject
{
  Q_OBJECT
  public:
  SlotsQPieSeries(QObject *parent = 0);
  ~SlotsQPieSeries();
  public slots:
  void added( QList<QPieSlice*> slices );
  void clicked( QPieSlice * slice );
  void countChanged();
  void doubleClicked( QPieSlice * slice );
  void hovered( QPieSlice * slice, bool state );
  void pressed( QPieSlice * slice );
  void released( QPieSlice * slice );
  void removed( QList<QPieSlice*> slices );
  void sumChanged();
};

#endif /* QPIESERIESSLOTS_H */
