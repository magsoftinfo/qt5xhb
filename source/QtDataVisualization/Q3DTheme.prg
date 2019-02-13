/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QFONT
REQUEST QLINEARGRADIENT
#endif

CLASS Q3DTheme INHERIT QObject

   METHOD new
   METHOD delete
   METHOD type
   METHOD setType
   METHOD baseColors
   METHOD setBaseColors
   METHOD backgroundColor
   METHOD setBackgroundColor
   METHOD windowColor
   METHOD setWindowColor
   METHOD labelTextColor
   METHOD setLabelTextColor
   METHOD labelBackgroundColor
   METHOD setLabelBackgroundColor
   METHOD gridLineColor
   METHOD setGridLineColor
   METHOD singleHighlightColor
   METHOD setSingleHighlightColor
   METHOD multiHighlightColor
   METHOD setMultiHighlightColor
   METHOD lightColor
   METHOD setLightColor
   METHOD baseGradients
   METHOD setBaseGradients
   METHOD singleHighlightGradient
   METHOD setSingleHighlightGradient
   METHOD multiHighlightGradient
   METHOD setMultiHighlightGradient
   METHOD lightStrength
   METHOD setLightStrength
   METHOD ambientLightStrength
   METHOD setAmbientLightStrength
   METHOD highlightLightStrength
   METHOD setHighlightLightStrength
   METHOD isLabelBorderEnabled
   METHOD setLabelBorderEnabled
   METHOD font
   METHOD setFont
   METHOD isBackgroundEnabled
   METHOD setBackgroundEnabled
   METHOD isGridEnabled
   METHOD setGridEnabled
   METHOD isLabelBackgroundEnabled
   METHOD setLabelBackgroundEnabled
   METHOD colorStyle
   METHOD setColorStyle

   METHOD onAmbientLightStrengthChanged
   METHOD onBackgroundColorChanged
   METHOD onBackgroundEnabledChanged
   METHOD onBaseColorsChanged
   METHOD onBaseGradientsChanged
   METHOD onColorStyleChanged
   METHOD onFontChanged
   METHOD onGridEnabledChanged
   METHOD onGridLineColorChanged
   METHOD onHighlightLightStrengthChanged
   METHOD onLabelBackgroundColorChanged
   METHOD onLabelBackgroundEnabledChanged
   METHOD onLabelBorderEnabledChanged
   METHOD onLabelTextColorChanged
   METHOD onLightColorChanged
   METHOD onLightStrengthChanged
   METHOD onMultiHighlightColorChanged
   METHOD onMultiHighlightGradientChanged
   METHOD onSingleHighlightColorChanged
   METHOD onSingleHighlightGradientChanged
   METHOD onTypeChanged
   METHOD onWindowColorChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS Q3DTheme
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/Q3DTheme>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/Q3DTheme>
#endif

using namespace QtDataVisualization;

