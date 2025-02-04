package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.AddrRange_asInterface) class AddrRange_static_extension {
    @:keep
    @:tdfield
    static public function size( _a:stdgo._internal.runtime.Runtime_addrrange.AddrRange):stdgo.GoUIntptr throw "AddrRange:runtime.size is not yet implemented";
    @:keep
    @:tdfield
    static public function equals( _a:stdgo._internal.runtime.Runtime_addrrange.AddrRange, _b:stdgo._internal.runtime.Runtime_addrrange.AddrRange):Bool throw "AddrRange:runtime.equals is not yet implemented";
    @:keep
    @:tdfield
    static public function limit( _a:stdgo._internal.runtime.Runtime_addrrange.AddrRange):stdgo.GoUIntptr throw "AddrRange:runtime.limit is not yet implemented";
    @:keep
    @:tdfield
    static public function base( _a:stdgo._internal.runtime.Runtime_addrrange.AddrRange):stdgo.GoUIntptr throw "AddrRange:runtime.base is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _takeFromFront( __self__:stdgo._internal.runtime.Runtime_addrrange.AddrRange, _0:stdgo.GoUIntptr, _1:stdgo.GoUInt8):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return @:_5 __self__._takeFromFront(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _takeFromBack( __self__:stdgo._internal.runtime.Runtime_addrrange.AddrRange, _0:stdgo.GoUIntptr, _1:stdgo.GoUInt8):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return @:_5 __self__._takeFromBack(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _subtract( __self__:stdgo._internal.runtime.Runtime_addrrange.AddrRange, _0:stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange):stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange return @:_5 __self__._subtract(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _size( __self__:stdgo._internal.runtime.Runtime_addrrange.AddrRange):stdgo.GoUIntptr return @:_5 __self__._size();
    @:embedded
    @:embeddededffieldsffun
    public static function _removeGreaterEqual( __self__:stdgo._internal.runtime.Runtime_addrrange.AddrRange, _0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange return @:_5 __self__._removeGreaterEqual(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _contains( __self__:stdgo._internal.runtime.Runtime_addrrange.AddrRange, _0:stdgo.GoUIntptr):Bool return @:_5 __self__._contains(_0);
}
