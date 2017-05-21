/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQINTVALIDATOR_H
#define SLOTSQINTVALIDATOR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QIntValidator>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQIntValidator: public QObject
{
  Q_OBJECT
  public:
  SlotsQIntValidator(QObject *parent = 0);
  ~SlotsQIntValidator();
  public slots:
  void changed();
};

#endif // SLOTSQINTVALIDATOR_H
