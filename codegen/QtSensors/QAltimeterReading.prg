$header

#include "hbclass.ch"

CLASS QAltimeterReading INHERIT QSensorReading

   METHOD delete
   METHOD altitude
   METHOD setAltitude

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=qreal altitude() const
$method=5,1,0|qreal|altitude|

$prototype=void setAltitude(qreal altitude)
$method=5,1,0|void|setAltitude|qreal

#pragma ENDDUMP
