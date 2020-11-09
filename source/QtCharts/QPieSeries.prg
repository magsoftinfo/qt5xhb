/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPIESLICE
#endif

CLASS QPieSeries INHERIT QAbstractSeries

   METHOD new
   METHOD delete
   METHOD horizontalPosition
   METHOD setHorizontalPosition
   METHOD verticalPosition
   METHOD setVerticalPosition
   METHOD pieSize
   METHOD setPieSize
   METHOD pieStartAngle
   METHOD setPieStartAngle
   METHOD pieEndAngle
   METHOD setPieEndAngle
   METHOD count
   METHOD sum
   METHOD holeSize
   METHOD setHoleSize
   METHOD type
   METHOD append
   METHOD insert
   METHOD remove
   METHOD take
   METHOD clear
   METHOD slices
   METHOD isEmpty
   METHOD setLabelsVisible
   METHOD setLabelsPosition

   METHOD onAdded
   METHOD onClicked
   METHOD onCountChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPressed
   METHOD onReleased
   METHOD onRemoved
   METHOD onSumChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPieSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QPieSeries>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QPieSeries>
#endif
#endif

using namespace QtCharts;

/*
explicit QPieSeries(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QPIESERIES_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QPieSeries * obj = new QPieSeries( OPQOBJECT(1,Q_NULLPTR) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
virtual ~QPieSeries()
*/
HB_FUNC_STATIC( QPIESERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal horizontalPosition() const
*/
HB_FUNC_STATIC( QPIESERIES_HORIZONTALPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->horizontalPosition() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setHorizontalPosition(qreal relativePosition)
*/
HB_FUNC_STATIC( QPIESERIES_SETHORIZONTALPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setHorizontalPosition( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal verticalPosition() const
*/
HB_FUNC_STATIC( QPIESERIES_VERTICALPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->verticalPosition() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setVerticalPosition(qreal relativePosition)
*/
HB_FUNC_STATIC( QPIESERIES_SETVERTICALPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setVerticalPosition( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal pieSize() const
*/
HB_FUNC_STATIC( QPIESERIES_PIESIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->pieSize() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPieSize(qreal relativeSize)
*/
HB_FUNC_STATIC( QPIESERIES_SETPIESIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPieSize( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal pieStartAngle() const
*/
HB_FUNC_STATIC( QPIESERIES_PIESTARTANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->pieStartAngle() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPieStartAngle(qreal startAngle)
*/
HB_FUNC_STATIC( QPIESERIES_SETPIESTARTANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPieStartAngle( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
qreal pieEndAngle() const
*/
HB_FUNC_STATIC( QPIESERIES_PIEENDANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->pieEndAngle() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPieEndAngle(qreal endAngle)
*/
HB_FUNC_STATIC( QPIESERIES_SETPIEENDANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPieEndAngle( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int count() const
*/
HB_FUNC_STATIC( QPIESERIES_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
qreal sum() const
*/
HB_FUNC_STATIC( QPIESERIES_SUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->sum() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
qreal holeSize() const
*/
HB_FUNC_STATIC( QPIESERIES_HOLESIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->holeSize() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setHoleSize(qreal holeSize)
*/
HB_FUNC_STATIC( QPIESERIES_SETHOLESIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setHoleSize( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QAbstractSeries::SeriesType type() const
*/
HB_FUNC_STATIC( QPIESERIES_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool append(QPieSlice *slice)
*/
void QPieSeries_append1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->append( PQPIESLICE(1) ) );
  }
#endif
}

/*
bool append(QList<QPieSlice *> slices)
*/
void QPieSeries_append2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QPieSlice *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QPieSlice *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    RBOOL( obj->append( par1 ) );
  }
#endif
}

/*
QPieSlice *append(QString label, qreal value)
*/
void QPieSeries_append3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPieSlice * ptr = obj->append( PQSTRING(1), PQREAL(2) );
    Qt5xHb::createReturnQObjectClass( ptr, "QPIESLICE" );
  }
#endif
}

HB_FUNC_STATIC( QPIESERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQPIESLICE(1) )
  {
    QPieSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPieSeries_append2();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) )
  {
    QPieSeries_append3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool insert(int index, QPieSlice *slice)
*/
HB_FUNC_STATIC( QPIESERIES_INSERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQPIESLICE(2) )
    {
#endif
      RBOOL( obj->insert( PINT(1), PQPIESLICE(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool remove(QPieSlice *slice)
*/
HB_FUNC_STATIC( QPIESERIES_REMOVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIESLICE(1) )
    {
#endif
      RBOOL( obj->remove( PQPIESLICE(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool take(QPieSlice *slice)
*/
HB_FUNC_STATIC( QPIESERIES_TAKE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIESLICE(1) )
    {
#endif
      RBOOL( obj->take( PQPIESLICE(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void clear()
*/
HB_FUNC_STATIC( QPIESERIES_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QPieSlice *> slices() const
*/
HB_FUNC_STATIC( QPIESERIES_SLICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QPieSlice *> list = obj->slices();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QPIESLICE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QPieSlice *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QPIESLICE", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPIESERIES_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setLabelsVisible(bool visible = true)
*/
HB_FUNC_STATIC( QPIESERIES_SETLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISLOG(1)||ISNIL(1)) )
    {
#endif
      obj->setLabelsVisible( OPBOOL(1,true) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setLabelsPosition(QPieSlice::LabelPosition position)
*/
HB_FUNC_STATIC( QPIESERIES_SETLABELSPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLabelsPosition( (QPieSlice::LabelPosition) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QPieSeriesSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QPIESERIES_ONADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeriesSlots_connect_signal( "added(QList<QPieSlice*>)", "added(QList<QPieSlice*>)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeriesSlots_connect_signal( "clicked(QPieSlice*)", "clicked(QPieSlice*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESERIES_ONCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeriesSlots_connect_signal( "countChanged()", "countChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeriesSlots_connect_signal( "doubleClicked(QPieSlice*)", "doubleClicked(QPieSlice*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeriesSlots_connect_signal( "hovered(QPieSlice*,bool)", "hovered(QPieSlice*,bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeriesSlots_connect_signal( "pressed(QPieSlice*)", "pressed(QPieSlice*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeriesSlots_connect_signal( "released(QPieSlice*)", "released(QPieSlice*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESERIES_ONREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeriesSlots_connect_signal( "removed(QList<QPieSlice*>)", "removed(QList<QPieSlice*>)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESERIES_ONSUMCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeriesSlots_connect_signal( "sumChanged()", "sumChanged()" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
