$header

#include "hbclass.ch"

CLASS QSensorGesture INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD validIds
   METHOD invalidIds
   METHOD gestureSignals
   METHOD startDetection
   METHOD stopDetection

   METHOD onDetected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QSensorGesture(const QStringList &ids, QObject *parent = 0)
$constructor=5,1,0|new|const QStringList &,QObject *=0

$deleteMethod=5,1,0

$prototype=bool isActive()
$method=5,1,0|bool|isActive|

$prototype=QStringList validIds() const
$method=5,1,0|QStringList|validIds|

$prototype=QStringList invalidIds() const
$method=5,1,0|QStringList|invalidIds|

$prototype=QStringList gestureSignals() const
$method=5,1,0|QStringList|gestureSignals|

$prototype=void startDetection()
$method=5,1,0|void|startDetection|

$prototype=void stopDetection()
$method=5,1,0|void|stopDetection|

#pragma ENDDUMP
