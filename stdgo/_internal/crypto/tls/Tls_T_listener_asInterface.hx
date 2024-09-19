package stdgo._internal.crypto.tls;
class T_listener_asInterface {
    @:keep
    public dynamic function accept():{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return __self__.value.accept();
    @:embedded
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:embedded
    public dynamic function addr():stdgo._internal.net.Net_Addr.Addr return __self__.value.addr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_T_listener.T_listener>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
