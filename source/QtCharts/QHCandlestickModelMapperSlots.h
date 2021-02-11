/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHCANDLESTICKMODELMAPPERSLOTS_H
#define QHCANDLESTICKMODELMAPPERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QHCandlestickModelMapper>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

class QHCandlestickModelMapperSlots: public QObject
{
  Q_OBJECT
  public:
  QHCandlestickModelMapperSlots( QObject *parent = 0 );
  ~QHCandlestickModelMapperSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void closeColumnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void firstSetRowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void highColumnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void lastSetRowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void lowColumnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void openColumnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void timestampColumnChanged();
#endif
};

#endif /* QHCANDLESTICKMODELMAPPERSLOTS_H */
