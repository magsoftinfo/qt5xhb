/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSURFACEDATAPROXYSLOTS_H
#define QSURFACEDATAPROXYSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/QSurfaceDataProxy>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class QSurfaceDataProxySlots: public QObject
{
  Q_OBJECT
  public:
  QSurfaceDataProxySlots(QObject *parent = 0);
  ~QSurfaceDataProxySlots();
  public slots:
  void arrayReset();
  void columnCountChanged( int count );
  void itemChanged( int rowIndex, int columnIndex );
  void rowCountChanged( int count );
  void rowsAdded( int startIndex, int count );
  void rowsChanged( int startIndex, int count );
  void rowsInserted( int startIndex, int count );
  void rowsRemoved( int startIndex, int count );
  void seriesChanged( QSurface3DSeries * series );
};

#endif /* QSURFACEDATAPROXYSLOTS_H */
