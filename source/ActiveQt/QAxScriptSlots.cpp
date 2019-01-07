/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAxScriptSlots.h"

QAxScriptSlots::QAxScriptSlots(QObject *parent) : QObject(parent)
{
}

QAxScriptSlots::~QAxScriptSlots()
{
}
void QAxScriptSlots::entered()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "entered()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAXSCRIPT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QAxScriptSlots::error( int code, const QString & description, int sourcePosition, const QString & sourceText )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(int,QString,int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAXSCRIPT" );
    PHB_ITEM pcode = hb_itemPutNI( NULL, code );
    PHB_ITEM pdescription = hb_itemPutC( NULL, QSTRINGTOSTRING(description) );
    PHB_ITEM psourcePosition = hb_itemPutNI( NULL, sourcePosition );
    PHB_ITEM psourceText = hb_itemPutC( NULL, QSTRINGTOSTRING(sourceText) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 5, psender, pcode, pdescription, psourcePosition, psourceText );
    hb_itemRelease( psender );
    hb_itemRelease( pcode );
    hb_itemRelease( pdescription );
    hb_itemRelease( psourcePosition );
    hb_itemRelease( psourceText );
  }
}
void QAxScriptSlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAXSCRIPT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QAxScriptSlots::finished( const QVariant & result )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAXSCRIPT" );
    PHB_ITEM presult = Signals_return_object( (void *) &result, "QVARIANT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, presult );
    hb_itemRelease( psender );
    hb_itemRelease( presult );
  }
}
void QAxScriptSlots::finished( int code, const QString & source, const QString & description, const QString & help )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(int,QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAXSCRIPT" );
    PHB_ITEM pcode = hb_itemPutNI( NULL, code );
    PHB_ITEM psource = hb_itemPutC( NULL, QSTRINGTOSTRING(source) );
    PHB_ITEM pdescription = hb_itemPutC( NULL, QSTRINGTOSTRING(description) );
    PHB_ITEM phelp = hb_itemPutC( NULL, QSTRINGTOSTRING(help) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 5, psender, pcode, psource, pdescription, phelp );
    hb_itemRelease( psender );
    hb_itemRelease( pcode );
    hb_itemRelease( psource );
    hb_itemRelease( pdescription );
    hb_itemRelease( phelp );
  }
}
void QAxScriptSlots::stateChanged( int state )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QAXSCRIPT" );
    PHB_ITEM pstate = hb_itemPutNI( NULL, state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void QAxScriptSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QAxScript * obj = (QAxScript *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QAxScriptSlots * s = QCoreApplication::instance()->findChild<QAxScriptSlots *>();

    if( s == NULL )
    {
      s = new QAxScriptSlots();
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
