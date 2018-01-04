/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBYTEARRAY
REQUEST QURL
#endif

CLASS QMimeData INHERIT QObject

   METHOD new
   METHOD delete
   METHOD clear
   METHOD colorData
   METHOD data
   METHOD formats
   METHOD hasColor
   METHOD hasFormat
   METHOD hasHtml
   METHOD hasImage
   METHOD hasText
   METHOD hasUrls
   METHOD html
   METHOD imageData
   METHOD removeFormat
   METHOD setColorData
   METHOD setData
   METHOD setHtml
   METHOD setImageData
   METHOD setText
   METHOD setUrls
   METHOD text
   METHOD urls

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMimeData
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMimeData>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMimeData>
#endif

#include <QStringList>
#include <QUrl>

/*
QMimeData ()
*/
HB_FUNC_STATIC( QMIMEDATA_NEW )
{
  QMimeData * o = new QMimeData ();
  _qt5xhb_returnNewObject( o, false );
}

HB_FUNC_STATIC( QMIMEDATA_DELETE )
{
  QMimeData * obj = (QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void clear ()
*/
HB_FUNC_STATIC( QMIMEDATA_CLEAR )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant colorData () const
*/
HB_FUNC_STATIC( QMIMEDATA_COLORDATA )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->colorData () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QByteArray data ( const QString & mimeType ) const
*/
HB_FUNC_STATIC( QMIMEDATA_DATA )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QByteArray * ptr = new QByteArray( obj->data ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QStringList formats () const
*/
HB_FUNC_STATIC( QMIMEDATA_FORMATS )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->formats () );
  }
}

/*
bool hasColor () const
*/
HB_FUNC_STATIC( QMIMEDATA_HASCOLOR )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasColor () );
  }
}

/*
virtual bool hasFormat ( const QString & mimeType ) const
*/
HB_FUNC_STATIC( QMIMEDATA_HASFORMAT )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RBOOL( obj->hasFormat ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasHtml () const
*/
HB_FUNC_STATIC( QMIMEDATA_HASHTML )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasHtml () );
  }
}

/*
bool hasImage () const
*/
HB_FUNC_STATIC( QMIMEDATA_HASIMAGE )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasImage () );
  }
}

/*
bool hasText () const
*/
HB_FUNC_STATIC( QMIMEDATA_HASTEXT )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasText () );
  }
}

/*
bool hasUrls () const
*/
HB_FUNC_STATIC( QMIMEDATA_HASURLS )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasUrls () );
  }
}

/*
QString html () const
*/
HB_FUNC_STATIC( QMIMEDATA_HTML )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->html () );
  }
}

/*
QVariant imageData () const
*/
HB_FUNC_STATIC( QMIMEDATA_IMAGEDATA )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->imageData () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
void removeFormat ( const QString & mimeType )
*/
HB_FUNC_STATIC( QMIMEDATA_REMOVEFORMAT )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->removeFormat ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColorData ( const QVariant & color )
*/
HB_FUNC_STATIC( QMIMEDATA_SETCOLORDATA )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQVARIANT(1) )
    {
      obj->setColorData ( *PQVARIANT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setData ( const QString & mimeType, const QByteArray & data )
*/
HB_FUNC_STATIC( QMIMEDATA_SETDATA )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISQBYTEARRAY(2) )
    {
      obj->setData ( PQSTRING(1), *PQBYTEARRAY(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHtml ( const QString & html )
*/
HB_FUNC_STATIC( QMIMEDATA_SETHTML )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setHtml ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setImageData ( const QVariant & image )
*/
HB_FUNC_STATIC( QMIMEDATA_SETIMAGEDATA )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQVARIANT(1) )
    {
      obj->setImageData ( *PQVARIANT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QMIMEDATA_SETTEXT )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUrls ( const QList<QUrl> & urls )
*/
HB_FUNC_STATIC( QMIMEDATA_SETURLS )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      QList<QUrl> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->setUrls ( par1 );
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
HB_FUNC_STATIC( QMIMEDATA_TEXT )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->text () );
  }
}

/*
QList<QUrl> urls () const
*/
HB_FUNC_STATIC( QMIMEDATA_URLS )
{
  QMimeData * obj = (QMimeData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QUrl> list = obj->urls ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QURL" );
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
        hb_itemPutPtr( pItem, (QUrl *) new QUrl ( list[i] ) );
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

#pragma ENDDUMP
