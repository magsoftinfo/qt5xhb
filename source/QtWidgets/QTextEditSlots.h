/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTEXTEDIT_H
#define SLOTSQTEXTEDIT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTextEdit>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQTextEdit: public QObject
{
  Q_OBJECT
  public:
  SlotsQTextEdit(QObject *parent = 0);
  ~SlotsQTextEdit();
  public slots:
  void copyAvailable ( bool yes );
  void currentCharFormatChanged ( const QTextCharFormat & f );
  void cursorPositionChanged ();
  void redoAvailable ( bool available );
  void selectionChanged ();
  void textChanged ();
  void undoAvailable ( bool available );
};

#endif // SLOTSQTEXTEDIT_H
