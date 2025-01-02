package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_transportRequest_asInterface) class T_transportRequest_static_extension {
    @:keep
    @:tdfield
    static public function _logf( _tr:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tr:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest> = _tr;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((@:check2r (@:checkr _tr ?? throw "null pointer dereference").request.context().value(stdgo.Go.toInterface((new stdgo._internal.net.http.Http_T_tLogKey.T_tLogKey() : stdgo._internal.net.http.Http_T_tLogKey.T_tLogKey))) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void)) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void), _1 : true };
            } catch(_) {
                { _0 : null, _1 : false };
            }, _logf = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _logf(((stdgo._internal.time.Time_now.now().format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _format?.__copy__() : stdgo.GoString)?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _setError( _tr:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>, _err:stdgo.Error):Void {
        @:recv var _tr:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest> = _tr;
        @:check2 (@:checkr _tr ?? throw "null pointer dereference")._mu.lock();
        if ((@:checkr _tr ?? throw "null pointer dereference")._err == null) {
            (@:checkr _tr ?? throw "null pointer dereference")._err = _err;
        };
        @:check2 (@:checkr _tr ?? throw "null pointer dereference")._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function _extraHeaders( _tr:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>):stdgo._internal.net.http.Http_Header.Header {
        @:recv var _tr:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest> = _tr;
        if ((@:checkr _tr ?? throw "null pointer dereference")._extra == null) {
            (@:checkr _tr ?? throw "null pointer dereference")._extra = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        };
        return (@:checkr _tr ?? throw "null pointer dereference")._extra;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _write( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.io.Io_Writer.Writer, _1:Bool, _2:stdgo._internal.net.http.Http_Header.Header, _3:() -> Bool):stdgo.Error return @:_5 __self__._write(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _wantsHttp10KeepAlive( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool return @:_5 __self__._wantsHttp10KeepAlive();
    @:embedded
    @:embeddededffieldsffun
    public static function _wantsClose( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool return @:_5 __self__._wantsClose();
    @:embedded
    @:embeddededffieldsffun
    public static function _requiresHTTP1( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool return @:_5 __self__._requiresHTTP1();
    @:embedded
    @:embeddededffieldsffun
    public static function _outgoingLength( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.GoInt64 return @:_5 __self__._outgoingLength();
    @:embedded
    @:embeddededffieldsffun
    public static function _multipartReader( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:Bool):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } return @:_5 __self__._multipartReader(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _isReplayable( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool return @:_5 __self__._isReplayable();
    @:embedded
    @:embeddededffieldsffun
    public static function _isH2Upgrade( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool return @:_5 __self__._isH2Upgrade();
    @:embedded
    @:embeddededffieldsffun
    public static function _expectsContinue( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool return @:_5 __self__._expectsContinue();
    @:embedded
    @:embeddededffieldsffun
    public static function _closeBody( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Error return @:_5 __self__._closeBody();
    @:embedded
    @:embeddededffieldsffun
    public static function writeProxy( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return @:_5 __self__.writeProxy(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function withContext( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> return @:_5 __self__.withContext(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function userAgent( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.GoString return @:_5 __self__.userAgent();
    @:embedded
    @:embeddededffieldsffun
    public static function setBasicAuth( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo.GoString, _1:stdgo.GoString):Void return @:_5 __self__.setBasicAuth(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function referer( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.GoString return @:_5 __self__.referer();
    @:embedded
    @:embeddededffieldsffun
    public static function protoAtLeast( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo.GoInt, _1:stdgo.GoInt):Bool return @:_5 __self__.protoAtLeast(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function postFormValue( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo.GoString):stdgo.GoString return @:_5 __self__.postFormValue(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function parseMultipartForm( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo.GoInt64):stdgo.Error return @:_5 __self__.parseMultipartForm(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function parseForm( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Error return @:_5 __self__.parseForm();
    @:embedded
    @:embeddededffieldsffun
    public static function multipartReader( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } return @:_5 __self__.multipartReader();
    @:embedded
    @:embeddededffieldsffun
    public static function formValue( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo.GoString):stdgo.GoString return @:_5 __self__.formValue(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function formFile( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_File.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>; var _2 : stdgo.Error; } return @:_5 __self__.formFile(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function cookies( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> return @:_5 __self__.cookies();
    @:embedded
    @:embeddededffieldsffun
    public static function cookie( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>; var _1 : stdgo.Error; } return @:_5 __self__.cookie(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function context( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo._internal.context.Context_Context.Context return @:_5 __self__.context();
    @:embedded
    @:embeddededffieldsffun
    public static function clone( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> return @:_5 __self__.clone(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function basicAuth( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return @:_5 __self__.basicAuth();
    @:embedded
    @:embeddededffieldsffun
    public static function addCookie( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>):Void return @:_5 __self__.addCookie(_0);
}
