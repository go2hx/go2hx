package stdgo.crypto.internal.edwards25519.field;
@:structInit @:using(stdgo.crypto.internal.edwards25519.field.Field.T_uint128_static_extension) abstract T_uint128(stdgo._internal.crypto.internal.edwards25519.field.Field_T_uint128.T_uint128) from stdgo._internal.crypto.internal.edwards25519.field.Field_T_uint128.T_uint128 to stdgo._internal.crypto.internal.edwards25519.field.Field_T_uint128.T_uint128 {
    public var _lo(get, set) : haxe.UInt64;
    function get__lo():haxe.UInt64 return this._lo;
    function set__lo(v:haxe.UInt64):haxe.UInt64 {
        this._lo = (v : stdgo.GoUInt64);
        return v;
    }
    public var _hi(get, set) : haxe.UInt64;
    function get__hi():haxe.UInt64 return this._hi;
    function set__hi(v:haxe.UInt64):haxe.UInt64 {
        this._hi = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_lo:haxe.UInt64, ?_hi:haxe.UInt64) this = new stdgo._internal.crypto.internal.edwards25519.field.Field_T_uint128.T_uint128((_lo : stdgo.GoUInt64), (_hi : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
