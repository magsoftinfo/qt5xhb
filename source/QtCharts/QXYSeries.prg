/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QXYSeries INHERIT QAbstractSeries

   METHOD delete

   METHOD append
   METHOD at
   METHOD brush
   METHOD clear
   METHOD color
   METHOD count
   METHOD insert
   METHOD pen
   METHOD pointLabelsClipping
   METHOD pointLabelsColor
   METHOD pointLabelsFont
   METHOD pointLabelsFormat
   METHOD pointLabelsVisible
   METHOD points
   METHOD pointsVector
   METHOD pointsVisible
   METHOD remove
   METHOD removePoints
   METHOD replace
   METHOD setBrush
   METHOD setColor
   METHOD setPen
   METHOD setPointLabelsClipping
   METHOD setPointLabelsColor
   METHOD setPointLabelsFont
   METHOD setPointLabelsFormat
   METHOD setPointLabelsVisible
   METHOD setPointsVisible

   METHOD onClicked
   METHOD onColorChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPenChanged
   METHOD onPointAdded
   METHOD onPointLabelsClippingChanged
   METHOD onPointLabelsColorChanged
   METHOD onPointLabelsFontChanged
   METHOD onPointLabelsFormatChanged
   METHOD onPointLabelsVisibilityChanged
   METHOD onPointRemoved
   METHOD onPointReplaced
   METHOD onPointsRemoved
   METHOD onPointsReplaced
   METHOD onPressed
   METHOD onReleased

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXYSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXYSeries>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXYSeries>
#endif

using namespace QtCharts;

/*
explicit QXYSeries(QXYSeriesPrivate &d, QObject *parent = Q_NULLPTR) (protected)
*/

/*
~QXYSeries()
*/
HB_FUNC_STATIC( QXYSERIES_DELETE )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
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
bool pointsVisible() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTSVISIBLE )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->pointsVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPointsVisible(bool visible = true)
*/
HB_FUNC_STATIC( QXYSERIES_SETPOINTSVISIBLE )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setPointsVisible ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QColor color() const
*/
HB_FUNC_STATIC( QXYSERIES_COLOR )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->color () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setColor(const QColor &color)
*/
HB_FUNC_STATIC( QXYSERIES_SETCOLOR )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
      obj->setColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString pointLabelsFormat() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTLABELSFORMAT )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->pointLabelsFormat () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPointLabelsFormat(const QString &format)
*/
HB_FUNC_STATIC( QXYSERIES_SETPOINTLABELSFORMAT )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setPointLabelsFormat ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool pointLabelsVisible() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTLABELSVISIBLE )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->pointLabelsVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPointLabelsVisible(bool visible = true)
*/
HB_FUNC_STATIC( QXYSERIES_SETPOINTLABELSVISIBLE )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setPointLabelsVisible ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFont pointLabelsFont() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTLABELSFONT )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->pointLabelsFont () );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPointLabelsFont(const QFont &font)
*/
HB_FUNC_STATIC( QXYSERIES_SETPOINTLABELSFONT )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->setPointLabelsFont ( *PQFONT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor pointLabelsColor() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTLABELSCOLOR )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->pointLabelsColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPointLabelsColor(const QColor &color)
*/
HB_FUNC_STATIC( QXYSERIES_SETPOINTLABELSCOLOR )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
      obj->setPointLabelsColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool pointLabelsClipping() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTLABELSCLIPPING )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->pointLabelsClipping () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPointLabelsClipping(bool enabled = true)
*/
HB_FUNC_STATIC( QXYSERIES_SETPOINTLABELSCLIPPING )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setPointLabelsClipping ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void append(qreal x, qreal y)
*/
void QXYSeries_append1 ()
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->append ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void append(const QPointF &point)
*/
void QXYSeries_append2 ()
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->append ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void append(const QList<QPointF> &points)
*/
void QXYSeries_append3 ()
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
       QList<QPointF> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      obj->append ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void append(qreal x, qreal y)
