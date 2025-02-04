package stdgo._internal.crypto.tls;
class Dialer_asInterface {
    @:keep
    @:tdfield
    public dynamic function dialContext(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value.dialContext(_ctx, _network, _addr);
    @:keep
    @:tdfield
    public dynamic function _netDialer():stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer> return @:_0 __self__.value._netDialer();
    @:keep
    @:tdfield
    public dynamic function dial(_network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value.dial(_network, _addr);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_dialerpointer.DialerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
