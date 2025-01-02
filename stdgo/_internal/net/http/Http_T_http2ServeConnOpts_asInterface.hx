package stdgo._internal.net.http;
class T_http2ServeConnOpts_asInterface {
    @:keep
    @:tdfield
    public dynamic function _handler():stdgo._internal.net.http.Http_Handler.Handler return @:_0 __self__.value._handler();
    @:keep
    @:tdfield
    public dynamic function _baseConfig():stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> return @:_0 __self__.value._baseConfig();
    @:keep
    @:tdfield
    public dynamic function _context():stdgo._internal.context.Context_Context.Context return @:_0 __self__.value._context();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_http2ServeConnOptsPointer.T_http2ServeConnOptsPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
