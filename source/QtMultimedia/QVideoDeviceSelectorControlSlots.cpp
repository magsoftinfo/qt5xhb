/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QVideoDeviceSelectorControlSlots.h"


static SlotsQVideoDeviceSelectorControl * s = NULL;

SlotsQVideoDeviceSelectorControl::SlotsQVideoDeviceSelectorControl(QObject *parent) : QObject(parent)
{
}

SlotsQVideoDeviceSelectorControl::~SlotsQVideoDeviceSelectorControl()
{
}

void SlotsQVideoDeviceSelectorControl::devicesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "devicesChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQVideoDeviceSelectorControl::selectedDeviceChanged(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectedDeviceChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQVideoDeviceSelectorControl::selectedDeviceChanged(const QString & name)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectedDeviceChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pname );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

HB_FUNC( QVIDEODEVICESELECTORCONTROL_ONDEVICESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVideoDeviceSelectorControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "devicesChanged()", "devicesChanged()" ) );
}

HB_FUNC( QVIDEODEVICESELECTORCONTROL_ONSELECTEDDEVICECHANGED1 )
{
  if( s == NULL )
  {
    s = new SlotsQVideoDeviceSelectorControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "selectedDeviceChanged(int)", "selectedDeviceChanged(int)" ) );
}

HB_FUNC( QVIDEODEVICESELECTORCONTROL_ONSELECTEDDEVICECHANGED2 )
{
  if( s == NULL )
  {
    s = new SlotsQVideoDeviceSelectorControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "selectedDeviceChanged(QString)", "selectedDeviceChanged(QString)" ) );
}
