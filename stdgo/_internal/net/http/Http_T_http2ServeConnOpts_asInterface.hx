package stdgo._internal.net.http;
class T_http2ServeConnOpts_asInterface {
    @:keep
    public dynamic function _handler():stdgo._internal.net.http.Http_Handler.Handler return __self__.value._handler();
    @:keep
    public dynamic function _baseConfig():stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> return __self__.value._baseConfig();
    @:keep
    public dynamic function _context():stdgo._internal.context.Context_Context.Context return __self__.value._context();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
