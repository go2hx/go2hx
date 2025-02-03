package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.Offset_static_extension) abstract Offset(stdgo._internal.internal.abi.Abi_Offset.Offset) from stdgo._internal.internal.abi.Abi_Offset.Offset to stdgo._internal.internal.abi.Abi_Offset.Offset {
    public var _off(get, set) : haxe.UInt64;
    function get__off():haxe.UInt64 return this._off;
    function set__off(v:haxe.UInt64):haxe.UInt64 {
        this._off = (v : stdgo.GoUInt64);
        return v;
    }
    public var _align(get, set) : std.UInt;
    function get__align():std.UInt return this._align;
    function set__align(v:std.UInt):std.UInt {
        this._align = (v : stdgo.GoUInt8);
        return v;
    }
    public var _ptrSize(get, set) : std.UInt;
    function get__ptrSize():std.UInt return this._ptrSize;
    function set__ptrSize(v:std.UInt):std.UInt {
        this._ptrSize = (v : stdgo.GoUInt8);
        return v;
    }
    public var _sliceAlign(get, set) : std.UInt;
    function get__sliceAlign():std.UInt return this._sliceAlign;
    function set__sliceAlign(v:std.UInt):std.UInt {
        this._sliceAlign = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?_off:haxe.UInt64, ?_align:std.UInt, ?_ptrSize:std.UInt, ?_sliceAlign:std.UInt) this = new stdgo._internal.internal.abi.Abi_Offset.Offset((_off : stdgo.GoUInt64), (_align : stdgo.GoUInt8), (_ptrSize : stdgo.GoUInt8), (_sliceAlign : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
