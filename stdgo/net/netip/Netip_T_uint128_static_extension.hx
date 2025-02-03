package stdgo.net.netip;
class T_uint128_static_extension {
    static public function _bitsClearedFrom(_u:T_uint128, _bit:std.UInt):T_uint128 {
        final _bit = (_bit : stdgo.GoUInt8);
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._bitsClearedFrom(_u, _bit);
    }
    static public function _bitsSetFrom(_u:T_uint128, _bit:std.UInt):T_uint128 {
        final _bit = (_bit : stdgo.GoUInt8);
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._bitsSetFrom(_u, _bit);
    }
    static public function _halves(_u:T_uint128):haxe.ds.Vector<stdgo.Pointer<haxe.UInt64>> {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.netip.Netip_T_uint128.T_uint128>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._halves(_u)) i]);
    }
    static public function _addOne(_u:T_uint128):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._addOne(_u);
    }
    static public function _subOne(_u:T_uint128):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._subOne(_u);
    }
    static public function _not(_u:T_uint128):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._not(_u);
    }
    static public function _or(_u:T_uint128, _m:T_uint128):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._or(_u, _m);
    }
    static public function _xor(_u:T_uint128, _m:T_uint128):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._xor(_u, _m);
    }
    static public function _and(_u:T_uint128, _m:T_uint128):T_uint128 {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._and(_u, _m);
    }
    static public function _isZero(_u:T_uint128):Bool {
        return stdgo._internal.net.netip.Netip_T_uint128_static_extension.T_uint128_static_extension._isZero(_u);
    }
}
