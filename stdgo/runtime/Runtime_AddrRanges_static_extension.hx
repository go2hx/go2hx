package stdgo.runtime;
class AddrRanges_static_extension {
    static public function totalBytes(_a:AddrRanges):stdgo.GoUIntptr {
        final _a = (_a : stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>);
        return stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension.totalBytes(_a);
    }
    static public function add(_a:AddrRanges, _r:AddrRange):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>);
        stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension.add(_a, _r);
    }
    static public function findSucc(_a:AddrRanges, _base:stdgo.GoUIntptr):StdTypes.Int {
        final _a = (_a : stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>);
        final _base = (_base : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension.findSucc(_a, _base);
    }
    static public function ranges(_a:AddrRanges):Array<AddrRange> {
        final _a = (_a : stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>);
        return [for (i in stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension.ranges(_a)) i];
    }
    public static function _removeLast(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, _0:stdgo.GoUIntptr):T_addrRange {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._removeLast(__self__, _0);
    }
    public static function _removeGreaterEqual(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, _0:stdgo.GoUIntptr):Void {
        final _0 = (_0 : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._removeGreaterEqual(__self__, _0);
    }
    public static function _init(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, _0:stdgo.Pointer<T_sysMemStat>):Void {
        stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._init(__self__, _0);
    }
    public static function _findSucc(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, _0:stdgo.GoUIntptr):StdTypes.Int {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._findSucc(__self__, _0);
    }
    public static function _findAddrGreaterEqual(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, _0:stdgo.GoUIntptr):stdgo.Tuple<stdgo.GoUIntptr, Bool> {
        final _0 = (_0 : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._findAddrGreaterEqual(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _contains(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, _0:stdgo.GoUIntptr):Bool {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._contains(__self__, _0);
    }
    public static function _cloneInto(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, _0:T_addrRanges):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.runtime.Runtime_T_addrRanges.T_addrRanges>);
        stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._cloneInto(__self__, _0);
    }
    public static function _add(__self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, _0:T_addrRange):Void {
        stdgo._internal.runtime.Runtime_AddrRanges_static_extension.AddrRanges_static_extension._add(__self__, _0);
    }
}
