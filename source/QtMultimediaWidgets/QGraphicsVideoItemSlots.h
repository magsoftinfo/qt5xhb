/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGRAPHICSVIDEOITEMSLOTS_H
#define QGRAPHICSVIDEOITEMSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsVideoItem>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QGraphicsVideoItemSlots: public QObject
{
  Q_OBJECT
  public:
  QGraphicsVideoItemSlots(QObject *parent = 0);
  ~QGraphicsVideoItemSlots();
  public slots:
  void nativeSizeChanged( const QSizeF & size );
};

#endif /* QGRAPHICSVIDEOITEMSLOTS_H */
