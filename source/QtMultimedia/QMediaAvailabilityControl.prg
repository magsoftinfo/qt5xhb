/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QMediaAvailabilityControl INHERIT QMediaControl

   METHOD delete
   METHOD availability

   METHOD onAvailabilityChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaAvailabilityControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaAvailabilityControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaAvailabilityControl>
#endif

/*
explicit QMediaAvailabilityControl(QObject *parent = Q_NULLPTR) [protected]
*/

/*
~QMediaAvailabilityControl()
*/
HB_FUNC_STATIC( QMEDIAAVAILABILITYCONTROL_DELETE )
{
  QMediaAvailabilityControl * obj = (QMediaAvailabilityControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QMultimedia::AvailabilityStatus availability() const = 0
*/
HB_FUNC_STATIC( QMEDIAAVAILABILITYCONTROL_AVAILABILITY )
{
  QMediaAvailabilityControl * obj = (QMediaAvailabilityControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->availability () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

void QMediaAvailabilityControlSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMEDIAAVAILABILITYCONTROL_ONAVAILABILITYCHANGED )
{
  QMediaAvailabilityControlSlots_connect_signal( "availabilityChanged(QMultimedia::AvailabilityStatus)", "availabilityChanged(QMultimedia::AvailabilityStatus)" );
}

#pragma ENDDUMP
