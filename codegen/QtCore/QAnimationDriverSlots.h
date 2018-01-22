%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQAnimationDriver: public QObject
{
  Q_OBJECT
  public:
  SlotsQAnimationDriver(QObject *parent = 0);
  ~SlotsQAnimationDriver();
  public slots:
  void started();
  void stopped();
};