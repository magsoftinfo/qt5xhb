/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQLABEL_H
#define SLOTSQLABEL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QLabel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQLabel: public QObject
{
  Q_OBJECT
  public:
  SlotsQLabel(QObject *parent = 0);
  ~SlotsQLabel();
  public slots:
  void linkActivated ( const QString & link );
  void linkHovered ( const QString & link );
};

#endif // SLOTSQLABEL_H
