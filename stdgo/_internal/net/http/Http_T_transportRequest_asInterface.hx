package stdgo._internal.net.http;
class T_transportRequest_asInterface {
    @:keep
    public dynamic function _logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._logf(_format, ..._args);
    @:keep
    public dynamic function _setError(_err:stdgo.Error):Void __self__.value._setError(_err);
    @:keep
    public dynamic function _extraHeaders():stdgo._internal.net.http.Http_Header.Header return __self__.value._extraHeaders();
    @:embedded
    public dynamic function _write(_w:stdgo._internal.io.Io_Writer.Writer, _usingProxy:Bool, _extraHeaders:stdgo._internal.net.http.Http_Header.Header, _waitForContinue:() -> Bool):stdgo.Error return __self__.value._write(_w, _usingProxy, _extraHeaders, _waitForContinue);
    @:embedded
    public dynamic function _wantsHttp10KeepAlive():Bool return __self__.value._wantsHttp10KeepAlive();
    @:embedded
    public dynamic function _wantsClose():Bool return __self__.value._wantsClose();
    @:embedded
    public dynamic function _requiresHTTP1():Bool return __self__.value._requiresHTTP1();
    @:embedded
    public dynamic function _outgoingLength():stdgo.GoInt64 return __self__.value._outgoingLength();
    @:embedded
    public dynamic function _multipartReader(__0:Bool):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } return __self__.value._multipartReader(__0);
    @:embedded
    public dynamic function _isReplayable():Bool return __self__.value._isReplayable();
    @:embedded
    public dynamic function _isH2Upgrade():Bool return __self__.value._isH2Upgrade();
    @:embedded
    public dynamic function _expectsContinue():Bool return __self__.value._expectsContinue();
    @:embedded
    public dynamic function _closeBody():stdgo.Error return __self__.value._closeBody();
    @:embedded
    public dynamic function writeProxy(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return __self__.value.writeProxy(_w);
    @:embedded
    public dynamic function write(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return __self__.value.write(_w);
    @:embedded
    public dynamic function withContext(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> return __self__.value.withContext(_ctx);
    @:embedded
    public dynamic function userAgent():stdgo.GoString return __self__.value.userAgent();
    @:embedded
    public dynamic function setBasicAuth(_key:stdgo.GoString, _value:stdgo.GoString):Void __self__.value.setBasicAuth(_key, _value);
    @:embedded
    public dynamic function referer():stdgo.GoString return __self__.value.referer();
    @:embedded
    public dynamic function protoAtLeast(_year:stdgo.GoInt, _week:stdgo.GoInt):Bool return __self__.value.protoAtLeast(_year, _week);
    @:embedded
    public dynamic function postFormValue(__0:stdgo.GoString):stdgo.GoString return __self__.value.postFormValue(__0);
    @:embedded
    public dynamic function parseMultipartForm(__0:stdgo.GoInt64):stdgo.Error return __self__.value.parseMultipartForm(__0);
    @:embedded
    public dynamic function parseForm():stdgo.Error return __self__.value.parseForm();
    @:embedded
    public dynamic function multipartReader():{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } return __self__.value.multipartReader();
    @:embedded
    public dynamic function formValue(__0:stdgo.GoString):stdgo.GoString return __self__.value.formValue(__0);
    @:embedded
    public dynamic function formFile(__0:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_File.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>; var _2 : stdgo.Error; } return __self__.value.formFile(__0);
    @:embedded
    public dynamic function cookies():stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> return __self__.value.cookies();
    @:embedded
    public dynamic function cookie(__0:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>; var _1 : stdgo.Error; } return __self__.value.cookie(__0);
    @:embedded
    public dynamic function context():stdgo._internal.context.Context_Context.Context return __self__.value.context();
    @:embedded
    public dynamic function clone(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> return __self__.value.clone(_ctx);
    @:embedded
    public dynamic function basicAuth():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return __self__.value.basicAuth();
    @:embedded
    public dynamic function addCookie(_c:stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>):Void __self__.value.addCookie(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
