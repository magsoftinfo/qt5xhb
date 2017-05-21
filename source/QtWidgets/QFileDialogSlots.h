/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQFILEDIALOG_H
#define SLOTSQFILEDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QFileDialog>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQFileDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQFileDialog(QObject *parent = 0);
  ~SlotsQFileDialog();
  public slots:
  void currentChanged ( const QString & path );
  void directoryEntered ( const QString & directory );
  void fileSelected ( const QString & file );
  void filesSelected ( const QStringList & selected );
  void filterSelected ( const QString & filter );
  void urlSelected(const QUrl &url);
  void urlsSelected(const QList<QUrl> &urls);
  void currentUrlChanged(const QUrl &url);
  void directoryUrlEntered(const QUrl &directory);
};

#endif // SLOTSQFILEDIALOG_H
