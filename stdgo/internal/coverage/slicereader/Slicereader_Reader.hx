package stdgo.internal.coverage.slicereader;
@:structInit @:using(stdgo.internal.coverage.slicereader.Slicereader.Reader_static_extension) abstract Reader(stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader) from stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader to stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader {
    public var _b(get, set) : Array<std.UInt>;
    function get__b():Array<std.UInt> return [for (i in this._b) i];
    function set__b(v:Array<std.UInt>):Array<std.UInt> {
        this._b = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _readonly(get, set) : Bool;
    function get__readonly():Bool return this._readonly;
    function set__readonly(v:Bool):Bool {
        this._readonly = v;
        return v;
    }
    public var _off(get, set) : haxe.Int64;
    function get__off():haxe.Int64 return this._off;
    function set__off(v:haxe.Int64):haxe.Int64 {
        this._off = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_b:Array<std.UInt>, ?_readonly:Bool, ?_off:haxe.Int64) this = new stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader(([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _readonly, (_off : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
