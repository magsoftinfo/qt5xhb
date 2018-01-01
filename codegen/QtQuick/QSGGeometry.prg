%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QSGGeometry

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD allocate
   METHOD attributeCount
   METHOD drawingMode
   METHOD indexCount
   METHOD indexDataPattern
   METHOD indexType
   METHOD lineWidth
   METHOD markIndexDataDirty
   METHOD markVertexDataDirty
   METHOD setDrawingMode
   METHOD setIndexDataPattern
   METHOD setLineWidth
   METHOD setVertexDataPattern
   METHOD sizeOfIndex
   METHOD sizeOfVertex
   METHOD vertexCount
   METHOD vertexDataPattern
   METHOD updateRectGeometry
   METHOD updateTexturedRectGeometry

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void allocate(int vertexCount, int indexCount = 0)
$method=|void|allocate|int,int=0

$prototype=int attributeCount() const
$method=|int|attributeCount|

$prototype=GLenum drawingMode() const
$method=|GLenum|drawingMode|

$prototype=int indexCount() const
$method=|int|indexCount|

$prototype=DataPattern indexDataPattern() const
$method=|QSGGeometry::DataPattern|indexDataPattern|

$prototype=int indexType() const
$method=|int|indexType|

$prototype=float lineWidth() const
$method=|float|lineWidth|

$prototype=void markIndexDataDirty()
$method=|void|markIndexDataDirty|

$prototype=void markVertexDataDirty()
$method=|void|markVertexDataDirty|

$prototype=void setDrawingMode(GLenum mode)
$method=|void|setDrawingMode|GLenum

$prototype=void setIndexDataPattern(DataPattern p)
$method=|void|setIndexDataPattern|QSGGeometry::DataPattern

$prototype=void setLineWidth(float width)
$method=|void|setLineWidth|float

$prototype=void setVertexDataPattern(DataPattern p)
$method=|void|setVertexDataPattern|QSGGeometry::DataPattern

$prototype=int sizeOfIndex() const
$method=|int|sizeOfIndex|

$prototype=int sizeOfVertex() const
$method=|int|sizeOfVertex|

$prototype=int vertexCount() const
$method=|int|vertexCount|

$prototype=DataPattern vertexDataPattern() const
$method=|QSGGeometry::DataPattern|vertexDataPattern|

$prototype=static void updateRectGeometry(QSGGeometry * g, const QRectF & rect)
$staticMethod=|void|updateRectGeometry|QSGGeometry *,const QRectF &

$prototype=static void updateTexturedRectGeometry(QSGGeometry * g, const QRectF & rect, const QRectF & textureRect)
$staticMethod=|void|updateTexturedRectGeometry|QSGGeometry *,const QRectF &,const QRectF &

$extraMethods

#pragma ENDDUMP
