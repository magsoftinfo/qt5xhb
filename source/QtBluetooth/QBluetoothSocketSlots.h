/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBLUETOOTHSOCKETSLOTS_H
#define QBLUETOOTHSOCKETSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothSocket>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQBluetoothSocket: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothSocket(QObject *parent = 0);
  ~SlotsQBluetoothSocket();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void connected();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void disconnected();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void error( QBluetoothSocket::SocketError error );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void stateChanged( QBluetoothSocket::SocketState state );
#endif
};

#endif /* QBLUETOOTHSOCKETSLOTS_H */