//[2]void append(const QPointF &point)
//[3]void append(const QList<QPointF> &points)

HB_FUNC_STATIC( QXYSERIES_APPEND )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QXYSeries_append1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QXYSeries_append2();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QXYSeries_append3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void replace(qreal oldX, qreal oldY, qreal newX, qreal newY)
*/
void QXYSeries_replace1 ()
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->replace ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void replace(const QPointF &oldPoint, const QPointF &newPoint)
*/
void QXYSeries_replace2 ()
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->replace ( *PQPOINTF(1), *PQPOINTF(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void replace(int index, qreal newX, qreal newY)
*/
void QXYSeries_replace3 ()
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->replace ( PINT(1), PQREAL(2), PQREAL(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void replace(int index, const QPointF &newPoint)
*/
void QXYSeries_replace4 ()
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->replace ( PINT(1), *PQPOINTF(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void replace(QList<QPointF> points)
*/
void QXYSeries_replace5 ()
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
       QList<QPointF> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      obj->replace ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void replace(QVector<QPointF> points)
*/
void QXYSeries_replace6 ()
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
       QVector<QPointF> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      obj->replace ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void replace(qreal oldX, qreal oldY, qreal newX, qreal newY)
//[2]void replace(const QPointF &oldPoint, const QPointF &newPoint)
//[3]void replace(int index, qreal newX, qreal newY)
//[4]void replace(int index, const QPointF &newPoint)
//[5]void replace(QList<QPointF> points)
//[6]void replace(QVector<QPointF> points)

HB_FUNC_STATIC( QXYSERIES_REPLACE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QXYSeries_replace1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QXYSeries_replace2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QXYSeries_replace3();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINTF(2) )
  {
    QXYSeries_replace4();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QXYSeries_replace5();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QXYSeries_replace6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void remove(qreal x, qreal y)
*/
void QXYSeries_remove1 ()
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->remove ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void remove(const QPointF &point)
*/
void QXYSeries_remove2 ()
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->remove ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void remove(int index)
*/
void QXYSeries_remove3 ()
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->remove ( PINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void remove(qreal x, qreal y)
//[2]void remove(const QPointF &point)
//[3]void remove(int index)

HB_FUNC_STATIC( QXYSERIES_REMOVE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QXYSeries_remove1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QXYSeries_remove2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QXYSeries_remove3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void removePoints(int index, int count)
*/
HB_FUNC_STATIC( QXYSERIES_REMOVEPOINTS )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->removePoints ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insert(int index, const QPointF &point)
*/
HB_FUNC_STATIC( QXYSERIES_INSERT )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQPOINTF(2) )
    {
      obj->insert ( PINT(1), *PQPOINTF(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clear()
*/
HB_FUNC_STATIC( QXYSERIES_CLEAR )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clear ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int count() const
*/
HB_FUNC_STATIC( QXYSERIES_COUNT )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->count () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QPointF> points() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTS )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QPointF> list = obj->points ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QPOINTF" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QPointF *) new QPointF ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QPOINTF", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVector<QPointF> pointsVector() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTSVECTOR )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QVector<QPointF> list = obj->pointsVector ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QPOINTF" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QPointF *) new QPointF ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QPOINTF", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
const QPointF &at(int index) const
*/
HB_FUNC_STATIC( QXYSERIES_AT )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      const QPointF * ptr = &obj->at ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setPen(const QPen &pen)
*/
HB_FUNC_STATIC( QXYSERIES_SETPEN )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
      obj->setPen ( *PQPEN(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPen pen() const
*/
HB_FUNC_STATIC( QXYSERIES_PEN )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPen * ptr = new QPen( obj->pen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QXYSERIES_SETBRUSH )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setBrush ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBrush brush() const
*/
HB_FUNC_STATIC( QXYSERIES_BRUSH )
{
  QXYSeries * obj = (QXYSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->brush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP