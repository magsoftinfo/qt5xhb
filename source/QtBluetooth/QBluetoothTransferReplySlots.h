/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBLUETOOTHTRANSFERREPLYSLOTS_H
#define QBLUETOOTHTRANSFERREPLYSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothTransferReply>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQBluetoothTransferReply: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothTransferReply(QObject *parent = 0);
  ~SlotsQBluetoothTransferReply();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void finished( QBluetoothTransferReply * r );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void transferProgress( qint64 bytesTransferred, qint64 bytesTotal );
#endif
};

#endif /* QBLUETOOTHTRANSFERREPLYSLOTS_H */
