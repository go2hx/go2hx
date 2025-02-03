package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.ByteStruct_static_extension) abstract ByteStruct(stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct) from stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct to stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct {
    public var _a(get, set) : std.UInt;
    function get__a():std.UInt return this._a;
    function set__a(v:std.UInt):std.UInt {
        this._a = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?_a:std.UInt) this = new stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct((_a : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
