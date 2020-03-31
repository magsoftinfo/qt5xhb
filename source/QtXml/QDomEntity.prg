/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDomEntity INHERIT QDomNode

   METHOD new
   METHOD delete
   METHOD nodeType
   METHOD notationName
   METHOD publicId
   METHOD systemId

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomEntity
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXml/QDomEntity>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtXml/QDomEntity>
#endif

/*
QDomEntity ()
*/
void QDomEntity_new1()
{
  QDomEntity * o = new QDomEntity();
  Qt5xHb::returnNewObject( o, true );
}

/*
QDomEntity ( const QDomEntity & x )
*/
void QDomEntity_new2()
{
  QDomEntity * o = new QDomEntity( *PQDOMENTITY(1) );
  Qt5xHb::returnNewObject( o, true );
}

//[1]QDomEntity ()
//[2]QDomEntity ( const QDomEntity & x )

HB_FUNC_STATIC( QDOMENTITY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomEntity_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMENTITY(1) )
  {
    QDomEntity_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMENTITY_DELETE )
{
  QDomEntity * obj = (QDomEntity *) Qt5xHb::itemGetPtrStackSelfItem();

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
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMENTITY_NODETYPE )
{
  QDomEntity * obj = (QDomEntity *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->nodeType() );
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
QString notationName () const
*/
HB_FUNC_STATIC( QDOMENTITY_NOTATIONNAME )
{
  QDomEntity * obj = (QDomEntity *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->notationName() );
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
QString publicId () const
*/
HB_FUNC_STATIC( QDOMENTITY_PUBLICID )
{
  QDomEntity * obj = (QDomEntity *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->publicId() );
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
QString systemId () const
*/
HB_FUNC_STATIC( QDOMENTITY_SYSTEMID )
{
  QDomEntity * obj = (QDomEntity *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->systemId() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
