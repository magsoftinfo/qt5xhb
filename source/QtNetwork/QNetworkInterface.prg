/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKADDRESSENTRY
REQUEST QHOSTADDRESS
#endif

CLASS QNetworkInterface

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkInterface
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addressEntries
   METHOD flags
   METHOD hardwareAddress
   METHOD humanReadableName
   METHOD index
   METHOD isValid
   METHOD name
   METHOD allAddresses
   METHOD allInterfaces
   METHOD interfaceFromIndex
   METHOD interfaceFromName
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QNetworkInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QNetworkInterface>
#endif

/*
QNetworkInterface ()
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_NEW1 )
{
  QNetworkInterface * o = new QNetworkInterface (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkInterface ( const QNetworkInterface & other )
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_NEW2 )
{
  QNetworkInterface * par1 = (QNetworkInterface *) _qt5xhb_itemGetPtr(1);
  QNetworkInterface * o = new QNetworkInterface ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QNetworkInterface ()
//[2]QNetworkInterface ( const QNetworkInterface & other )

HB_FUNC_STATIC( QNETWORKINTERFACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKINTERFACE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKINTERFACE(1) )
  {
    HB_FUNC_EXEC( QNETWORKINTERFACE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QNETWORKINTERFACE_DELETE )
{
  QNetworkInterface * obj = (QNetworkInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QList<QNetworkAddressEntry> addressEntries () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_ADDRESSENTRIES )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QNetworkAddressEntry> list = obj->addressEntries (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QNETWORKADDRESSENTRY" );
    #else
    pDynSym = hb_dynsymFindName( "QNETWORKADDRESSENTRY" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QNetworkAddressEntry *) new QNetworkAddressEntry ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
InterfaceFlags flags () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_FLAGS )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flags (  ) );
  }
}


/*
QString hardwareAddress () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_HARDWAREADDRESS )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->hardwareAddress (  ).toLatin1().data() );
  }
}


/*
QString humanReadableName () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_HUMANREADABLENAME )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->humanReadableName (  ).toLatin1().data() );
  }
}


/*
int index () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_INDEX )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->index (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_ISVALID )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_NAME )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
static QList<QHostAddress> allAddresses ()
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_ALLADDRESSES )
{
  QList<QHostAddress> list = QNetworkInterface::allAddresses (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QHOSTADDRESS" );
  #else
  pDynSym = hb_dynsymFindName( "QHOSTADDRESS" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QHostAddress *) new QHostAddress ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static QList<QNetworkInterface> allInterfaces ()
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_ALLINTERFACES )
{
  QList<QNetworkInterface> list = QNetworkInterface::allInterfaces (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QNETWORKINTERFACE" );
  #else
  pDynSym = hb_dynsymFindName( "QNETWORKINTERFACE" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QNetworkInterface *) new QNetworkInterface ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static QNetworkInterface interfaceFromIndex ( int index )
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_INTERFACEFROMINDEX )
{
  QNetworkInterface * ptr = new QNetworkInterface( QNetworkInterface::interfaceFromIndex ( (int) hb_parni(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QNETWORKINTERFACE", true );
}


/*
static QNetworkInterface interfaceFromName ( const QString & name )
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_INTERFACEFROMNAME )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QNetworkInterface * ptr = new QNetworkInterface( QNetworkInterface::interfaceFromName ( par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QNETWORKINTERFACE", true );
}



HB_FUNC_STATIC( QNETWORKINTERFACE_NEWFROM )
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

HB_FUNC_STATIC( QNETWORKINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKINTERFACE_SETSELFDESTRUCTION )
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
