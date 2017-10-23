/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QGLShader INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD compileSourceCode1
   METHOD compileSourceCode2
   METHOD compileSourceCode3
   METHOD compileSourceCode
   METHOD compileSourceFile
   METHOD isCompiled
   METHOD log
   METHOD shaderId
   METHOD shaderType
   METHOD sourceCode
   METHOD hasOpenGLShaders

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLShader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGLShader>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGLShader>
#endif

/*
QGLShader ( QGLShader::ShaderType type, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGLSHADER_NEW1 )
{
  QGLShader * o = new QGLShader ( (QGLShader::ShaderType) hb_parni(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGLShader ( QGLShader::ShaderType type, const QGLContext * context, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGLSHADER_NEW2 )
{
  QGLContext * par2 = (QGLContext *) _qt5xhb_itemGetPtr(2);
  QGLShader * o = new QGLShader ( (QGLShader::ShaderType) hb_parni(1), par2, OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QGLShader ( QGLShader::ShaderType type, QObject * parent = 0 )
//[2]QGLShader ( QGLShader::ShaderType type, const QGLContext * context, QObject * parent = 0 )

HB_FUNC_STATIC( QGLSHADER_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QGLSHADER_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQGLCONTEXT(2) && ISOPTQOBJECT(3) )
  {
    HB_FUNC_EXEC( QGLSHADER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLSHADER_DELETE )
{
  QGLShader * obj = (QGLShader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool compileSourceCode ( const char * source )
*/
HB_FUNC_STATIC( QGLSHADER_COMPILESOURCECODE1 )
{
  QGLShader * obj = (QGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->compileSourceCode ( PCONSTCHAR(1) ) );
  }
}

/*
bool compileSourceCode ( const QByteArray & source )
*/
HB_FUNC_STATIC( QGLSHADER_COMPILESOURCECODE2 )
{
  QGLShader * obj = (QGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->compileSourceCode ( *PQBYTEARRAY(1) ) );
  }
}

/*
bool compileSourceCode ( const QString & source )
*/
HB_FUNC_STATIC( QGLSHADER_COMPILESOURCECODE3 )
{
  QGLShader * obj = (QGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->compileSourceCode ( PQSTRING(1) ) );
  }
}


//[1]bool compileSourceCode ( const char * source )
//[2]bool compileSourceCode ( const QByteArray & source )
//[3]bool compileSourceCode ( const QString & source )

HB_FUNC_STATIC( QGLSHADER_COMPILESOURCECODE )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QGLSHADER_COMPILESOURCECODE2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QGLSHADER_COMPILESOURCECODE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool compileSourceFile ( const QString & fileName )
*/
HB_FUNC_STATIC( QGLSHADER_COMPILESOURCEFILE )
{
  QGLShader * obj = (QGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->compileSourceFile ( PQSTRING(1) ) );
  }
}


/*
bool isCompiled () const
*/
HB_FUNC_STATIC( QGLSHADER_ISCOMPILED )
{
  QGLShader * obj = (QGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isCompiled () );
  }
}


/*
QString log () const
*/
HB_FUNC_STATIC( QGLSHADER_LOG )
{
  QGLShader * obj = (QGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->log () );
  }
}


/*
GLuint shaderId () const
*/
HB_FUNC_STATIC( QGLSHADER_SHADERID )
{
  QGLShader * obj = (QGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLUINT( obj->shaderId () );
  }
}


/*
QGLShader::ShaderType shaderType () const
*/
HB_FUNC_STATIC( QGLSHADER_SHADERTYPE )
{
  QGLShader * obj = (QGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->shaderType () );
  }
}


/*
QByteArray sourceCode () const
*/
HB_FUNC_STATIC( QGLSHADER_SOURCECODE )
{
  QGLShader * obj = (QGLShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->sourceCode () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
static bool hasOpenGLShaders ( ShaderType type, const QGLContext * context = 0 )
*/
HB_FUNC_STATIC( QGLSHADER_HASOPENGLSHADERS )
{
  const QGLContext * par2 = ISNIL(2)? 0 : (const QGLContext *) _qt5xhb_itemGetPtr(2);
  RBOOL( QGLShader::hasOpenGLShaders ( (QGLShader::ShaderType) hb_parni(1), par2 ) );
}



#pragma ENDDUMP
