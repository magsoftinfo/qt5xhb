/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSTACKEDWIDGETSLOTS_H
#define QSTACKEDWIDGETSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QStackedWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QStackedWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QStackedWidgetSlots(QObject *parent = 0);
  ~QStackedWidgetSlots();
  public slots:
  void currentChanged( int index );
  void widgetRemoved( int index );
};

#endif /* QSTACKEDWIDGETSLOTS_H */
