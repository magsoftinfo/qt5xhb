/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGUIAPPLICATIONSLOTS_H
#define QGUIAPPLICATIONSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGuiApplication>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QGuiApplicationSlots: public QObject
{
  Q_OBJECT
  public:
  QGuiApplicationSlots(QObject *parent = 0);
  ~QGuiApplicationSlots();
  public slots:
  void focusObjectChanged( QObject * focusObject );
  void focusWindowChanged( QWindow * focusWindow );
  void fontDatabaseChanged();
  void lastWindowClosed();
  void screenAdded( QScreen * screen );
};

#endif /* QGUIAPPLICATIONSLOTS_H */
