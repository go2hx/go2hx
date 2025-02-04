package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.AddrRanges_asInterface) class AddrRanges_static_extension {
    @:keep
    @:tdfield
    static public function totalBytes( _a:stdgo.Ref<stdgo._internal.runtime.Runtime_addrranges.AddrRanges>):stdgo.GoUIntptr throw "AddrRanges:runtime.totalBytes is not yet implemented";
    @:keep
    @:tdfield
    static public function add( _a:stdgo.Ref<stdgo._internal.runtime.Runtime_addrranges.AddrRanges>, _r:stdgo._internal.runtime.Runtime_addrrange.AddrRange):Void throw "AddrRanges:runtime.add is not yet implemented";
    @:keep
    @:tdfield
    static public function findSucc( _a:stdgo.Ref<stdgo._internal.runtime.Runtime_addrranges.AddrRanges>, _base:stdgo.GoUIntptr):stdgo.GoInt throw "AddrRanges:runtime.findSucc is not yet implemented";
    @:keep
    @:tdfield
    static public function ranges( _a:stdgo.Ref<stdgo._internal.runtime.Runtime_addrranges.AddrRanges>):stdgo.Slice<stdgo._internal.runtime.Runtime_addrrange.AddrRange> throw "AddrRanges:runtime.ranges is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _removeLast( __self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange return @:_5 __self__._removeLast(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _removeGreaterEqual( __self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo.GoUIntptr):Void return @:_5 __self__._removeGreaterEqual(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _init( __self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo.Pointer<stdgo._internal.runtime.Runtime_t_sysmemstat.T_sysMemStat>):Void return @:_5 __self__._init(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _findSucc( __self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo.GoUIntptr):stdgo.GoInt return @:_5 __self__._findSucc(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _findAddrGreaterEqual( __self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return @:_5 __self__._findAddrGreaterEqual(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _contains( __self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo.GoUIntptr):Bool return @:_5 __self__._contains(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _cloneInto( __self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo.Ref<stdgo._internal.runtime.Runtime_t_addrranges.T_addrRanges>):Void return @:_5 __self__._cloneInto(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _add( __self__:stdgo._internal.runtime.Runtime_addrranges.AddrRanges, _0:stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange):Void return @:_5 __self__._add(_0);
}
