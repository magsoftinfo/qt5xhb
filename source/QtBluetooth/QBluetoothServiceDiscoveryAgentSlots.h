/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBLUETOOTHSERVICEDISCOVERYAGENTSLOTS_H
#define QBLUETOOTHSERVICEDISCOVERYAGENTSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothServiceDiscoveryAgent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQBluetoothServiceDiscoveryAgent: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothServiceDiscoveryAgent(QObject *parent = 0);
  ~SlotsQBluetoothServiceDiscoveryAgent();
  public slots:
  void serviceDiscovered(const QBluetoothServiceInfo &info);
  void finished();
  void canceled();
  void error(QBluetoothServiceDiscoveryAgent::Error error);
};

#endif /* QBLUETOOTHSERVICEDISCOVERYAGENTSLOTS_H */
