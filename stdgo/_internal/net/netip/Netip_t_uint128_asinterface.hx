package stdgo._internal.net.netip;
class T_uint128_asInterface {
    @:keep
    @:tdfield
    public dynamic function _bitsClearedFrom(_bit:stdgo.GoUInt8):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 return @:_0 __self__.value._bitsClearedFrom(_bit);
    @:keep
    @:tdfield
    public dynamic function _bitsSetFrom(_bit:stdgo.GoUInt8):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 return @:_0 __self__.value._bitsSetFrom(_bit);
    @:keep
    @:tdfield
    public dynamic function _halves():stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt64>> return @:_0 __self__.value._halves();
    @:keep
    @:tdfield
    public dynamic function _addOne():stdgo._internal.net.netip.Netip_t_uint128.T_uint128 return @:_0 __self__.value._addOne();
    @:keep
    @:tdfield
    public dynamic function _subOne():stdgo._internal.net.netip.Netip_t_uint128.T_uint128 return @:_0 __self__.value._subOne();
    @:keep
    @:tdfield
    public dynamic function _not():stdgo._internal.net.netip.Netip_t_uint128.T_uint128 return @:_0 __self__.value._not();
    @:keep
    @:tdfield
    public dynamic function _or(_m:stdgo._internal.net.netip.Netip_t_uint128.T_uint128):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 return @:_0 __self__.value._or(_m);
    @:keep
    @:tdfield
    public dynamic function _xor(_m:stdgo._internal.net.netip.Netip_t_uint128.T_uint128):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 return @:_0 __self__.value._xor(_m);
    @:keep
    @:tdfield
    public dynamic function _and(_m:stdgo._internal.net.netip.Netip_t_uint128.T_uint128):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 return @:_0 __self__.value._and(_m);
    @:keep
    @:tdfield
    public dynamic function _isZero():Bool return @:_0 __self__.value._isZero();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.netip.Netip_t_uint128pointer.T_uint128Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
