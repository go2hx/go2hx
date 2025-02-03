package stdgo.runtime;
class AddrRange_static_extension {
    static public function size(_a:AddrRange):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension.size(_a);
    }
    static public function equals(_a:AddrRange, _b:AddrRange):Bool {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension.equals(_a, _b);
    }
    static public function limit(_a:AddrRange):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension.limit(_a);
    }
    static public function base(_a:AddrRange):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension.base(_a);
    }
    public static function _takeFromFront(__self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, _0:stdgo.GoUIntptr, _1:std.UInt):stdgo.Tuple<stdgo.GoUIntptr, Bool> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension._takeFromFront(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _takeFromBack(__self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, _0:stdgo.GoUIntptr, _1:std.UInt):stdgo.Tuple<stdgo.GoUIntptr, Bool> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension._takeFromBack(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _subtract(__self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, _0:T_addrRange):T_addrRange {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension._subtract(__self__, _0);
    }
    public static function _size(__self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension._size(__self__);
    }
    public static function _removeGreaterEqual(__self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, _0:stdgo.GoUIntptr):T_addrRange {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension._removeGreaterEqual(__self__, _0);
    }
    public static function _contains(__self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, _0:stdgo.GoUIntptr):Bool {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_AddrRange_static_extension.AddrRange_static_extension._contains(__self__, _0);
    }
}
