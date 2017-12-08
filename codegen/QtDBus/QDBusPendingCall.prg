$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSERROR
REQUEST QDBUSMESSAGE
#endif

CLASS QDBusPendingCall

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isFinished
   METHOD waitForFinished
   METHOD isError
   METHOD isValid
   METHOD error
   METHOD reply
   METHOD fromError
   METHOD fromCompletedCall

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

$prototype=QDBusPendingCall(const QDBusPendingCall &other)
$constructor=|new|const QDBusPendingCall &

$deleteMethod

$prototype=void swap(QDBusPendingCall &other)
$method=|void|swap|QDBusPendingCall &

$prototype=bool isFinished() const
$method=|bool|isFinished||#ifndef Q_QDOC

$prototype=void waitForFinished()
$method=|void|waitForFinished||#ifndef Q_QDOC

$prototype=bool isError() const
$method=|bool|isError||#ifndef Q_QDOC

$prototype=bool isValid() const
$method=|bool|isValid||#ifndef Q_QDOC

$prototype=QDBusError error() const
$method=|QDBusError|error||#ifndef Q_QDOC

$prototype=QDBusMessage reply() const
$method=|QDBusMessage|reply||#ifndef Q_QDOC

$prototype=static QDBusPendingCall fromError(const QDBusError &error)
$staticMethod=|QDBusPendingCall|fromError|const QDBusError &

$prototype=static QDBusPendingCall fromCompletedCall(const QDBusMessage &message)
$staticMethod=|QDBusPendingCall|fromCompletedCall|const QDBusMessage &

$extraMethods

#pragma ENDDUMP
