/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QAreaSeries INHERIT QAbstractSeries

   METHOD new
   METHOD delete

   METHOD borderColor
   METHOD brush
   METHOD color
   METHOD lowerSeries
   METHOD pen
   METHOD pointLabelsClipping
   METHOD pointLabelsColor
   METHOD pointLabelsFont
   METHOD pointLabelsFormat
   METHOD pointLabelsVisible
   METHOD pointsVisible
   METHOD setBorderColor
   METHOD setBrush
   METHOD setColor
   METHOD setLowerSeries
   METHOD setPen
   METHOD setPointLabelsClipping
   METHOD setPointLabelsColor
   METHOD setPointLabelsFont
   METHOD setPointLabelsFormat
   METHOD setPointLabelsVisible
   METHOD setPointsVisible
   METHOD setUpperSeries
   METHOD type
   METHOD upperSeries

   METHOD onBorderColorChanged
   METHOD onClicked
   METHOD onColorChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPointLabelsClippingChanged
   METHOD onPointLabelsColorChanged
   METHOD onPointLabelsFontChanged
   METHOD onPointLabelsFormatChanged
   METHOD onPointLabelsVisibilityChanged
   METHOD onPressed
   METHOD onReleased
   METHOD onSelected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAreaSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QAreaSeries>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QAreaSeries>
#endif
#endif

#include <QLineSeries>

using namespace QtCharts;

/*
explicit QAreaSeries(QObject *parent = Q_NULLPTR)
*/
void QAreaSeries_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * o = new QAreaSeries ( OPQOBJECT(1,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
explicit QAreaSeries(QLineSeries *upperSeries, QLineSeries *lowerSeries = Q_NULLPTR)
*/
void QAreaSeries_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * o = new QAreaSeries ( PQLINESERIES(1), OPQLINESERIES(2,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

//[1]explicit QAreaSeries(QObject *parent = Q_NULLPTR)
//[2]explicit QAreaSeries(QLineSeries *upperSeries, QLineSeries *lowerSeries = Q_NULLPTR)

HB_FUNC_STATIC( QAREASERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QAreaSeries_new1();
  }
  else if( ISBETWEEN(1,2) && ISQLINESERIES(1) && (ISQLINESERIES(2)||ISNIL(2)) )
  {
    QAreaSeries_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QAreaSeries()
*/
HB_FUNC_STATIC( QAREASERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QLineSeries *upperSeries() const
*/
HB_FUNC_STATIC( QAREASERIES_UPPERSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QLineSeries * ptr = obj->upperSeries ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QLINESERIES" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QLineSeries *lowerSeries() const
*/
HB_FUNC_STATIC( QAREASERIES_LOWERSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QLineSeries * ptr = obj->lowerSeries ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QLINESERIES" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QColor color() const
*/
HB_FUNC_STATIC( QAREASERIES_COLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void setColor(const QColor &color)
*/
HB_FUNC_STATIC( QAREASERIES_SETCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QColor borderColor() const
*/
HB_FUNC_STATIC( QAREASERIES_BORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->borderColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setBorderColor(const QColor &color)
*/
HB_FUNC_STATIC( QAREASERIES_SETBORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
      obj->setBorderColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString pointLabelsFormat() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void setPointLabelsFormat(const QString &format)
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
bool pointLabelsVisible() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void setPointLabelsVisible(bool visible = true)
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QFont pointLabelsFont() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void setPointLabelsFont(const QFont &font)
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QColor pointLabelsColor() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void setPointLabelsColor(const QColor &color)
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
bool pointLabelsClipping() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSCLIPPING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void setPointLabelsClipping(bool enabled = true)
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSCLIPPING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QAbstractSeries::SeriesType type() const
*/
HB_FUNC_STATIC( QAREASERIES_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->type () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setUpperSeries(QLineSeries *series)
*/
HB_FUNC_STATIC( QAREASERIES_SETUPPERSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQLINESERIES(1) )
    {
      obj->setUpperSeries ( PQLINESERIES(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setLowerSeries(QLineSeries *series)
*/
HB_FUNC_STATIC( QAREASERIES_SETLOWERSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQLINESERIES(1) )
    {
      obj->setLowerSeries ( PQLINESERIES(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setPen(const QPen &pen)
*/
HB_FUNC_STATIC( QAREASERIES_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QPen pen() const
*/
HB_FUNC_STATIC( QAREASERIES_PEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void setBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QAREASERIES_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QBrush brush() const
*/
HB_FUNC_STATIC( QAREASERIES_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void setPointsVisible(bool visible = true)
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
bool pointsVisible() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

void QAreaSeriesSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QAREASERIES_ONBORDERCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "borderColorChanged(QColor)", "borderColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "clicked(QPointF)", "clicked(QPointF)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "colorChanged(QColor)", "colorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "doubleClicked(QPointF)", "doubleClicked(QPointF)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "hovered(QPointF,bool)", "hovered(QPointF,bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSCLIPPINGCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "pointLabelsClippingChanged(bool)", "pointLabelsClippingChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "pointLabelsColorChanged(QColor)", "pointLabelsColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSFONTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "pointLabelsFontChanged(QFont)", "pointLabelsFontChanged(QFont)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSFORMATCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "pointLabelsFormatChanged(QString)", "pointLabelsFormatChanged(QString)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSVISIBILITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "pointLabelsVisibilityChanged(bool)", "pointLabelsVisibilityChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "pressed(QPointF)", "pressed(QPointF)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "released(QPointF)", "released(QPointF)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONSELECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "selected()", "selected()" );
#else
  hb_retl( false );
#endif
}


#pragma ENDDUMP
