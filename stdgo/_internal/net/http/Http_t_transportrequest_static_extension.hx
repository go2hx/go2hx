package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_transportRequest_asInterface) class T_transportRequest_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _write( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.io.Io_writer.Writer, _1:Bool, _2:stdgo._internal.net.http.Http_header.Header, _3:() -> Bool):stdgo.Error return @:_5 __self__._write(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _wantsHttp10KeepAlive( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool return @:_5 __self__._wantsHttp10KeepAlive();
    @:embedded
    @:embeddededffieldsffun
    public static function _wantsClose( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool return @:_5 __self__._wantsClose();
    @:embedded
    @:embeddededffieldsffun
    public static function _requiresHTTP1( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool return @:_5 __self__._requiresHTTP1();
    @:embedded
    @:embeddededffieldsffun
    public static function _outgoingLength( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.GoInt64 return @:_5 __self__._outgoingLength();
    @:embedded
    @:embeddededffieldsffun
    public static function _multipartReader( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:Bool):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } return @:_5 __self__._multipartReader(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _isReplayable( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool return @:_5 __self__._isReplayable();
    @:embedded
    @:embeddededffieldsffun
    public static function _isH2Upgrade( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool return @:_5 __self__._isH2Upgrade();
    @:embedded
    @:embeddededffieldsffun
    public static function _expectsContinue( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool return @:_5 __self__._expectsContinue();
    @:embedded
    @:embeddededffieldsffun
    public static function _closeBody( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.Error return @:_5 __self__._closeBody();
    @:embedded
    @:embeddededffieldsffun
    public static function writeProxy( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_5 __self__.writeProxy(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function withContext( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:_5 __self__.withContext(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function userAgent( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.GoString return @:_5 __self__.userAgent();
    @:embedded
    @:embeddededffieldsffun
    public static function setBasicAuth( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoString, _1:stdgo.GoString):Void return @:_5 __self__.setBasicAuth(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function referer( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.GoString return @:_5 __self__.referer();
    @:embedded
    @:embeddededffieldsffun
    public static function protoAtLeast( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoInt, _1:stdgo.GoInt):Bool return @:_5 __self__.protoAtLeast(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function postFormValue( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoString):stdgo.GoString return @:_5 __self__.postFormValue(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function parseMultipartForm( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoInt64):stdgo.Error return @:_5 __self__.parseMultipartForm(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function parseForm( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.Error return @:_5 __self__.parseForm();
    @:embedded
    @:embeddededffieldsffun
    public static function multipartReader( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } return @:_5 __self__.multipartReader();
    @:embedded
    @:embeddededffieldsffun
    public static function formValue( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoString):stdgo.GoString return @:_5 __self__.formValue(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function formFile( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>; var _2 : stdgo.Error; } return @:_5 __self__.formFile(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function cookies( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> return @:_5 __self__.cookies();
    @:embedded
    @:embeddededffieldsffun
    public static function cookie( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>; var _1 : stdgo.Error; } return @:_5 __self__.cookie(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function context( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo._internal.context.Context_context.Context return @:_5 __self__.context();
    @:embedded
    @:embeddededffieldsffun
    public static function clone( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:_5 __self__.clone(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function basicAuth( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return @:_5 __self__.basicAuth();
    @:embedded
    @:embeddededffieldsffun
    public static function addCookie( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):Void return @:_5 __self__.addCookie(_0);
}
