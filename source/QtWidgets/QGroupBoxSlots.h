/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGROUPBOX_H
#define SLOTSQGROUPBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGroupBox>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGroupBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQGroupBox(QObject *parent = 0);
  ~SlotsQGroupBox();
  public slots:
  void clicked ( bool checked = false );
  void toggled ( bool on );
};

#endif // SLOTSQGROUPBOX_H
