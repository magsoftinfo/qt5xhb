/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QDoubleSpinBox INHERIT QAbstractSpinBox

   METHOD new
   METHOD delete
   METHOD cleanText
   METHOD decimals
   METHOD setDecimals
   METHOD maximum
   METHOD setMaximum
   METHOD minimum
   METHOD setMinimum
   METHOD prefix
   METHOD setPrefix
   METHOD setRange
   METHOD singleStep
   METHOD setSingleStep
   METHOD suffix
   METHOD setSuffix
   METHOD textFromValue
   METHOD value
   METHOD setValue
   METHOD valueFromText
   METHOD fixup
   METHOD validate

   METHOD onValueChanged1
   METHOD onValueChanged2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDoubleSpinBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDoubleSpinBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDoubleSpinBox>
#endif

/*
prototype=explicit QDoubleSpinBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QDoubleSpinBox * o = new QDoubleSpinBox ( OPQWIDGET(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOUBLESPINBOX_DELETE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString cleanText () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_CLEANTEXT )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->cleanText () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int decimals () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_DECIMALS )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->decimals () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDecimals ( int prec )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETDECIMALS )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDecimals ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
double maximum () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_MAXIMUM )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RDOUBLE( obj->maximum () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMaximum ( double max )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETMAXIMUM )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMaximum ( PDOUBLE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
double minimum () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_MINIMUM )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RDOUBLE( obj->minimum () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMinimum ( double min )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETMINIMUM )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMinimum ( PDOUBLE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString prefix () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_PREFIX )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->prefix () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPrefix ( const QString & prefix )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETPREFIX )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setPrefix ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRange ( double min, double max )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETRANGE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->setRange ( PDOUBLE(1), PDOUBLE(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
double singleStep () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SINGLESTEP )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RDOUBLE( obj->singleStep () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSingleStep ( double val )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETSINGLESTEP )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSingleStep ( PDOUBLE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString suffix () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SUFFIX )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->suffix () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSuffix ( const QString & suffix )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETSUFFIX )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setSuffix ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QString textFromValue ( double value ) const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_TEXTFROMVALUE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RQSTRING( obj->textFromValue ( PDOUBLE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
double value () const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_VALUE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RDOUBLE( obj->value () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setValue ( double val )
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_SETVALUE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setValue ( PDOUBLE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual double valueFromText ( const QString & text ) const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_VALUEFROMTEXT )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RDOUBLE( obj->valueFromText ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void fixup ( QString & str ) const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_FIXUP )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QString par1 = hb_parc(1);
      obj->fixup ( par1 );
      hb_storc( QSTRINGTOSTRING(par1), 1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QValidator::State validate ( QString & text, int & pos ) const
*/
HB_FUNC_STATIC( QDOUBLESPINBOX_VALIDATE )
{
  QDoubleSpinBox * obj = (QDoubleSpinBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
      QString par1 = hb_parc(1);
int par2;
      RENUM( obj->validate ( par1, par2 ) );
      hb_storc( QSTRINGTOSTRING(par1), 1);
hb_storni( par2, 2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
