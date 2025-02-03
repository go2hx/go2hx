package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.EncodeT_static_extension) abstract EncodeT(stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT) from stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT to stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT {
    public var _x(get, set) : haxe.UInt64;
    function get__x():haxe.UInt64 return this._x;
    function set__x(v:haxe.UInt64):haxe.UInt64 {
        this._x = (v : stdgo.GoUInt64);
        return v;
    }
    public var _b(get, set) : Array<std.UInt>;
    function get__b():Array<std.UInt> return [for (i in this._b) i];
    function set__b(v:Array<std.UInt>):Array<std.UInt> {
        this._b = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_x:haxe.UInt64, ?_b:Array<std.UInt>) this = new stdgo._internal.encoding.gob.Gob_EncodeT.EncodeT((_x : stdgo.GoUInt64), ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
