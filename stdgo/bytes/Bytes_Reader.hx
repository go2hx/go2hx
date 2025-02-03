package stdgo.bytes;
@:structInit @:using(stdgo.bytes.Bytes.Reader_static_extension) abstract Reader(stdgo._internal.bytes.Bytes_Reader.Reader) from stdgo._internal.bytes.Bytes_Reader.Reader to stdgo._internal.bytes.Bytes_Reader.Reader {
    public var _s(get, set) : Array<std.UInt>;
    function get__s():Array<std.UInt> return [for (i in this._s) i];
    function set__s(v:Array<std.UInt>):Array<std.UInt> {
        this._s = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _i(get, set) : haxe.Int64;
    function get__i():haxe.Int64 return this._i;
    function set__i(v:haxe.Int64):haxe.Int64 {
        this._i = (v : stdgo.GoInt64);
        return v;
    }
    public var _prevRune(get, set) : StdTypes.Int;
    function get__prevRune():StdTypes.Int return this._prevRune;
    function set__prevRune(v:StdTypes.Int):StdTypes.Int {
        this._prevRune = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_s:Array<std.UInt>, ?_i:haxe.Int64, ?_prevRune:StdTypes.Int) this = new stdgo._internal.bytes.Bytes_Reader.Reader(([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoInt64), (_prevRune : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
