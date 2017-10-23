/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQOPENGLCONTEXT_H
#define SLOTSQOPENGLCONTEXT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QOpenGLContext>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQOpenGLContext: public QObject
{
  Q_OBJECT
  public:
  SlotsQOpenGLContext(QObject *parent = 0);
  ~SlotsQOpenGLContext();
  public slots:
  void aboutToBeDestroyed();
};

#endif // SLOTSQOPENGLCONTEXT_H
