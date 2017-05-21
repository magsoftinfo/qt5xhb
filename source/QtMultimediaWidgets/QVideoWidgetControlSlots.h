/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQVIDEOWIDGETCONTROL_H
#define SLOTSQVIDEOWIDGETCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QVideoWidgetControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQVideoWidgetControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQVideoWidgetControl(QObject *parent = 0);
  ~SlotsQVideoWidgetControl();
  public slots:
  void fullScreenChanged(bool fullScreen);
  void brightnessChanged(int brightness);
  void contrastChanged(int contrast);
  void hueChanged(int hue);
  void saturationChanged(int saturation);
};

#endif // SLOTSQVIDEOWIDGETCONTROL_H
