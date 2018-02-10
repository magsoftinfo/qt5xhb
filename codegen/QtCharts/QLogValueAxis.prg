%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QLogValueAxis INHERIT QAbstractAxis

   METHOD new
   METHOD delete

   METHOD base
   METHOD labelFormat
   METHOD max
   METHOD min
   METHOD minorTickCount
   METHOD setBase
   METHOD setLabelFormat
   METHOD setMax
   METHOD setMin
   METHOD setMinorTickCount
   METHOD setRange
   METHOD tickCount
   METHOD type

   METHOD onBaseChanged
   METHOD onLabelFormatChanged
   METHOD onMaxChanged
   METHOD onMinChanged
   METHOD onMinorTickCountChanged
   METHOD onRangeChanged
   METHOD onTickCountChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QLogValueAxis(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=QLogValueAxis(QLogValueAxisPrivate &d, QObject *parent = Q_NULLPTR) (protected)

$prototype=~QLogValueAxis()
$deleteMethod

%%
%% Q_PROPERTY(qreal min READ min WRITE setMin NOTIFY minChanged)
%%

$prototype=qreal min() const
$method=|qreal|min|

$prototype=void setMin(qreal min)
$method=|void|setMin|qreal

%%
%% Q_PROPERTY(qreal max READ max WRITE setMax NOTIFY maxChanged)
%%

$prototype=qreal max() const
$method=|qreal|max|

$prototype=void setMax(qreal max)
$method=|void|setMax|qreal

%%
%% Q_PROPERTY(QString labelFormat READ labelFormat WRITE setLabelFormat NOTIFY labelFormatChanged)
%%

$prototype=QString labelFormat() const
$method=|QString|labelFormat|

$prototype=void setLabelFormat(const QString &format)
$method=|void|setLabelFormat|const QString &

%%
%% Q_PROPERTY(qreal base READ base WRITE setBase NOTIFY baseChanged)
%%

$prototype=qreal base() const
$method=|qreal|base|

$prototype=void setBase(qreal base)
$method=|void|setBase|qreal

%%
%% Q_PROPERTY(int tickCount READ tickCount NOTIFY tickCountChanged)
%%

$prototype=int tickCount() const
$method=|int|tickCount|

%%
%% Q_PROPERTY(int minorTickCount READ minorTickCount WRITE setMinorTickCount NOTIFY minorTickCountChanged)
%%

$prototype=int minorTickCount() const
$method=|int|minorTickCount|

$prototype=void setMinorTickCount(int minorTickCount)
$method=|void|setMinorTickCount|int

%%
%%
%%

$prototype=AxisType type() const
$method=|QAbstractAxis::AxisType|type|

$prototype=void setRange(qreal min, qreal max)
$method=|void|setRange|qreal,qreal

#pragma ENDDUMP