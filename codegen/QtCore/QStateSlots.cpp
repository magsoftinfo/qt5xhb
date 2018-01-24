%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQState::finished ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQState::propertiesAssigned ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "propertiesAssigned()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QSTATE_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQState(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished()", "finished()" ) );
}

HB_FUNC( QSTATE_ONPROPERTIESASSIGNED )
{
  if( s == NULL )
  {
    s = new SlotsQState(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "propertiesAssigned()", "propertiesAssigned()" ) );
}

$endSlotsClass
