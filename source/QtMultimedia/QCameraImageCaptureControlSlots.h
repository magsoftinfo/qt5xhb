/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCAMERAIMAGECAPTURECONTROL_H
#define SLOTSQCAMERAIMAGECAPTURECONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraImageCaptureControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCameraImageCaptureControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraImageCaptureControl(QObject *parent = 0);
  ~SlotsQCameraImageCaptureControl();
  public slots:
  void error(int id, int error, const QString & errorString);
  void imageAvailable(int requestId, const QVideoFrame & buffer);
  void imageCaptured(int requestId, const QImage & preview);
  void imageExposed(int requestId);
  void imageMetadataAvailable(int id, const QString & key, const QVariant & value);
  void imageSaved(int requestId, const QString & fileName);
  void readyForCaptureChanged(bool ready);
};

#endif // SLOTSQCAMERAIMAGECAPTURECONTROL_H
