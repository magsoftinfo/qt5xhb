/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QOAuth1Slots.h"

QOAuth1Slots::QOAuth1Slots( QObject *parent ) : QObject( parent )
{
}

QOAuth1Slots::~QOAuth1Slots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QOAuth1Slots::clientSharedSecretChanged( const QString & credential )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "clientSharedSecretChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QOAUTH1" );
    PHB_ITEM pcredential = hb_itemPutC( NULL, QSTRINGTOSTRING(credential) );

    hb_vmEvalBlockV( cb, 2, psender, pcredential );

    hb_itemRelease( psender );
    hb_itemRelease( pcredential );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QOAuth1Slots::signatureMethodChanged( QOAuth1::SignatureMethod method )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "signatureMethodChanged(QOAuth1::SignatureMethod)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QOAUTH1" );
    PHB_ITEM pmethod = hb_itemPutNI( NULL, (int) method );

    hb_vmEvalBlockV( cb, 2, psender, pmethod );

    hb_itemRelease( psender );
    hb_itemRelease( pmethod );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QOAuth1Slots::temporaryCredentialsUrlChanged( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "temporaryCredentialsUrlChanged(QUrl)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QOAUTH1" );
    PHB_ITEM purl = Signals_return_object( (void *) &url, "QURL" );

    hb_vmEvalBlockV( cb, 2, psender, purl );

    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QOAuth1Slots::tokenCredentialsUrlChanged( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "tokenCredentialsUrlChanged(QUrl)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QOAUTH1" );
    PHB_ITEM purl = Signals_return_object( (void *) &url, "QURL" );

    hb_vmEvalBlockV( cb, 2, psender, purl );

    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QOAuth1Slots::tokenSecretChanged( const QString & token )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "tokenSecretChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QOAUTH1" );
    PHB_ITEM ptoken = hb_itemPutC( NULL, QSTRINGTOSTRING(token) );

    hb_vmEvalBlockV( cb, 2, psender, ptoken );

    hb_itemRelease( psender );
    hb_itemRelease( ptoken );
  }
}
#endif

void QOAuth1Slots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QOAuth1 * obj = (QOAuth1 *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QOAuth1Slots * s = QCoreApplication::instance()->findChild<QOAuth1Slots *>();

    if( s == NULL )
    {
      s = new QOAuth1Slots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
