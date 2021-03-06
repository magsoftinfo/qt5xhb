/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QQUICKWEBENGINESCRIPTSLOTS_H
#define QQUICKWEBENGINESCRIPTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWebEngine/QQuickWebEngineScript>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QQuickWebEngineScriptSlots: public QObject
{
  Q_OBJECT
  public:
  QQuickWebEngineScriptSlots( QObject *parent = 0 );
  ~QQuickWebEngineScriptSlots();
  public slots:
  void injectionPointChanged( QQuickWebEngineScript::InjectionPoint injectionPoint );
  void nameChanged( const QString & name );
  void runOnSubframesChanged( bool on );
  void sourceCodeChanged( const QString & code );
  void sourceUrlChanged( const QUrl & url );
  void worldIdChanged( QQuickWebEngineScript::ScriptWorldId scriptWorldId );
};

#endif /* QQUICKWEBENGINESCRIPTSLOTS_H */
