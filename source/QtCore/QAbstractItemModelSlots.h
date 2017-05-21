/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTITEMMODEL_H
#define SLOTSQABSTRACTITEMMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractItemModel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractItemModel: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractItemModel(QObject *parent = 0);
  ~SlotsQAbstractItemModel();
  public slots:
  void columnsAboutToBeInserted ( const QModelIndex & parent, int start, int end );
  void columnsAboutToBeMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn );
  void columnsAboutToBeRemoved ( const QModelIndex & parent, int start, int end );
  void columnsInserted ( const QModelIndex & parent, int start, int end );
  void columnsMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn );
  void columnsRemoved ( const QModelIndex & parent, int start, int end );
  void dataChanged ( const QModelIndex & topLeft, const QModelIndex & bottomRight );
  void headerDataChanged ( Qt::Orientation orientation, int first, int last );
  void layoutAboutToBeChanged ();
  void layoutChanged ();
  void modelAboutToBeReset ();
  void modelReset ();
  void rowsAboutToBeInserted ( const QModelIndex & parent, int start, int end );
  void rowsAboutToBeMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow );
  void rowsAboutToBeRemoved ( const QModelIndex & parent, int start, int end );
  void rowsInserted ( const QModelIndex & parent, int start, int end );
  void rowsMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow );
  void rowsRemoved ( const QModelIndex & parent, int start, int end );
};

#endif // SLOTSQABSTRACTITEMMODEL_H
