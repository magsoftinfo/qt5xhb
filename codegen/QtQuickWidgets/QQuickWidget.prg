$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QQMLENGINE
REQUEST QQMLCONTEXT
REQUEST QQUICKITEM
REQUEST QQMLERROR
REQUEST QSIZE
REQUEST QSURFACEFORMAT
#endif

CLASS QQuickWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD source
   METHOD setSource
   METHOD engine
   METHOD rootContext
   METHOD rootObject
   METHOD resizeMode
   METHOD setResizeMode
   METHOD status
   METHOD errors
   METHOD sizeHint
   METHOD initialSize
   METHOD setContent
   METHOD format
   METHOD setFormat

   METHOD onStatusChanged
   METHOD onSceneGraphError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,3,0

#include <QQmlError>

/*
explicit QQuickWidget(QWidget *parent = 0)
*/
$internalConstructor=5,3,0|new1|QWidget *=0

/*
QQuickWidget(QQmlEngine* engine, QWidget *parent)
*/
$internalConstructor=5,3,0|new2|QQmlEngine *,QWidget *

/*
QQuickWidget(const QUrl &source, QWidget *parent = 0)
*/
$internalConstructor=5,3,0|new3|const QUrl &,QWidget *=0

//[1]explicit QQuickWidget(QWidget *parent = 0)
//[2]QQuickWidget(QQmlEngine* engine, QWidget *parent)
//[3]QQuickWidget(const QUrl &source, QWidget *parent = 0)

HB_FUNC_STATIC( QQUICKWIDGET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QQuickWidget_new1();
  }
  else if( ISNUMPAR(2) && ISQQMLENGINE(1) && ISQWIDGET(2) )
  {
    QQuickWidget_new2();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTQWIDGET(2) )
  {
    QQuickWidget_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=5,3,0

/*
QUrl source() const
*/
$method=5,3,0|QUrl|source|

/*
void setSource(const QUrl&)
*/
$method=5,3,0|void|setSource|const QUrl &

/*
QQmlEngine* engine() const
*/
$method=5,3,0|QQmlEngine *|engine|

/*
QQmlContext* rootContext() const
*/
$method=5,3,0|QQmlContext *|rootContext|

/*
QQuickItem *rootObject() const
*/
$method=5,3,0|QQuickItem *|rootObject|

/*
ResizeMode resizeMode() const
*/
$method=5,3,0|QQuickWidget::ResizeMode|resizeMode|

/*
void setResizeMode(ResizeMode)
*/
$method=5,3,0|void|setResizeMode|QQuickWidget::ResizeMode

/*
Status status() const
*/
$method=5,3,0|QQuickWidget::Status|status|

/*
QList<QQmlError> errors() const
*/
$method=5,3,0|QList<QQmlError>|errors|

/*
QSize sizeHint() const
*/
$method=5,3,0|QSize|sizeHint|

/*
QSize initialSize() const
*/
$method=5,3,0|QSize|initialSize|

/*
void setContent(const QUrl& url, QQmlComponent *component, QObject *item)
*/
$method=5,3,0|void|setContent|const QUrl &,QQmlComponent *,QObject *

/*
QSurfaceFormat format() const
*/
$method=5,3,0|QSurfaceFormat|format|

/*
void setFormat(const QSurfaceFormat &format)
*/
$method=5,3,0|void|setFormat|const QSurfaceFormat &

#pragma ENDDUMP
