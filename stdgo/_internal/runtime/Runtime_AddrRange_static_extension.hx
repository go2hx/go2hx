package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.AddrRange_asInterface) class AddrRange_static_extension {
    @:keep
    static public function size( _a:stdgo._internal.runtime.Runtime_AddrRange.AddrRange):stdgo.GoUIntptr throw "AddrRange:runtime.size is not yet implemented";
    @:keep
    static public function equals( _a:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, _b:stdgo._internal.runtime.Runtime_AddrRange.AddrRange):Bool throw "AddrRange:runtime.equals is not yet implemented";
    @:keep
    static public function limit( _a:stdgo._internal.runtime.Runtime_AddrRange.AddrRange):stdgo.GoUIntptr throw "AddrRange:runtime.limit is not yet implemented";
    @:keep
    static public function base( _a:stdgo._internal.runtime.Runtime_AddrRange.AddrRange):stdgo.GoUIntptr throw "AddrRange:runtime.base is not yet implemented";
    @:embedded
    public static function _takeFromFront( __self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, _offset:stdgo.GoUIntptr, _kind:stdgo.GoUInt8):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return __self__._takeFromFront(_offset, _kind);
    @:embedded
    public static function _takeFromBack( __self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, _offset:stdgo.GoUIntptr, _kind:stdgo.GoUInt8):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return __self__._takeFromBack(_offset, _kind);
    @:embedded
    public static function _subtract( __self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, __0:stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange):stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange return __self__._subtract(__0);
    @:embedded
    public static function _size( __self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange):stdgo.GoUIntptr return __self__._size();
    @:embedded
    public static function _removeGreaterEqual( __self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, __0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_T_addrRange.T_addrRange return __self__._removeGreaterEqual(__0);
    @:embedded
    public static function _contains( __self__:stdgo._internal.runtime.Runtime_AddrRange.AddrRange, __0:stdgo.GoUIntptr):Bool return __self__._contains(__0);
}
