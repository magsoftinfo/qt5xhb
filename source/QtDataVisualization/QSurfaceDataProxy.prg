/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACE3DSERIES
REQUEST QSURFACEDATAITEM
#endif

CLASS QSurfaceDataProxy INHERIT QAbstractDataProxy

   METHOD new
   METHOD delete
   METHOD rowCount
   METHOD columnCount
   METHOD series
   METHOD itemAt
   METHOD setItem
   METHOD removeRows

   METHOD onArrayReset
   METHOD onColumnCountChanged
   METHOD onItemChanged
   METHOD onRowCountChanged
   METHOD onRowsAdded
   METHOD onRowsChanged
   METHOD onRowsInserted
   METHOD onRowsRemoved
   METHOD onSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSurfaceDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QSurfaceDataProxy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QSurfaceDataProxy>
#endif

#include <QtDataVisualization/QSurface3DSeries>

using namespace QtDataVisualization;

/*
explicit QSurfaceDataProxy(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QSurfaceDataProxy * o = new QSurfaceDataProxy ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
explicit QSurfaceDataProxy(QSurfaceDataProxyPrivate *d, QObject *parent = Q_NULLPTR) [protected]
*/

/*
virtual ~QSurfaceDataProxy()
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_DELETE )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events (obj, true);
    Signals_disconnect_all_signals (obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int rowCount() const
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ROWCOUNT )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rowCount () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int columnCount() const
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_COLUMNCOUNT )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columnCount () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QSurface3DSeries *series() const
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_SERIES )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSurface3DSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QSURFACE3DSERIES" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QSurfaceDataArray *array() const
*/

/*
const QSurfaceDataItem *itemAt(int rowIndex, int columnIndex) const
*/
void QSurfaceDataProxy_itemAt1 ()
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      const QSurfaceDataItem * ptr = obj->itemAt ( PINT(1), PINT(2) );
      _qt5xhb_createReturnClass ( ptr, "QSURFACEDATAITEM", false );
  }
}

/*
const QSurfaceDataItem *itemAt(const QPoint &position) const
*/
void QSurfaceDataProxy_itemAt2 ()
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      const QSurfaceDataItem * ptr = obj->itemAt ( *PQPOINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QSURFACEDATAITEM", false );
  }
}

//[1]const QSurfaceDataItem *itemAt(int rowIndex, int columnIndex) const
//[2]const QSurfaceDataItem *itemAt(const QPoint &position) const

HB_FUNC_STATIC( QSURFACEDATAPROXY_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QSurfaceDataProxy_itemAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QSurfaceDataProxy_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resetArray(QSurfaceDataArray *newArray)
*/

/*
void setRow(int rowIndex, QSurfaceDataRow *row)
*/

/*
void setRows(int rowIndex, const QSurfaceDataArray &rows)
*/

/*
void setItem(int rowIndex, int columnIndex, const QSurfaceDataItem &item)
*/
void QSurfaceDataProxy_setItem1 ()
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setItem ( PINT(1), PINT(2), *PQSURFACEDATAITEM(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItem(const QPoint &position, const QSurfaceDataItem &item)
*/
void QSurfaceDataProxy_setItem2 ()
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setItem ( *PQPOINT(1), *PQSURFACEDATAITEM(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setItem(int rowIndex, int columnIndex, const QSurfaceDataItem &item)
//[2]void setItem(const QPoint &position, const QSurfaceDataItem &item)

HB_FUNC_STATIC( QSURFACEDATAPROXY_SETITEM )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSURFACEDATAITEM(3) )
  {
    QSurfaceDataProxy_setItem1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSURFACEDATAITEM(2) )
  {
    QSurfaceDataProxy_setItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int addRow(QSurfaceDataRow *row)
*/

/*
int addRows(const QSurfaceDataArray &rows)
*/

/*
void insertRow(int rowIndex, QSurfaceDataRow *row)
*/

/*
void insertRows(int rowIndex, const QSurfaceDataArray &rows)
*/

/*
void removeRows(int rowIndex, int removeCount)
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_REMOVEROWS )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->removeRows ( PINT(1), PINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QSurfaceDataProxySlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONARRAYRESET )
{
  QSurfaceDataProxySlots_connect_signal( "arrayReset()", "arrayReset()" );
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONCOLUMNCOUNTCHANGED )
{
  QSurfaceDataProxySlots_connect_signal( "columnCountChanged(int)", "columnCountChanged(int)" );
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONITEMCHANGED )
{
  QSurfaceDataProxySlots_connect_signal( "itemChanged(int,int)", "itemChanged(int,int)" );
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWCOUNTCHANGED )
{
  QSurfaceDataProxySlots_connect_signal( "rowCountChanged(int)", "rowCountChanged(int)" );
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSADDED )
{
  QSurfaceDataProxySlots_connect_signal( "rowsAdded(int,int)", "rowsAdded(int,int)" );
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSCHANGED )
{
  QSurfaceDataProxySlots_connect_signal( "rowsChanged(int,int)", "rowsChanged(int,int)" );
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSINSERTED )
{
  QSurfaceDataProxySlots_connect_signal( "rowsInserted(int,int)", "rowsInserted(int,int)" );
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSREMOVED )
{
  QSurfaceDataProxySlots_connect_signal( "rowsRemoved(int,int)", "rowsRemoved(int,int)" );
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONSERIESCHANGED )
{
  QSurfaceDataProxySlots_connect_signal( "seriesChanged(QSurface3DSeries*)", "seriesChanged(QSurface3DSeries*)" );
}

#pragma ENDDUMP
