package stdgo._internal.net.netip;
@:keep @:allow(stdgo._internal.net.netip.Netip.T_uint128_asInterface) class T_uint128_static_extension {
    @:keep
    @:tdfield
    static public function _bitsClearedFrom( _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128, _bit:stdgo.GoUInt8):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 {
        @:recv var _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128 = _u?.__copy__();
        return _u._and(stdgo._internal.net.netip.Netip__mask6._mask6((_bit : stdgo.GoInt))?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _bitsSetFrom( _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128, _bit:stdgo.GoUInt8):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 {
        @:recv var _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128 = _u?.__copy__();
        return _u._or(stdgo._internal.net.netip.Netip__mask6._mask6((_bit : stdgo.GoInt))._not()?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _halves( _u:stdgo.Ref<stdgo._internal.net.netip.Netip_t_uint128.T_uint128>):stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt64>> {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.netip.Netip_t_uint128.T_uint128> = _u;
        return (new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt64>>(2, 2, ...[stdgo.Go.pointer((@:checkr _u ?? throw "null pointer dereference")._hi), stdgo.Go.pointer((@:checkr _u ?? throw "null pointer dereference")._lo)]) : stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt64>>);
    }
    @:keep
    @:tdfield
    static public function _addOne( _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 {
        @:recv var _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128 = _u?.__copy__();
        var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_u._lo, (1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64)), _lo:stdgo.GoUInt64 = __tmp__._0, _carry:stdgo.GoUInt64 = __tmp__._1;
        return (new stdgo._internal.net.netip.Netip_t_uint128.T_uint128((_u._hi + _carry : stdgo.GoUInt64), _lo) : stdgo._internal.net.netip.Netip_t_uint128.T_uint128);
    }
    @:keep
    @:tdfield
    static public function _subOne( _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 {
        @:recv var _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128 = _u?.__copy__();
        var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_u._lo, (1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64)), _lo:stdgo.GoUInt64 = __tmp__._0, _borrow:stdgo.GoUInt64 = __tmp__._1;
        return (new stdgo._internal.net.netip.Netip_t_uint128.T_uint128((_u._hi - _borrow : stdgo.GoUInt64), _lo) : stdgo._internal.net.netip.Netip_t_uint128.T_uint128);
    }
    @:keep
    @:tdfield
    static public function _not( _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 {
        @:recv var _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128 = _u?.__copy__();
        return (new stdgo._internal.net.netip.Netip_t_uint128.T_uint128((-1 ^ _u._hi), (-1 ^ _u._lo)) : stdgo._internal.net.netip.Netip_t_uint128.T_uint128);
    }
    @:keep
    @:tdfield
    static public function _or( _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128, _m:stdgo._internal.net.netip.Netip_t_uint128.T_uint128):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 {
        @:recv var _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128 = _u?.__copy__();
        return (new stdgo._internal.net.netip.Netip_t_uint128.T_uint128((_u._hi | _m._hi : stdgo.GoUInt64), (_u._lo | _m._lo : stdgo.GoUInt64)) : stdgo._internal.net.netip.Netip_t_uint128.T_uint128);
    }
    @:keep
    @:tdfield
    static public function _xor( _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128, _m:stdgo._internal.net.netip.Netip_t_uint128.T_uint128):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 {
        @:recv var _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128 = _u?.__copy__();
        return (new stdgo._internal.net.netip.Netip_t_uint128.T_uint128((_u._hi ^ _m._hi : stdgo.GoUInt64), (_u._lo ^ _m._lo : stdgo.GoUInt64)) : stdgo._internal.net.netip.Netip_t_uint128.T_uint128);
    }
    @:keep
    @:tdfield
    static public function _and( _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128, _m:stdgo._internal.net.netip.Netip_t_uint128.T_uint128):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 {
        @:recv var _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128 = _u?.__copy__();
        return (new stdgo._internal.net.netip.Netip_t_uint128.T_uint128((_u._hi & _m._hi : stdgo.GoUInt64), (_u._lo & _m._lo : stdgo.GoUInt64)) : stdgo._internal.net.netip.Netip_t_uint128.T_uint128);
    }
    @:keep
    @:tdfield
    static public function _isZero( _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128):Bool {
        @:recv var _u:stdgo._internal.net.netip.Netip_t_uint128.T_uint128 = _u?.__copy__();
        return (_u._hi | _u._lo : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64));
    }
}
