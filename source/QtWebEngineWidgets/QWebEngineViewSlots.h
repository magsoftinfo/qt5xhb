/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWEBENGINEVIEW_H
#define SLOTSQWEBENGINEVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWebEngineView: public QObject
{
  Q_OBJECT
  public:
  SlotsQWebEngineView(QObject *parent = 0);
  ~SlotsQWebEngineView();
  public slots:
  void loadStarted();
  void loadProgress(int progress);
  void loadFinished(bool b);
  void titleChanged(const QString& title);
  void selectionChanged();
  void urlChanged(const QUrl& url);
  void iconUrlChanged(const QUrl& url);
};

#endif // SLOTSQWEBENGINEVIEW_H
