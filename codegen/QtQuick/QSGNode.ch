%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QSGNode::DirtyStateBit
flags QSGNode::DirtyState
*/
#define QSGNode_DirtyMatrix                                          0x0100
#define QSGNode_DirtyNodeAdded                                       0x0400
#define QSGNode_DirtyNodeRemoved                                     0x0800
#define QSGNode_DirtyGeometry                                        0x1000
#define QSGNode_DirtyMaterial                                        0x2000
#define QSGNode_DirtyOpacity                                         0x4000

/*
enum QSGNode::Flag
flags QSGNode::Flags
*/
#define QSGNode_OwnedByParent                                        0x0001
#define QSGNode_UsePreprocess                                        0x0002
#define QSGNode_OwnsGeometry                                         0x00010000
#define QSGNode_OwnsMaterial                                         0x00020000
#define QSGNode_OwnsOpaqueMaterial                                   0x00040000

/*
enum QSGNode::NodeType
*/
#define QSGNode_BasicNodeType                                        0
#define QSGNode_GeometryNodeType                                     1
#define QSGNode_TransformNodeType                                    2
#define QSGNode_ClipNodeType                                         3
#define QSGNode_OpacityNodeType                                      4
