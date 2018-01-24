%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQBluetoothDeviceDiscoveryAgent::deviceDiscovered(const QBluetoothDeviceInfo &info)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "deviceDiscovered(QBluetoothDeviceInfo)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pinfo = hb_itemPutPtr( NULL, (QBluetoothDeviceInfo *) &info );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pinfo );
    hb_itemRelease( psender );
    hb_itemRelease( pinfo );
  }
#endif
}

void SlotsQBluetoothDeviceDiscoveryAgent::finished()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQBluetoothDeviceDiscoveryAgent::error(QBluetoothDeviceDiscoveryAgent::Error error)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QBluetoothDeviceDiscoveryAgent::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
#endif
}

void SlotsQBluetoothDeviceDiscoveryAgent::canceled()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canceled()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

HB_FUNC( QBLUETOOTHDEVICEDISCOVERYAGENT_ONDEVICEDISCOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothDeviceDiscoveryAgent(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "deviceDiscovered(QBluetoothDeviceInfo)", "deviceDiscovered(QBluetoothDeviceInfo)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QBLUETOOTHDEVICEDISCOVERYAGENT_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothDeviceDiscoveryAgent(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished()", "finished()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QBLUETOOTHDEVICEDISCOVERYAGENT_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothDeviceDiscoveryAgent(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QBluetoothDeviceDiscoveryAgent::Error)", "error(QBluetoothDeviceDiscoveryAgent::Error)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QBLUETOOTHDEVICEDISCOVERYAGENT_ONCANCELED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothDeviceDiscoveryAgent(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "canceled()", "canceled()" ) );
#else
  hb_retl(false);
#endif
}

$endSlotsClass
