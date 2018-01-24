%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQGraphicsVideoItem: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsVideoItem(QObject *parent = 0);
  ~SlotsQGraphicsVideoItem();
  public slots:
  void nativeSizeChanged(const QSizeF &size);
};