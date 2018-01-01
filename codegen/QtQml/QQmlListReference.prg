%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QMETAOBJECT
#endif

CLASS QQmlListReference

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD append
   METHOD at
   METHOD canAppend
   METHOD canAt
   METHOD canClear
   METHOD canCount
   METHOD clear
   METHOD count
   METHOD isValid
   METHOD listElementType
   METHOD object

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QQmlListReference()
$constructor=|new1|

$prototype=QQmlListReference(QObject * object, const char * property, QQmlEngine * engine = 0)
$constructor=|new2|QObject *,const char *,QQmlEngine *=0

//[1]QQmlListReference()
//[2]QQmlListReference(QObject * object, const char * property, QQmlEngine * engine = 0)

HB_FUNC_STATIC( QQMLLISTREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLLISTREFERENCE_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQQMLENGINE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QQMLLISTREFERENCE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool append(QObject * object) const
$method=|bool|append|QObject *

$prototype=QObject * at(int index) const
$method=|QObject *|at|int

$prototype=bool canAppend() const
$method=|bool|canAppend|

$prototype=bool canAt() const
$method=|bool|canAt|

$prototype=bool canClear() const
$method=|bool|canClear|

$prototype=bool canCount() const
$method=|bool|canCount|

$prototype=bool clear() const
$method=|bool|clear|

$prototype=int count() const
$method=|int|count|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=const QMetaObject * listElementType() const
$method=|const QMetaObject *|listElementType|

$prototype=QObject * object() const
$method=|QObject *|object|

$extraMethods

#pragma ENDDUMP
