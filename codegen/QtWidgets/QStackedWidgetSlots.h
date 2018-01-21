%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQSTACKEDWIDGET_H
#define SLOTSQSTACKEDWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QStackedWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQStackedWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQStackedWidget(QObject *parent = 0);
  ~SlotsQStackedWidget();
  public slots:
  void currentChanged ( int index );
  void widgetRemoved ( int index );
};

#endif // SLOTSQSTACKEDWIDGET_H