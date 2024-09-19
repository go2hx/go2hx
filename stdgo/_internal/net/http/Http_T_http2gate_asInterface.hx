package stdgo._internal.net.http;
class T_http2gate_asInterface {
    @:keep
    public dynamic function wait_():Void __self__.value.wait_();
    @:keep
    public dynamic function done():Void __self__.value.done();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2gate.T_http2gate>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
