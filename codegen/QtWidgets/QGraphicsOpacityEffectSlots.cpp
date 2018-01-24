%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQGraphicsOpacityEffect::opacityChanged ( qreal opacity )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "opacityChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM popacity = hb_itemPutND( NULL, opacity );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, popacity );
    hb_itemRelease( psender );
    hb_itemRelease( popacity );
  }
}

void SlotsQGraphicsOpacityEffect::opacityMaskChanged ( const QBrush & mask )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "opacityMaskChanged(QBrush)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmask = hb_itemPutPtr( NULL, (QBrush *) &mask );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmask );
    hb_itemRelease( psender );
    hb_itemRelease( pmask );
  }
}

HB_FUNC( QGRAPHICSOPACITYEFFECT_ONOPACITYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsOpacityEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "opacityChanged(qreal)", "opacityChanged(qreal)" ) );
}

HB_FUNC( QGRAPHICSOPACITYEFFECT_ONOPACITYMASKCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsOpacityEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "opacityMaskChanged(QBrush)", "opacityMaskChanged(QBrush)" ) );
}

$endSlotsClass
