package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_transportRequest_asInterface) class T_transportRequest_static_extension {
    @:keep
    static public function _logf( _tr:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tr:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest> = _tr;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_tr.request.context().value(stdgo.Go.toInterface((new stdgo._internal.net.http.Http_T_tLogKey.T_tLogKey() : stdgo._internal.net.http.Http_T_tLogKey.T_tLogKey))) : (stdgo.GoString, stdgo.Slice<stdgo.AnyInterface>) -> Void)) : (stdgo.GoString, stdgo.Slice<stdgo.AnyInterface>) -> Void), _1 : true };
            } catch(_) {
                { _0 : null, _1 : false };
            }, _logf = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _logf(((stdgo._internal.time.Time_now.now().format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _format?.__copy__() : stdgo.GoString)?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
            };
        };
    }
    @:keep
    static public function _setError( _tr:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>, _err:stdgo.Error):Void {
        @:recv var _tr:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest> = _tr;
        _tr._mu.lock();
        if (_tr._err == null) {
            _tr._err = _err;
        };
        _tr._mu.unlock();
    }
    @:keep
    static public function _extraHeaders( _tr:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>):stdgo._internal.net.http.Http_Header.Header {
        @:recv var _tr:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest> = _tr;
        if (_tr._extra == null) {
            _tr._extra = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        };
        return _tr._extra;
    }
    @:embedded
    public static function _write( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _w:stdgo._internal.io.Io_Writer.Writer, _usingProxy:Bool, _extraHeaders:stdgo._internal.net.http.Http_Header.Header, _waitForContinue:() -> Bool):stdgo.Error return __self__._write(_w, _usingProxy, _extraHeaders, _waitForContinue);
    @:embedded
    public static function _wantsHttp10KeepAlive( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool return __self__._wantsHttp10KeepAlive();
    @:embedded
    public static function _wantsClose( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool return __self__._wantsClose();
    @:embedded
    public static function _requiresHTTP1( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool return __self__._requiresHTTP1();
    @:embedded
    public static function _outgoingLength( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.GoInt64 return __self__._outgoingLength();
    @:embedded
    public static function _multipartReader( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, __0:Bool):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } return __self__._multipartReader(__0);
    @:embedded
    public static function _isReplayable( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool return __self__._isReplayable();
    @:embedded
    public static function _isH2Upgrade( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool return __self__._isH2Upgrade();
    @:embedded
    public static function _expectsContinue( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool return __self__._expectsContinue();
    @:embedded
    public static function _closeBody( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Error return __self__._closeBody();
    @:embedded
    public static function writeProxy( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return __self__.writeProxy(_w);
    @:embedded
    public static function write( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return __self__.write(_w);
    @:embedded
    public static function withContext( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> return __self__.withContext(_ctx);
    @:embedded
    public static function userAgent( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.GoString return __self__.userAgent();
    @:embedded
    public static function setBasicAuth( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _key:stdgo.GoString, _value:stdgo.GoString) __self__.setBasicAuth(_key, _value);
    @:embedded
    public static function referer( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.GoString return __self__.referer();
    @:embedded
    public static function protoAtLeast( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _year:stdgo.GoInt, _week:stdgo.GoInt):Bool return __self__.protoAtLeast(_year, _week);
    @:embedded
    public static function postFormValue( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, __0:stdgo.GoString):stdgo.GoString return __self__.postFormValue(__0);
    @:embedded
    public static function parseMultipartForm( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, __0:stdgo.GoInt64):stdgo.Error return __self__.parseMultipartForm(__0);
    @:embedded
    public static function parseForm( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Error return __self__.parseForm();
    @:embedded
    public static function multipartReader( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } return __self__.multipartReader();
    @:embedded
    public static function formValue( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, __0:stdgo.GoString):stdgo.GoString return __self__.formValue(__0);
    @:embedded
    public static function formFile( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, __0:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_File.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>; var _2 : stdgo.Error; } return __self__.formFile(__0);
    @:embedded
    public static function cookies( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> return __self__.cookies();
    @:embedded
    public static function cookie( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, __0:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>; var _1 : stdgo.Error; } return __self__.cookie(__0);
    @:embedded
    public static function context( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo._internal.context.Context_Context.Context return __self__.context();
    @:embedded
    public static function clone( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> return __self__.clone(_ctx);
    @:embedded
    public static function basicAuth( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return __self__.basicAuth();
    @:embedded
    public static function addCookie( __self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _c:stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>) __self__.addCookie(_c);
}
