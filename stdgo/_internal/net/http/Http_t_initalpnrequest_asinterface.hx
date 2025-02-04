package stdgo._internal.net.http;
class T_initALPNRequest_asInterface {
    @:keep
    @:tdfield
    public dynamic function serveHTTP(_rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void @:_0 __self__.value.serveHTTP(_rw, _req);
    @:keep
    @:tdfield
    public dynamic function baseContext():stdgo._internal.context.Context_context.Context return @:_0 __self__.value.baseContext();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_initalpnrequestpointer.T_initALPNRequestPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
