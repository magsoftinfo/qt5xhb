%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQAbstractTextDocumentLayout: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractTextDocumentLayout(QObject *parent = 0);
  ~SlotsQAbstractTextDocumentLayout();
  public slots:
  void documentSizeChanged ( const QSizeF & newSize );
  void pageCountChanged ( int newPages );
  void update ( const QRectF & rect = QRectF( 0., 0., 1000000000., 1000000000. ) );
  void updateBlock ( const QTextBlock & block );
};