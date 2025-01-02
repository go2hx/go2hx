package stdgo._internal.net.http;
class ServeMux_asInterface {
    @:keep
    @:tdfield
    public dynamic function handleFunc(_pattern:stdgo.GoString, _handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):Void @:_0 __self__.value.handleFunc(_pattern, _handler);
    @:keep
    @:tdfield
    public dynamic function handle(_pattern:stdgo.GoString, _handler:stdgo._internal.net.http.Http_Handler.Handler):Void @:_0 __self__.value.handle(_pattern, _handler);
    @:keep
    @:tdfield
    public dynamic function serveHTTP(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void @:_0 __self__.value.serveHTTP(_w, _r);
    @:keep
    @:tdfield
    public dynamic function _handler(_host:stdgo.GoString, _path:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } return @:_0 __self__.value._handler(_host, _path);
    @:keep
    @:tdfield
    public dynamic function handler(_r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } return @:_0 __self__.value.handler(_r);
    @:keep
    @:tdfield
    public dynamic function _shouldRedirectRLocked(_host:stdgo.GoString, _path:stdgo.GoString):Bool return @:_0 __self__.value._shouldRedirectRLocked(_host, _path);
    @:keep
    @:tdfield
    public dynamic function _redirectToPathSlash(_host:stdgo.GoString, _path:stdgo.GoString, _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : Bool; } return @:_0 __self__.value._redirectToPathSlash(_host, _path, _u);
    @:keep
    @:tdfield
    public dynamic function _match(_path:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } return @:_0 __self__.value._match(_path);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_ServeMuxPointer.ServeMuxPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
