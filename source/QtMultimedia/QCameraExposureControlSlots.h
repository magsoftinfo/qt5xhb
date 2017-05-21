/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCAMERAEXPOSURECONTROL_H
#define SLOTSQCAMERAEXPOSURECONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraExposureControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCameraExposureControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraExposureControl(QObject *parent = 0);
  ~SlotsQCameraExposureControl();
  public slots:
  void actualValueChanged(int parameter);
  void parameterRangeChanged(int parameter);
  void requestedValueChanged(int parameter);
};

#endif // SLOTSQCAMERAEXPOSURECONTROL_H
