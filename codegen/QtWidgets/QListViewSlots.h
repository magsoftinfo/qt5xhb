%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQLISTVIEW_H
#define SLOTSQLISTVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QListView>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQListView: public QObject
{
  Q_OBJECT
  public:
  SlotsQListView(QObject *parent = 0);
  ~SlotsQListView();
  public slots:
  void indexesMoved ( const QModelIndexList & indexes );
};

#endif // SLOTSQLISTVIEW_H