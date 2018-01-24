%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQDnsLookup::finished()
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

void SlotsQDnsLookup::nameChanged(const QString & name)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "nameChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pname );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

void SlotsQDnsLookup::typeChanged(QDnsLookup::Type type)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "typeChanged(QDnsLookup::Type)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptype = hb_itemPutNI( NULL, (int) type );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptype );
    hb_itemRelease( psender );
    hb_itemRelease( ptype );
  }
}

HB_FUNC( QDNSLOOKUP_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQDnsLookup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished()", "finished()" ) );
}

HB_FUNC( QDNSLOOKUP_ONNAMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDnsLookup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "nameChanged(QString)", "nameChanged(QString)" ) );
}

HB_FUNC( QDNSLOOKUP_ONTYPECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDnsLookup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "typeChanged(QDnsLookup::Type)", "typeChanged(QDnsLookup::Type)" ) );
}

$endSlotsClass
