package stdgo._internal.net.http;
class T_socksDialer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _pathAddrs(_address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo._internal.net.Net_Addr.Addr; var _2 : stdgo.Error; } return @:_0 __self__.value._pathAddrs(_address);
    @:keep
    @:tdfield
    public dynamic function _validateTarget(_network:stdgo.GoString, _address:stdgo.GoString):stdgo.Error return @:_0 __self__.value._validateTarget(_network, _address);
    @:keep
    @:tdfield
    public dynamic function dial(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value.dial(_network, _address);
    @:keep
    @:tdfield
    public dynamic function dialWithConn(_ctx:stdgo._internal.context.Context_Context.Context, _c:stdgo._internal.net.Net_Conn.Conn, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } return @:_0 __self__.value.dialWithConn(_ctx, _c, _network, _address);
    @:keep
    @:tdfield
    public dynamic function dialContext(_ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value.dialContext(_ctx, _network, _address);
    @:keep
    @:tdfield
    public dynamic function _connect(_ctx:stdgo._internal.context.Context_Context.Context, _c:stdgo._internal.net.Net_Conn.Conn, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } return @:_0 __self__.value._connect(_ctx, _c, _address);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_socksDialerPointer.T_socksDialerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
