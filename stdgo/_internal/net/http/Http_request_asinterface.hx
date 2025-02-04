package stdgo._internal.net.http;
class Request_asInterface {
    @:keep
    @:tdfield
    public dynamic function formFile(_key:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>; var _2 : stdgo.Error; } return @:_0 __self__.value.formFile(_key);
    @:keep
    @:tdfield
    public dynamic function postFormValue(_key:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.postFormValue(_key);
    @:keep
    @:tdfield
    public dynamic function formValue(_key:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.formValue(_key);
    @:keep
    @:tdfield
    public dynamic function parseMultipartForm(_maxMemory:stdgo.GoInt64):stdgo.Error return @:_0 __self__.value.parseMultipartForm(_maxMemory);
    @:keep
    @:tdfield
    public dynamic function parseForm():stdgo.Error return @:_0 __self__.value.parseForm();
    @:keep
    @:tdfield
    public dynamic function setBasicAuth(_username:stdgo.GoString, _password:stdgo.GoString):Void @:_0 __self__.value.setBasicAuth(_username, _password);
    @:keep
    @:tdfield
    public dynamic function basicAuth():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return @:_0 __self__.value.basicAuth();
    @:keep
    @:tdfield
    public dynamic function writeProxy(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.writeProxy(_w);
    @:keep
    @:tdfield
    public dynamic function write(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.write(_w);
    @:keep
    @:tdfield
    public dynamic function multipartReader():{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } return @:_0 __self__.value.multipartReader();
    @:keep
    @:tdfield
    public dynamic function referer():stdgo.GoString return @:_0 __self__.value.referer();
    @:keep
    @:tdfield
    public dynamic function addCookie(_c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):Void @:_0 __self__.value.addCookie(_c);
    @:keep
    @:tdfield
    public dynamic function cookie(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>; var _1 : stdgo.Error; } return @:_0 __self__.value.cookie(_name);
    @:keep
    @:tdfield
    public dynamic function cookies():stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> return @:_0 __self__.value.cookies();
    @:keep
    @:tdfield
    public dynamic function userAgent():stdgo.GoString return @:_0 __self__.value.userAgent();
    @:keep
    @:tdfield
    public dynamic function protoAtLeast(_major:stdgo.GoInt, _minor:stdgo.GoInt):Bool return @:_0 __self__.value.protoAtLeast(_major, _minor);
    @:keep
    @:tdfield
    public dynamic function clone(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:_0 __self__.value.clone(_ctx);
    @:keep
    @:tdfield
    public dynamic function withContext(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:_0 __self__.value.withContext(_ctx);
    @:keep
    @:tdfield
    public dynamic function context():stdgo._internal.context.Context_context.Context return @:_0 __self__.value.context();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_requestpointer.RequestPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
