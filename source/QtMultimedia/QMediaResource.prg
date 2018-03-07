/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKREQUEST
REQUEST QSIZE
REQUEST QURL
#endif

CLASS QMediaResource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete

   METHOD audioBitRate
   METHOD audioCodec
   METHOD channelCount
   METHOD dataSize
   METHOD isNull
   METHOD language
   METHOD mimeType
   METHOD request
   METHOD resolution
   METHOD sampleRate
   METHOD setAudioBitRate
   METHOD setAudioCodec
   METHOD setChannelCount
   METHOD setDataSize
   METHOD setLanguage
   METHOD setResolution
   METHOD setSampleRate
   METHOD setVideoBitRate
   METHOD setVideoCodec
   METHOD url
   METHOD videoBitRate
   METHOD videoCodec

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaResource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaResource>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaResource>
#endif

#include <QSize>

/*
QMediaResource()
*/
void QMediaResource_new1 ()
{
  QMediaResource * o = new QMediaResource ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QMediaResource(const QUrl & url, const QString & mimeType = QString())
*/
void QMediaResource_new2 ()
{
  QMediaResource * o = new QMediaResource ( *PQURL(1), OPQSTRING(2,QString()) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QMediaResource(const QNetworkRequest & request, const QString & mimeType = QString())
*/
void QMediaResource_new3 ()
{
  QMediaResource * o = new QMediaResource ( *PQNETWORKREQUEST(1), OPQSTRING(2,QString()) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QMediaResource(const QMediaResource & other)
*/
void QMediaResource_new4 ()
{
  QMediaResource * o = new QMediaResource ( *PQMEDIARESOURCE(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QMediaResource()
//[2]QMediaResource(const QUrl & url, const QString & mimeType = QString())
//[3]QMediaResource(const QNetworkRequest & request, const QString & mimeType = QString())
//[4]QMediaResource(const QMediaResource & other)

HB_FUNC_STATIC( QMEDIARESOURCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMediaResource_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTCHAR(2) )
  {
    QMediaResource_new2();
  }
  else if( ISBETWEEN(1,2) && ISQNETWORKREQUEST(1) && ISOPTCHAR(2) )
  {
    QMediaResource_new3();
  }
  else if( ISNUMPAR(1) && ISQMEDIARESOURCE(1) )
  {
    QMediaResource_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QMediaResource()
*/
HB_FUNC_STATIC( QMEDIARESOURCE_DELETE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

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
int audioBitRate() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_AUDIOBITRATE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->audioBitRate () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString audioCodec() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_AUDIOCODEC )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->audioCodec () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int channelCount() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_CHANNELCOUNT )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->channelCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qint64 dataSize() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_DATASIZE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->dataSize () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_ISNULL )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isNull () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString language() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_LANGUAGE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->language () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString mimeType() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_MIMETYPE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->mimeType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkRequest request() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_REQUEST )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QNetworkRequest * ptr = new QNetworkRequest( obj->request () );
      _qt5xhb_createReturnClass ( ptr, "QNETWORKREQUEST", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize resolution() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_RESOLUTION )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->resolution () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int sampleRate() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SAMPLERATE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->sampleRate () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAudioBitRate(int rate)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETAUDIOBITRATE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAudioBitRate ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAudioCodec(const QString & codec)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETAUDIOCODEC )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setAudioCodec ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setChannelCount(int channels)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETCHANNELCOUNT )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setChannelCount ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDataSize(const qint64 size)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETDATASIZE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDataSize ( PQINT64(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLanguage(const QString & language)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETLANGUAGE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setLanguage ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setResolution(const QSize & resolution)
*/
void QMediaResource_setResolution1 ()
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setResolution ( *PQSIZE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setResolution(int width, int height)
*/
void QMediaResource_setResolution2 ()
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setResolution ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setResolution(const QSize & resolution)
//[2]void setResolution(int width, int height)

HB_FUNC_STATIC( QMEDIARESOURCE_SETRESOLUTION )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QMediaResource_setResolution1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMediaResource_setResolution2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setSampleRate(int frequency)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETSAMPLERATE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSampleRate ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVideoBitRate(int rate)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETVIDEOBITRATE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setVideoBitRate ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVideoCodec(const QString & codec)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETVIDEOCODEC )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setVideoCodec ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QUrl url() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_URL )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QUrl * ptr = new QUrl( obj->url () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int videoBitRate() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_VIDEOBITRATE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->videoBitRate () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString videoCodec() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_VIDEOCODEC )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->videoCodec () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QMEDIARESOURCE_NEWFROM )
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QMEDIARESOURCE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMEDIARESOURCE_NEWFROM );
}

HB_FUNC_STATIC( QMEDIARESOURCE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMEDIARESOURCE_NEWFROM );
}

HB_FUNC_STATIC( QMEDIARESOURCE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMEDIARESOURCE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
