package stdgo._internal.net.http;
class T_initALPNRequest_asInterface {
    @:keep
    public dynamic function serveHTTP(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void __self__.value.serveHTTP(_rw, _req);
    @:keep
    public dynamic function baseContext():stdgo._internal.context.Context_Context.Context return __self__.value.baseContext();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}