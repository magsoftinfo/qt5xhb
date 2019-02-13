/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCOREAPPLICATIONSLOTS_H
#define QCOREAPPLICATIONSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QCoreApplication>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QCoreApplicationSlots: public QObject
{
  Q_OBJECT
  public:
  QCoreApplicationSlots(QObject *parent = 0);
  ~QCoreApplicationSlots();
  public slots:
  void aboutToQuit();
};

#endif /* QCOREAPPLICATIONSLOTS_H */
