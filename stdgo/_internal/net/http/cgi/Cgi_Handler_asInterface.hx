package stdgo._internal.net.http.cgi;
class Handler_asInterface {
    @:keep
    public dynamic function _handleInternalRedirect(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _path:stdgo.GoString):Void __self__.value._handleInternalRedirect(_rw, _req, _path);
    @:keep
    public dynamic function _printf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._printf(_format, ..._v);
    @:keep
    public dynamic function serveHTTP(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void __self__.value.serveHTTP(_rw, _req);
    @:keep
    public dynamic function _stderr():stdgo._internal.io.Io_Writer.Writer return __self__.value._stderr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.cgi.Cgi_Handler.Handler>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}