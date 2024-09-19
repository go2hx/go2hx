package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.AddrRanges_asInterface) class AddrRanges_static_extension {
    @:keep
    static public function totalBytes( _a:stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>):stdgo.GoUIntptr throw "AddrRanges:runtime.totalBytes is not yet implemented";
    @:keep
    static public function add( _a:stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>, _r:stdgo._internal.runtime.Runtime_AddrRange.AddrRange):Void throw "AddrRanges:runtime.add is not yet implemented";
    @:keep
    static public function findSucc( _a:stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>, _base:stdgo.GoUIntptr):stdgo.GoInt throw "AddrRanges:runtime.findSucc is not yet implemented";
    @:keep
    static public function ranges( _a:stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>):stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange> throw "AddrRanges:runtime.ranges is not yet implemented";
    @:embedded
    public static function _removeLast( __self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, __0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange return __self__._removeLast(__0);
    @:embedded
    public static function _removeGreaterEqual( __self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, __0:stdgo.GoUIntptr) __self__._removeGreaterEqual(__0);
    @:embedded
    public static function _init( __self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, _sysStat:stdgo.Pointer<stdgo._internal.runtime.Runtime_T_sysMemStat.T_sysMemStat>) __self__._init(_sysStat);
    @:embedded
    public static function _findSucc( __self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, __0:stdgo.GoUIntptr):stdgo.GoInt return __self__._findSucc(__0);
    @:embedded
    public static function _findAddrGreaterEqual( __self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, __0:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return __self__._findAddrGreaterEqual(__0);
    @:embedded
    public static function _contains( __self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, __0:stdgo.GoUIntptr):Bool return __self__._contains(__0);
    @:embedded
    public static function _cloneInto( __self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, _b:stdgo.Ref<stdgo._internal.runtime.Runtime_T_addrRanges.T_addrRanges>) __self__._cloneInto(_b);
    @:embedded
    public static function _add( __self__:stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges, __0:stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange) __self__._add(__0);
}
