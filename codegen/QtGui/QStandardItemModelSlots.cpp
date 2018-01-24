%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQStandardItemModel::itemChanged(QStandardItem *item)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemChanged(QStandardItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QStandardItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

HB_FUNC( QSTANDARDITEMMODEL_ONITEMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQStandardItemModel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemChanged(QStandardItem*)", "itemChanged(QStandardItem*)" ) );

}

$endSlotsClass
