$header

#include "hbclass.ch"

CLASS QDBusPendingCallWatcher INHERIT QObject,QDBusPendingCall

   METHOD new
   METHOD delete
   METHOD isFinished
   METHOD waitForFinished

   METHOD onFinished

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QDBusPendingCallWatcher(const QDBusPendingCall &call, QObject *parent = 0)
$constructor=|new|const QDBusPendingCall &,QObject *=0

$deleteMethod

$prototype=bool isFinished() const
$method=|bool|isFinished|

$prototype=void waitForFinished()
$method=|void|waitForFinished|

#pragma ENDDUMP
