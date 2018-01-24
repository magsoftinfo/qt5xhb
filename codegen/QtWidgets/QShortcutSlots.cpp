%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQShortcut::activated()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQShortcut::activatedAmbiguously()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activatedAmbiguously()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QSHORTCUT_ONACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQShortcut(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activated()", "activated()" ) );
}

HB_FUNC( QSHORTCUT_ONACTIVATEDAMBIGUOUSLY )
{
  if( s == NULL )
  {
    s = new SlotsQShortcut(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activatedAmbiguously()", "activatedAmbiguously()" ) );
}

$endSlotsClass
