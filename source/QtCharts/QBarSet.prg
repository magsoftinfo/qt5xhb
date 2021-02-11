/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
REQUEST QFONT
REQUEST QPEN
#endif

CLASS QBarSet INHERIT QObject

   METHOD new
   METHOD delete
   METHOD label
   METHOD setLabel
   METHOD pen
   METHOD setPen
   METHOD brush
   METHOD setBrush
   METHOD labelBrush
   METHOD setLabelBrush
   METHOD labelFont
   METHOD setLabelFont
   METHOD color
   METHOD setColor
   METHOD borderColor
   METHOD setBorderColor
   METHOD labelColor
   METHOD setLabelColor
   METHOD append
   METHOD insert
   METHOD remove
   METHOD replace
   METHOD at
   METHOD count
   METHOD sum

   METHOD onBorderColorChanged
   METHOD onBrushChanged
   METHOD onClicked
   METHOD onColorChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onLabelBrushChanged
   METHOD onLabelChanged
   METHOD onLabelColorChanged
   METHOD onLabelFontChanged
   METHOD onPenChanged
   METHOD onPressed
   METHOD onReleased
   METHOD onValueChanged
   METHOD onValuesAdded
   METHOD onValuesRemoved

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBarSet
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QBarSet>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QBarSet>
#endif
#endif

using namespace QtCharts;

/*
explicit QBarSet(const QString label, QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QBARSET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QBarSet * obj = new QBarSet( PQSTRING(1), OPQOBJECT(2,Q_NULLPTR) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
virtual ~QBarSet()
*/
HB_FUNC_STATIC( QBARSET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

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
QString label() const
*/
HB_FUNC_STATIC( QBARSET_LABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->label() );
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
void setLabel(const QString label)
*/
HB_FUNC_STATIC( QBARSET_SETLABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setLabel( PQSTRING(1) );
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
QPen pen() const
*/
HB_FUNC_STATIC( QBARSET_PEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPen * ptr = new QPen( obj->pen() );
      Qt5xHb::createReturnClass( ptr, "QPEN", true );
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
void setPen(const QPen &pen)
*/
HB_FUNC_STATIC( QBARSET_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
#endif
      obj->setPen( *PQPEN(1) );
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
QBrush brush() const
*/
HB_FUNC_STATIC( QBARSET_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->brush() );
      Qt5xHb::createReturnClass( ptr, "QBRUSH", true );
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
void setBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QBARSET_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setBrush( *PQBRUSH(1) );
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
QBrush labelBrush() const
*/
HB_FUNC_STATIC( QBARSET_LABELBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->labelBrush() );
      Qt5xHb::createReturnClass( ptr, "QBRUSH", true );
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
void setLabelBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QBARSET_SETLABELBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setLabelBrush( *PQBRUSH(1) );
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
QFont labelFont() const
*/
HB_FUNC_STATIC( QBARSET_LABELFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFont * ptr = new QFont( obj->labelFont() );
      Qt5xHb::createReturnClass( ptr, "QFONT", true );
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
void setLabelFont(const QFont &font)
*/
HB_FUNC_STATIC( QBARSET_SETLABELFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
#endif
      obj->setLabelFont( *PQFONT(1) );
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
QColor color()
*/
HB_FUNC_STATIC( QBARSET_COLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->color() );
      Qt5xHb::createReturnClass( ptr, "QCOLOR", true );
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
void setColor(QColor color)
*/
HB_FUNC_STATIC( QBARSET_SETCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
#endif
      obj->setColor( *PQCOLOR(1) );
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
QColor borderColor()
*/
HB_FUNC_STATIC( QBARSET_BORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->borderColor() );
      Qt5xHb::createReturnClass( ptr, "QCOLOR", true );
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
void setBorderColor(QColor color)
*/
HB_FUNC_STATIC( QBARSET_SETBORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
#endif
      obj->setBorderColor( *PQCOLOR(1) );
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
QColor labelColor()
*/
HB_FUNC_STATIC( QBARSET_LABELCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->labelColor() );
      Qt5xHb::createReturnClass( ptr, "QCOLOR", true );
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
void setLabelColor(QColor color)
*/
HB_FUNC_STATIC( QBARSET_SETLABELCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
#endif
      obj->setLabelColor( *PQCOLOR(1) );
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
void append(const qreal value)
*/
void QBarSet_append1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->append( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void append(const QList<qreal> &values)
*/
void QBarSet_append2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<qreal> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    qreal temp1;
    for (i1=0;i1<nLen1;i1++)
    {
      temp1 = hb_arrayGetND(aList1, i1+1);
      par1 << temp1;
    }
    obj->append( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

HB_FUNC_STATIC( QBARSET_APPEND )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBarSet_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBarSet_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void insert(const int index, const qreal value)
*/
HB_FUNC_STATIC( QBARSET_INSERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->insert( PINT(1), PQREAL(2) );
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
void remove(const int index, const int count = 1)
*/
HB_FUNC_STATIC( QBARSET_REMOVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
    {
#endif
      obj->remove( PINT(1), OPINT(2,1) );
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
void replace(const int index, const qreal value)
*/
HB_FUNC_STATIC( QBARSET_REPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->replace( PINT(1), PQREAL(2) );
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
qreal at(const int index) const
*/
HB_FUNC_STATIC( QBARSET_AT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQREAL( obj->at( PINT(1) ) );
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
int count() const
*/
HB_FUNC_STATIC( QBARSET_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QBARSET_SUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) Qt5xHb::itemGetPtrStackSelfItem();

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

void QBarSetSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QBARSET_ONBORDERCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "borderColorChanged(QColor)", "borderColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "brushChanged()", "brushChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "clicked(int)", "clicked(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "colorChanged(QColor)", "colorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "doubleClicked(int)", "doubleClicked(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "hovered(bool,int)", "hovered(bool,int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONLABELBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "labelBrushChanged()", "labelBrushChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONLABELCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "labelChanged()", "labelChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONLABELCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "labelColorChanged(QColor)", "labelColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONLABELFONTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "labelFontChanged()", "labelFontChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "penChanged()", "penChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "pressed(int)", "pressed(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "released(int)", "released(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONVALUECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "valueChanged(int)", "valueChanged(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONVALUESADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "valuesAdded(int,int)", "valuesAdded(int,int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QBARSET_ONVALUESREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSetSlots_connect_signal( "valuesRemoved(int,int)", "valuesRemoved(int,int)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
