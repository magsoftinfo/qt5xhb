/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSCOLORIZEEFFECT_H
#define SLOTSQGRAPHICSCOLORIZEEFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsColorizeEffect>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsColorizeEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsColorizeEffect(QObject *parent = 0);
  ~SlotsQGraphicsColorizeEffect();
  public slots:
  void colorChanged ( const QColor & color );
  void strengthChanged ( qreal strength );
};

#endif // SLOTSQGRAPHICSCOLORIZEEFFECT_H
