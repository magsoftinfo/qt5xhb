/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCustom3DItemSlots.h"

QCustom3DItemSlots::QCustom3DItemSlots(QObject *parent) : QObject(parent)
{
}

QCustom3DItemSlots::~QCustom3DItemSlots()
{
}
void QCustom3DItemSlots::meshFileChanged( const QString & meshFile )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "meshFileChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DITEM" );
    PHB_ITEM pmeshFile = hb_itemPutC( NULL, QSTRINGTOSTRING(meshFile) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmeshFile );
    hb_itemRelease( psender );
    hb_itemRelease( pmeshFile );
  }
}
void QCustom3DItemSlots::positionAbsoluteChanged( bool positionAbsolute )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "positionAbsoluteChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DITEM" );
    PHB_ITEM ppositionAbsolute = hb_itemPutL( NULL, positionAbsolute );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppositionAbsolute );
    hb_itemRelease( psender );
    hb_itemRelease( ppositionAbsolute );
  }
}
void QCustom3DItemSlots::positionChanged( const QVector3D & position )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "positionChanged(QVector3D)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DITEM" );
    PHB_ITEM pposition = Signals_return_object( (void *) &position, "QVECTOR3D" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pposition );
    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}
void QCustom3DItemSlots::rotationChanged( const QQuaternion & rotation )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rotationChanged(QQuaternion)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DITEM" );
    PHB_ITEM protation = Signals_return_object( (void *) &rotation, "QQUATERNION" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, protation );
    hb_itemRelease( psender );
    hb_itemRelease( protation );
  }
}
void QCustom3DItemSlots::scalingAbsoluteChanged( bool scalingAbsolute )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "scalingAbsoluteChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DITEM" );
    PHB_ITEM pscalingAbsolute = hb_itemPutL( NULL, scalingAbsolute );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pscalingAbsolute );
    hb_itemRelease( psender );
    hb_itemRelease( pscalingAbsolute );
  }
}
void QCustom3DItemSlots::scalingChanged( const QVector3D & scaling )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "scalingChanged(QVector3D)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DITEM" );
    PHB_ITEM pscaling = Signals_return_object( (void *) &scaling, "QVECTOR3D" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pscaling );
    hb_itemRelease( psender );
    hb_itemRelease( pscaling );
  }
}
void QCustom3DItemSlots::shadowCastingChanged( bool shadowCasting )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "shadowCastingChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DITEM" );
    PHB_ITEM pshadowCasting = hb_itemPutL( NULL, shadowCasting );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pshadowCasting );
    hb_itemRelease( psender );
    hb_itemRelease( pshadowCasting );
  }
}
void QCustom3DItemSlots::textureFileChanged( const QString & textureFile )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textureFileChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DITEM" );
    PHB_ITEM ptextureFile = hb_itemPutC( NULL, QSTRINGTOSTRING(textureFile) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptextureFile );
    hb_itemRelease( psender );
    hb_itemRelease( ptextureFile );
  }
}
void QCustom3DItemSlots::visibleChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "visibleChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DITEM" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}

void QCustom3DItemSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QCustom3DItem * obj = (QCustom3DItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QCustom3DItemSlots * s = QCoreApplication::instance()->findChild<QCustom3DItemSlots *>();

    if( s == NULL )
    {
      s = new QCustom3DItemSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
