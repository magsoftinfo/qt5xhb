/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDBusConnectionInterface INHERIT QDBusAbstractInterface

   METHOD onServiceRegistered
   METHOD onServiceUnregistered
   METHOD onServiceOwnerChanged
   METHOD onCallWithCallbackFailed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusConnectionInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusConnectionInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusConnectionInterface>
#endif

/*
QDBusConnectionInterface(const QDBusConnection &connection, QObject *parent) [private]
*/

/*
QDBusReply<QStringList> registeredServiceNames() const
*/

/*
QDBusReply<bool> isServiceRegistered(const QString &serviceName) const
*/

/*
QDBusReply<QString> serviceOwner(const QString &name) const
*/

/*
QDBusReply<bool> unregisterService(const QString &serviceName)
*/

/*
QDBusReply<QDBusConnectionInterface::RegisterServiceReply> registerService(const QString &serviceName,ServiceQueueOptions qoption = DontQueueService,ServiceReplacementOptions roption = DontAllowReplacement)
*/

/*
QDBusReply<uint> servicePid(const QString &serviceName) const
*/

/*
QDBusReply<uint> serviceUid(const QString &serviceName) const
*/

/*
QDBusReply<void> startService(const QString &name)
*/

void QDBusConnectionInterfaceSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ONSERVICEREGISTERED )
{
  QDBusConnectionInterfaceSlots_connect_signal( "serviceRegistered(QString)", "serviceRegistered(QString)" );
}

HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ONSERVICEUNREGISTERED )
{
  QDBusConnectionInterfaceSlots_connect_signal( "serviceUnregistered(QString)", "serviceUnregistered(QString)" );
}

HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ONSERVICEOWNERCHANGED )
{
  QDBusConnectionInterfaceSlots_connect_signal( "serviceOwnerChanged(QString,QString,QString)", "serviceOwnerChanged(QString,QString,QString)" );
}

HB_FUNC_STATIC( QDBUSCONNECTIONINTERFACE_ONCALLWITHCALLBACKFAILED )
{
  QDBusConnectionInterfaceSlots_connect_signal( "callWithCallbackFailed(QDBusError,QDBusMessage)", "callWithCallbackFailed(QDBusError,QDBusMessage)" );
}

#pragma ENDDUMP
