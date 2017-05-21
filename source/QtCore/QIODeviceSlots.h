/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQIODEVICE_H
#define SLOTSQIODEVICE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QIODevice>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQIODevice: public QObject
{
  Q_OBJECT
  public:
  SlotsQIODevice(QObject *parent = 0);
  ~SlotsQIODevice();
  public slots:
  void aboutToClose ();
  void bytesWritten ( qint64 bytes );
  void readChannelFinished ();
  void readyRead ();
};

#endif // SLOTSQIODEVICE_H
