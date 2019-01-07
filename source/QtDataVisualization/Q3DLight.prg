/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS Q3DLight INHERIT Q3DObject

   METHOD new
   METHOD delete
   METHOD setAutoPosition
   METHOD isAutoPosition

   METHOD onAutoPositionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS Q3DLight
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <Q3DLight>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <Q3DLight>
#endif

using namespace QtDataVisualization;

/*
explicit Q3DLight(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( Q3DLIGHT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    Q3DLight * o = new Q3DLight ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~Q3DLight()
*/
HB_FUNC_STATIC( Q3DLIGHT_DELETE )
{
  Q3DLight * obj = (Q3DLight *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setAutoPosition(bool enabled)
*/
HB_FUNC_STATIC( Q3DLIGHT_SETAUTOPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  Q3DLight * obj = (Q3DLight *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAutoPosition ( PBOOL(1) );
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
bool isAutoPosition()
*/
HB_FUNC_STATIC( Q3DLIGHT_ISAUTOPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  Q3DLight * obj = (Q3DLight *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAutoPosition () );
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

void Q3DLightSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( Q3DLIGHT_ONAUTOPOSITIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  Q3DLightSlots_connect_signal( "autoPositionChanged(bool)", "autoPositionChanged(bool)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
