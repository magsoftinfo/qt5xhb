/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QURL
REQUEST QWEBENGINEHISTORY
REQUEST QWEBENGINESETTINGS
REQUEST QWIDGET
#endif

CLASS QWebEnginePage INHERIT QObject

   METHOD new
   METHOD delete
   METHOD history
   METHOD view
   METHOD setView
   METHOD hasSelection
   METHOD selectedText
   METHOD action
   METHOD triggerAction
   METHOD event
   METHOD createStandardContextMenu
   METHOD setFeaturePermission
   METHOD load
   METHOD setHtml
   METHOD setContent
   METHOD title
   METHOD url
   METHOD setUrl
   METHOD requestedUrl
   METHOD iconUrl
   METHOD zoomFactor
   METHOD setZoomFactor
   METHOD runJavaScript
   METHOD settings

   METHOD onLoadStarted
   METHOD onLoadProgress
   METHOD onLoadFinished
   METHOD onLinkHovered
   METHOD onSelectionChanged
   METHOD onGeometryChangeRequested
   METHOD onWindowCloseRequested
   METHOD onFeaturePermissionRequested
   METHOD onFeaturePermissionRequestCanceled
   METHOD onAuthenticationRequired
   METHOD onProxyAuthenticationRequired
   METHOD onTitleChanged
   METHOD onUrlChanged
   METHOD onIconUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebEnginePage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWebEngineWidgets/QWebEnginePage>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWebEngineWidgets/QWebEnginePage>
#endif
#endif

#include <QtWidgets/QAction>
#include <QtWidgets/QMenu>

/*
explicit QWebEnginePage(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QWebEnginePage * obj = new QWebEnginePage( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

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
QWebEngineHistory *history() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_HISTORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebEngineHistory * ptr = obj->history();
      Qt5xHb::createReturnClass( ptr, "QWEBENGINEHISTORY", false );
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
QWidget *view() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_VIEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->view();
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
void setView(QWidget *view)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SETVIEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->setView( PQWIDGET(1) );
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
bool hasSelection() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_HASSELECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasSelection() );
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
QString selectedText() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SELECTEDTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->selectedText() );
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
QAction *action(WebAction action) const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_ACTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QAction * ptr = obj->action( (QWebEnginePage::WebAction) hb_parni(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QACTION" );
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
virtual void triggerAction(WebAction action, bool checked = false)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_TRIGGERACTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && (ISLOG(2)||ISNIL(2)) )
    {
#endif
      obj->triggerAction( (QWebEnginePage::WebAction) hb_parni(1), OPBOOL(2,false) );
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
virtual bool event(QEvent*)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_EVENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQEVENT(1) )
    {
#endif
      RBOOL( obj->event( PQEVENT(1) ) );
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
void findText(const QString &subString, FindFlags options = 0, const QWebEngineCallback<bool> &resultCallback = QWebEngineCallback<bool>())
*/

/*
QMenu *createStandardContextMenu()
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_CREATESTANDARDCONTEXTMENU )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMenu * ptr = obj->createStandardContextMenu();
      Qt5xHb::createReturnQWidgetClass( ptr, "QMENU" );
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
void setFeaturePermission(const QUrl &securityOrigin, Feature feature, PermissionPolicy policy)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SETFEATUREPERMISSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQURL(1) && ISNUM(2) && ISNUM(3) )
    {
#endif
      obj->setFeaturePermission( *PQURL(1), (QWebEnginePage::Feature) hb_parni(2), (QWebEnginePage::PermissionPolicy) hb_parni(3) );
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
void load(const QUrl &url)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_LOAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->load( *PQURL(1) );
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
void setHtml(const QString &html, const QUrl &baseUrl = QUrl())
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SETHTML )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQURL(2)||ISNIL(2)) )
    {
#endif
      obj->setHtml( PQSTRING(1), ISNIL(2)? QUrl() : *(QUrl *) Qt5xHb::itemGetPtr(2) );
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
void setContent(const QByteArray &data, const QString &mimeType = QString(), const QUrl &baseUrl = QUrl())
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SETCONTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISQBYTEARRAY(1) && (ISCHAR(2)||ISNIL(2)) && (ISQURL(3)||ISNIL(3)) )
    {
#endif
      obj->setContent( *PQBYTEARRAY(1), OPQSTRING(2,QString()), ISNIL(3)? QUrl() : *(QUrl *) Qt5xHb::itemGetPtr(3) );
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
void toHtml(const QWebEngineCallback<const QString &> &resultCallback) const
*/

/*
void toPlainText(const QWebEngineCallback<const QString &> &resultCallback) const
*/

/*
QString title() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->title() );
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
QUrl url() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->url() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
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
void setUrl(const QUrl &url)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SETURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setUrl( *PQURL(1) );
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
QUrl requestedUrl() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_REQUESTEDURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->requestedUrl() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
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
QUrl iconUrl() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_ICONURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->iconUrl() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
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
qreal zoomFactor() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_ZOOMFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->zoomFactor() );
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
void setZoomFactor(qreal factor)
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SETZOOMFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setZoomFactor( PQREAL(1) );
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
void runJavaScript(const QString& scriptSource)
*/
void QWebEnginePage_runJavaScript1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->runJavaScript( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

HB_FUNC( QWEBENGINEPAGE_RUNJAVASCRIPT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebEnginePage_runJavaScript1();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWebEngineSettings *settings() const
*/
HB_FUNC_STATIC( QWEBENGINEPAGE_SETTINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePage * obj = (QWebEnginePage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWebEngineSettings * ptr = obj->settings();
      Qt5xHb::createReturnClass( ptr, "QWEBENGINESETTINGS", false );
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

void QWebEnginePageSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QWEBENGINEPAGE_ONLOADSTARTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "loadStarted()", "loadStarted()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_ONLOADPROGRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "loadProgress(int)", "loadProgress(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_ONLOADFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "loadFinished(bool)", "loadFinished(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_ONLINKHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "linkHovered(QString)", "linkHovered(QString)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_ONSELECTIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "selectionChanged()", "selectionChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_ONGEOMETRYCHANGEREQUESTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "geometryChangeRequested(QRect)", "geometryChangeRequested(QRect)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_ONWINDOWCLOSEREQUESTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "windowCloseRequested()", "windowCloseRequested()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_ONFEATUREPERMISSIONREQUESTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "featurePermissionRequested(QUrl,QWebEnginePage::Feature)", "featurePermissionRequested(QUrl,QWebEnginePage::Feature)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_ONFEATUREPERMISSIONREQUESTCANCELED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "featurePermissionRequestCanceled(QUrl,QWebEnginePage::Feature)", "featurePermissionRequestCanceled(QUrl,QWebEnginePage::Feature)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_ONAUTHENTICATIONREQUIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "authenticationRequired(QUrl,QAuthenticator*)", "authenticationRequired(QUrl,QAuthenticator*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_ONPROXYAUTHENTICATIONREQUIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "proxyAuthenticationRequired(QUrl,QAuthenticator*,QString)", "proxyAuthenticationRequired(QUrl,QAuthenticator*,QString)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_ONTITLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "titleChanged(QString)", "titleChanged(QString)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_ONURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "urlChanged(QUrl)", "urlChanged(QUrl)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QWEBENGINEPAGE_ONICONURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEnginePageSlots_connect_signal( "iconUrlChanged(QUrl)", "iconUrlChanged(QUrl)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
