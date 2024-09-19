package stdgo._internal.net.http;
class Request_asInterface {
    @:keep
    public dynamic function _requiresHTTP1():Bool return __self__.value._requiresHTTP1();
    @:keep
    public dynamic function _outgoingLength():stdgo.GoInt64 return __self__.value._outgoingLength();
    @:keep
    public dynamic function _isReplayable():Bool return __self__.value._isReplayable();
    @:keep
    public dynamic function _closeBody():stdgo.Error return __self__.value._closeBody();
    @:keep
    public dynamic function _wantsClose():Bool return __self__.value._wantsClose();
    @:keep
    public dynamic function _wantsHttp10KeepAlive():Bool return __self__.value._wantsHttp10KeepAlive();
    @:keep
    public dynamic function _expectsContinue():Bool return __self__.value._expectsContinue();
    @:keep
    public dynamic function formFile(_key:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_File.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>; var _2 : stdgo.Error; } return __self__.value.formFile(_key);
    @:keep
    public dynamic function postFormValue(_key:stdgo.GoString):stdgo.GoString return __self__.value.postFormValue(_key);
    @:keep
    public dynamic function formValue(_key:stdgo.GoString):stdgo.GoString return __self__.value.formValue(_key);
    @:keep
    public dynamic function parseMultipartForm(_maxMemory:stdgo.GoInt64):stdgo.Error return __self__.value.parseMultipartForm(_maxMemory);
    @:keep
    public dynamic function parseForm():stdgo.Error return __self__.value.parseForm();
    @:keep
    public dynamic function setBasicAuth(_username:stdgo.GoString, _password:stdgo.GoString):Void __self__.value.setBasicAuth(_username, _password);
    @:keep
    public dynamic function basicAuth():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return __self__.value.basicAuth();
    @:keep
    public dynamic function _write(_w:stdgo._internal.io.Io_Writer.Writer, _usingProxy:Bool, _extraHeaders:stdgo._internal.net.http.Http_Header.Header, _waitForContinue:() -> Bool):stdgo.Error return __self__.value._write(_w, _usingProxy, _extraHeaders, _waitForContinue);
    @:keep
    public dynamic function writeProxy(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return __self__.value.writeProxy(_w);
    @:keep
    public dynamic function write(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return __self__.value.write(_w);
    @:keep
    public dynamic function _isH2Upgrade():Bool return __self__.value._isH2Upgrade();
    @:keep
    public dynamic function _multipartReader(_allowMixed:Bool):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } return __self__.value._multipartReader(_allowMixed);
    @:keep
    public dynamic function multipartReader():{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } return __self__.value.multipartReader();
    @:keep
    public dynamic function referer():stdgo.GoString return __self__.value.referer();
    @:keep
    public dynamic function addCookie(_c:stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>):Void __self__.value.addCookie(_c);
    @:keep
    public dynamic function cookie(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>; var _1 : stdgo.Error; } return __self__.value.cookie(_name);
    @:keep
    public dynamic function cookies():stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> return __self__.value.cookies();
    @:keep
    public dynamic function userAgent():stdgo.GoString return __self__.value.userAgent();
    @:keep
    public dynamic function protoAtLeast(_major:stdgo.GoInt, _minor:stdgo.GoInt):Bool return __self__.value.protoAtLeast(_major, _minor);
    @:keep
    public dynamic function clone(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> return __self__.value.clone(_ctx);
    @:keep
    public dynamic function withContext(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> return __self__.value.withContext(_ctx);
    @:keep
    public dynamic function context():stdgo._internal.context.Context_Context.Context return __self__.value.context();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_Request.Request>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
