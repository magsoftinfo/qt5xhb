%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

class SlotsQGeoPositionInfoSource: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoPositionInfoSource(QObject *parent = 0);
  ~SlotsQGeoPositionInfoSource();
  public slots:
  void positionUpdated(const QGeoPositionInfo &update);
  void updateTimeout();
  void error(QGeoPositionInfoSource::Error);
};