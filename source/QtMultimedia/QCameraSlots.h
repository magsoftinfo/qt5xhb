/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCAMERA_H
#define SLOTSQCAMERA_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCamera>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCamera: public QObject
{
  Q_OBJECT
  public:
  SlotsQCamera(QObject *parent = 0);
  ~SlotsQCamera();
  public slots:
  void captureModeChanged(QCamera::CaptureModes mode);
  void error(QCamera::Error value);
  void lockFailed();
  void lockStatusChanged(QCamera::LockStatus status, QCamera::LockChangeReason reason);
  void lockStatusChanged(QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason);
  void locked();
  void stateChanged(QCamera::State state);
  void statusChanged(QCamera::Status status);
};

#endif // SLOTSQCAMERA_H
