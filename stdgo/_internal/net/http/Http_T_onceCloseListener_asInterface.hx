package stdgo._internal.net.http;
class T_onceCloseListener_asInterface {
    @:keep
    public dynamic function _close():Void __self__.value._close();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:embedded
    public dynamic function addr():stdgo._internal.net.Net_Addr.Addr return __self__.value.addr();
    @:embedded
    public dynamic function accept():{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return __self__.value.accept();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
