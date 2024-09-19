package stdgo._internal.crypto.tls;
class Dialer_asInterface {
    @:keep
    public dynamic function dialContext(_ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return __self__.value.dialContext(_ctx, _network, _addr);
    @:keep
    public dynamic function _netDialer():stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer> return __self__.value._netDialer();
    @:keep
    public dynamic function dial(_network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return __self__.value.dial(_network, _addr);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_Dialer.Dialer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