/*
explicit Q3DTheme(QObject *parent = Q_NULLPTR)
*/
void Q3DTheme_new1 ()
{
  Q3DTheme * o = new Q3DTheme ( OPQOBJECT(1,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit Q3DTheme(Theme themeType, QObject *parent = Q_NULLPTR)
*/
void Q3DTheme_new2 ()
{
  Q3DTheme * o = new Q3DTheme ( (Q3DTheme::Theme) hb_parni(1), OPQOBJECT(2,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit Q3DTheme(Q3DThemePrivate *d, Theme themeType, QObject *parent = Q_NULLPTR) [protected]
*/

//[1]explicit Q3DTheme(QObject *parent = Q_NULLPTR)
//[2]explicit Q3DTheme(Theme themeType, QObject *parent = Q_NULLPTR)
//[3]explicit Q3DTheme(Q3DThemePrivate *d, Theme themeType, QObject *parent = Q_NULLPTR) [protected]

HB_FUNC_STATIC( Q3DTHEME_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    Q3DTheme_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    Q3DTheme_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~Q3DTheme()
*/
HB_FUNC_STATIC( Q3DTHEME_DELETE )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

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
Theme type() const
*/
HB_FUNC_STATIC( Q3DTHEME_TYPE )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type () );
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
void setType(Theme themeType)
*/
HB_FUNC_STATIC( Q3DTHEME_SETTYPE )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setType ( (Q3DTheme::Theme) hb_parni(1) );
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

/*
QList<QColor> baseColors() const
*/
HB_FUNC_STATIC( Q3DTHEME_BASECOLORS )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QColor> list = obj->baseColors ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QCOLOR" );
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
          hb_itemPutPtr( pItem, (QColor *) new QColor ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCOLOR", HB_ERR_ARGS_BASEPARAMS );
        }
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
}

/*
void setBaseColors(const QList<QColor> &colors)
*/
HB_FUNC_STATIC( Q3DTHEME_SETBASECOLORS )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      QList<QColor> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      obj->setBaseColors ( par1 );
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

/*
QColor backgroundColor() const
*/
HB_FUNC_STATIC( Q3DTHEME_BACKGROUNDCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->backgroundColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setBackgroundColor(const QColor &color)
*/
HB_FUNC_STATIC( Q3DTHEME_SETBACKGROUNDCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setBackgroundColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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

/*
QColor windowColor() const
*/
HB_FUNC_STATIC( Q3DTHEME_WINDOWCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->windowColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setWindowColor(const QColor &color)
*/
HB_FUNC_STATIC( Q3DTHEME_SETWINDOWCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setWindowColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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

/*
QColor labelTextColor() const
*/
HB_FUNC_STATIC( Q3DTHEME_LABELTEXTCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->labelTextColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setLabelTextColor(const QColor &color)
*/
HB_FUNC_STATIC( Q3DTHEME_SETLABELTEXTCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setLabelTextColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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

/*
QColor labelBackgroundColor() const
*/
HB_FUNC_STATIC( Q3DTHEME_LABELBACKGROUNDCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->labelBackgroundColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setLabelBackgroundColor(const QColor &color)
*/
HB_FUNC_STATIC( Q3DTHEME_SETLABELBACKGROUNDCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setLabelBackgroundColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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

/*
QColor gridLineColor() const
*/
HB_FUNC_STATIC( Q3DTHEME_GRIDLINECOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->gridLineColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setGridLineColor(const QColor &color)
*/
HB_FUNC_STATIC( Q3DTHEME_SETGRIDLINECOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setGridLineColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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

/*
QColor singleHighlightColor() const
*/
HB_FUNC_STATIC( Q3DTHEME_SINGLEHIGHLIGHTCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->singleHighlightColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setSingleHighlightColor(const QColor &color)
*/
HB_FUNC_STATIC( Q3DTHEME_SETSINGLEHIGHLIGHTCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setSingleHighlightColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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

/*
QColor multiHighlightColor() const
*/
HB_FUNC_STATIC( Q3DTHEME_MULTIHIGHLIGHTCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->multiHighlightColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setMultiHighlightColor(const QColor &color)
*/
HB_FUNC_STATIC( Q3DTHEME_SETMULTIHIGHLIGHTCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setMultiHighlightColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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

/*
QColor lightColor() const
*/
HB_FUNC_STATIC( Q3DTHEME_LIGHTCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->lightColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setLightColor(const QColor &color)
*/
HB_FUNC_STATIC( Q3DTHEME_SETLIGHTCOLOR )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setLightColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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

/*
QList<QLinearGradient> baseGradients() const
*/
HB_FUNC_STATIC( Q3DTHEME_BASEGRADIENTS )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QLinearGradient> list = obj->baseGradients ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QLINEARGRADIENT" );
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
          hb_itemPutPtr( pItem, (QLinearGradient *) new QLinearGradient ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QLINEARGRADIENT", HB_ERR_ARGS_BASEPARAMS );
        }
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
}

/*
void setBaseGradients(const QList<QLinearGradient> &gradients)
*/
HB_FUNC_STATIC( Q3DTHEME_SETBASEGRADIENTS )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      QList<QLinearGradient> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QLinearGradient *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      obj->setBaseGradients ( par1 );
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

/*
QLinearGradient singleHighlightGradient() const
*/
HB_FUNC_STATIC( Q3DTHEME_SINGLEHIGHLIGHTGRADIENT )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLinearGradient * ptr = new QLinearGradient( obj->singleHighlightGradient () );
      _qt5xhb_createReturnClass ( ptr, "QLINEARGRADIENT", true );
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
void setSingleHighlightGradient(const QLinearGradient &gradient)
*/
HB_FUNC_STATIC( Q3DTHEME_SETSINGLEHIGHLIGHTGRADIENT )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLINEARGRADIENT(1) )
    {
#endif
      obj->setSingleHighlightGradient ( *PQLINEARGRADIENT(1) );
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

/*
QLinearGradient multiHighlightGradient() const
*/
HB_FUNC_STATIC( Q3DTHEME_MULTIHIGHLIGHTGRADIENT )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLinearGradient * ptr = new QLinearGradient( obj->multiHighlightGradient () );
      _qt5xhb_createReturnClass ( ptr, "QLINEARGRADIENT", true );
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
void setMultiHighlightGradient(const QLinearGradient &gradient)
*/
HB_FUNC_STATIC( Q3DTHEME_SETMULTIHIGHLIGHTGRADIENT )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLINEARGRADIENT(1) )
    {
#endif
      obj->setMultiHighlightGradient ( *PQLINEARGRADIENT(1) );
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

/*
float lightStrength() const
*/
HB_FUNC_STATIC( Q3DTHEME_LIGHTSTRENGTH )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->lightStrength () );
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
void setLightStrength(float strength)
*/
HB_FUNC_STATIC( Q3DTHEME_SETLIGHTSTRENGTH )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLightStrength ( PFLOAT(1) );
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

/*
float ambientLightStrength() const
*/
HB_FUNC_STATIC( Q3DTHEME_AMBIENTLIGHTSTRENGTH )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->ambientLightStrength () );
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
void setAmbientLightStrength(float strength)
*/
HB_FUNC_STATIC( Q3DTHEME_SETAMBIENTLIGHTSTRENGTH )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setAmbientLightStrength ( PFLOAT(1) );
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

/*
float highlightLightStrength() const
*/
HB_FUNC_STATIC( Q3DTHEME_HIGHLIGHTLIGHTSTRENGTH )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->highlightLightStrength () );
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
void setHighlightLightStrength(float strength)
*/
HB_FUNC_STATIC( Q3DTHEME_SETHIGHLIGHTLIGHTSTRENGTH )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setHighlightLightStrength ( PFLOAT(1) );
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

/*
bool isLabelBorderEnabled() const
*/
HB_FUNC_STATIC( Q3DTHEME_ISLABELBORDERENABLED )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLabelBorderEnabled () );
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
void setLabelBorderEnabled(bool enabled)
*/
HB_FUNC_STATIC( Q3DTHEME_SETLABELBORDERENABLED )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setLabelBorderEnabled ( PBOOL(1) );
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

/*
QFont font() const
*/
HB_FUNC_STATIC( Q3DTHEME_FONT )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFont * ptr = new QFont( obj->font () );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
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
void setFont(const QFont &font)
*/
HB_FUNC_STATIC( Q3DTHEME_SETFONT )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
#endif
      obj->setFont ( *PQFONT(1) );
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

/*
bool isBackgroundEnabled() const
*/
HB_FUNC_STATIC( Q3DTHEME_ISBACKGROUNDENABLED )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBackgroundEnabled () );
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
void setBackgroundEnabled(bool enabled)
*/
HB_FUNC_STATIC( Q3DTHEME_SETBACKGROUNDENABLED )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setBackgroundEnabled ( PBOOL(1) );
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

/*
bool isGridEnabled() const
*/
HB_FUNC_STATIC( Q3DTHEME_ISGRIDENABLED )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isGridEnabled () );
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
void setGridEnabled(bool enabled)
*/
HB_FUNC_STATIC( Q3DTHEME_SETGRIDENABLED )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setGridEnabled ( PBOOL(1) );
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

/*
bool isLabelBackgroundEnabled() const
*/
HB_FUNC_STATIC( Q3DTHEME_ISLABELBACKGROUNDENABLED )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLabelBackgroundEnabled () );
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
void setLabelBackgroundEnabled(bool enabled)
*/
HB_FUNC_STATIC( Q3DTHEME_SETLABELBACKGROUNDENABLED )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setLabelBackgroundEnabled ( PBOOL(1) );
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

/*
ColorStyle colorStyle() const
*/
HB_FUNC_STATIC( Q3DTHEME_COLORSTYLE )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->colorStyle () );
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
void setColorStyle(ColorStyle style)
*/
HB_FUNC_STATIC( Q3DTHEME_SETCOLORSTYLE )
{
  Q3DTheme * obj = (Q3DTheme *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setColorStyle ( (Q3DTheme::ColorStyle) hb_parni(1) );
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

void Q3DThemeSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( Q3DTHEME_ONAMBIENTLIGHTSTRENGTHCHANGED )
{
  Q3DThemeSlots_connect_signal( "ambientLightStrengthChanged(float)", "ambientLightStrengthChanged(float)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONBACKGROUNDCOLORCHANGED )
{
  Q3DThemeSlots_connect_signal( "backgroundColorChanged(QColor)", "backgroundColorChanged(QColor)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONBACKGROUNDENABLEDCHANGED )
{
  Q3DThemeSlots_connect_signal( "backgroundEnabledChanged(bool)", "backgroundEnabledChanged(bool)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONBASECOLORSCHANGED )
{
  Q3DThemeSlots_connect_signal( "baseColorsChanged(QList<QColor>)", "baseColorsChanged(QList<QColor>)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONBASEGRADIENTSCHANGED )
{
  Q3DThemeSlots_connect_signal( "baseGradientsChanged(QList<QLinearGradient>)", "baseGradientsChanged(QList<QLinearGradient>)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONCOLORSTYLECHANGED )
{
  Q3DThemeSlots_connect_signal( "colorStyleChanged(Q3DTheme::ColorStyle)", "colorStyleChanged(Q3DTheme::ColorStyle)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONFONTCHANGED )
{
  Q3DThemeSlots_connect_signal( "fontChanged(QFont)", "fontChanged(QFont)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONGRIDENABLEDCHANGED )
{
  Q3DThemeSlots_connect_signal( "gridEnabledChanged(bool)", "gridEnabledChanged(bool)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONGRIDLINECOLORCHANGED )
{
  Q3DThemeSlots_connect_signal( "gridLineColorChanged(QColor)", "gridLineColorChanged(QColor)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONHIGHLIGHTLIGHTSTRENGTHCHANGED )
{
  Q3DThemeSlots_connect_signal( "highlightLightStrengthChanged(float)", "highlightLightStrengthChanged(float)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONLABELBACKGROUNDCOLORCHANGED )
{
  Q3DThemeSlots_connect_signal( "labelBackgroundColorChanged(QColor)", "labelBackgroundColorChanged(QColor)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONLABELBACKGROUNDENABLEDCHANGED )
{
  Q3DThemeSlots_connect_signal( "labelBackgroundEnabledChanged(bool)", "labelBackgroundEnabledChanged(bool)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONLABELBORDERENABLEDCHANGED )
{
  Q3DThemeSlots_connect_signal( "labelBorderEnabledChanged(bool)", "labelBorderEnabledChanged(bool)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONLABELTEXTCOLORCHANGED )
{
  Q3DThemeSlots_connect_signal( "labelTextColorChanged(QColor)", "labelTextColorChanged(QColor)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONLIGHTCOLORCHANGED )
{
  Q3DThemeSlots_connect_signal( "lightColorChanged(QColor)", "lightColorChanged(QColor)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONLIGHTSTRENGTHCHANGED )
{
  Q3DThemeSlots_connect_signal( "lightStrengthChanged(float)", "lightStrengthChanged(float)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONMULTIHIGHLIGHTCOLORCHANGED )
{
  Q3DThemeSlots_connect_signal( "multiHighlightColorChanged(QColor)", "multiHighlightColorChanged(QColor)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONMULTIHIGHLIGHTGRADIENTCHANGED )
{
  Q3DThemeSlots_connect_signal( "multiHighlightGradientChanged(QLinearGradient)", "multiHighlightGradientChanged(QLinearGradient)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONSINGLEHIGHLIGHTCOLORCHANGED )
{
  Q3DThemeSlots_connect_signal( "singleHighlightColorChanged(QColor)", "singleHighlightColorChanged(QColor)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONSINGLEHIGHLIGHTGRADIENTCHANGED )
{
  Q3DThemeSlots_connect_signal( "singleHighlightGradientChanged(QLinearGradient)", "singleHighlightGradientChanged(QLinearGradient)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONTYPECHANGED )
{
  Q3DThemeSlots_connect_signal( "typeChanged(Q3DTheme::Theme)", "typeChanged(Q3DTheme::Theme)" );
}

HB_FUNC_STATIC( Q3DTHEME_ONWINDOWCOLORCHANGED )
{
  Q3DThemeSlots_connect_signal( "windowColorChanged(QColor)", "windowColorChanged(QColor)" );
}

#pragma ENDDUMP
