%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQCoreApplication::aboutToQuit()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToQuit()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QCOREAPPLICATION_ONABOUTTOQUIT )
{
  if( s == NULL )
  {
    s = new SlotsQCoreApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "aboutToQuit()", "aboutToQuit()" ) );
}

$endSlotsClass
