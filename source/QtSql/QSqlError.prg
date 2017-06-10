/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QSqlError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD databaseText
   METHOD setDatabaseText
   METHOD driverText
   METHOD setDriverText
   METHOD isValid
   METHOD number
   METHOD setNumber
   METHOD text
   METHOD type
   METHOD setType
   METHOD nativeErrorCode

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlError>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSqlError>
#endif

/*
QSqlError ( const QString & driverText, const QString & databaseText, ErrorType type, int number )
*/
void QSqlError_new1 ()
{
  QSqlError * o = new QSqlError ( PQSTRING(1), PQSTRING(2), (QSqlError::ErrorType) hb_parni(3), PINT(4) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSqlError(const QString &driverText = QString(), const QString &databaseText = QString(), ErrorType type = NoError, const QString &errorCode = QString())
*/
void QSqlError_new2 ()
{
  int par3 = ISNIL(3)? (int) QSqlError::NoError : hb_parni(3);
  QSqlError * o = new QSqlError ( OPQSTRING(1,QString()), OPQSTRING(2,QString()), (QSqlError::ErrorType) par3, OPQSTRING(4,QString()) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSqlError ( const QSqlError & other )
*/
void QSqlError_new3 ()
{
  QSqlError * o = new QSqlError ( *PQSQLERROR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QSqlError(const QString & driverText, const QString & databaseText, ErrorType type, int number )
//[2]QSqlError(const QString &driverText = QString(), const QString &databaseText = QString(), ErrorType type = NoError, const QString &errorCode = QString())
//[3]QSqlError(const QSqlError & other )

HB_FUNC_STATIC( QSQLERROR_NEW )
{
  if( ISNUMPAR(4) && ISCHAR(1) && ISCHAR(2) && ISNUM(3) && ISNUM(4) )
  {
    QSqlError_new1();
  }
  else if( ISBETWEEN(0,4) && ISOPTCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) && ISOPTCHAR(4) )
  {
    QSqlError_new2();
  }
  else if( ISNUMPAR(1) && ISQSQLERROR(1) )
  {
    QSqlError_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLERROR_DELETE )
{
  QSqlError * obj = (QSqlError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString databaseText () const
*/
HB_FUNC_STATIC( QSQLERROR_DATABASETEXT )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->databaseText () ) );
  }
}

/*
QT_DEPRECATED void setDatabaseText ( const QString & databaseText )
*/
HB_FUNC_STATIC( QSQLERROR_SETDATABASETEXT )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setDatabaseText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString driverText () const
*/
HB_FUNC_STATIC( QSQLERROR_DRIVERTEXT )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->driverText () ) );
  }
}

/*
QT_DEPRECATED void setDriverText ( const QString & driverText )
*/
HB_FUNC_STATIC( QSQLERROR_SETDRIVERTEXT )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setDriverText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QSQLERROR_ISVALID )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}

/*
QT_DEPRECATED  int number () const
*/
HB_FUNC_STATIC( QSQLERROR_NUMBER )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->number () );
  }
}

/*
QT_DEPRECATED void setNumber ( int number )
*/
HB_FUNC_STATIC( QSQLERROR_SETNUMBER )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setNumber ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text () const
*/
HB_FUNC_STATIC( QSQLERROR_TEXT )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->text () ) );
  }
}

/*
ErrorType type () const
*/
HB_FUNC_STATIC( QSQLERROR_TYPE )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

/*
QT_DEPRECATED void setType ( ErrorType type )
*/
HB_FUNC_STATIC( QSQLERROR_SETTYPE )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setType ( (QSqlError::ErrorType) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString nativeErrorCode() const
*/
HB_FUNC_STATIC( QSQLERROR_NATIVEERRORCODE )
{
  QSqlError * obj = (QSqlError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->nativeErrorCode () ) );
  }
}

HB_FUNC_STATIC( QSQLERROR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSQLERROR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLERROR_NEWFROM );
}

HB_FUNC_STATIC( QSQLERROR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLERROR_NEWFROM );
}

HB_FUNC_STATIC( QSQLERROR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLERROR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
