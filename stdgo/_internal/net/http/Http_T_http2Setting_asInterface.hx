package stdgo._internal.net.http;
class T_http2Setting_asInterface {
    @:keep
    public dynamic function valid():stdgo.Error return __self__.value.valid();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
