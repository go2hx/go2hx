package stdgo._internal.net.http;
class T_http2addConnCall_asInterface {
    @:keep
    public dynamic function _run(_t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _key:stdgo.GoString, _tc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):Void __self__.value._run(_t, _key, _tc);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
