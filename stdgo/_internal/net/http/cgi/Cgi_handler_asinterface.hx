package stdgo._internal.net.http.cgi;
class Handler_asInterface {
    @:keep
    @:tdfield
    public dynamic function _handleInternalRedirect(_rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _path:stdgo.GoString):Void @:_0 __self__.value._handleInternalRedirect(_rw, _req, _path);
    @:keep
    @:tdfield
    public dynamic function _printf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._printf(_format, ..._v);
    @:keep
    @:tdfield
    public dynamic function serveHTTP(_rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void @:_0 __self__.value.serveHTTP(_rw, _req);
    @:keep
    @:tdfield
    public dynamic function _stderr():stdgo._internal.io.Io_writer.Writer return @:_0 __self__.value._stderr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.cgi.Cgi_handlerpointer.HandlerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
