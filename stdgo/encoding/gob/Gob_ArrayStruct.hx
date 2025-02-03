package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.ArrayStruct_static_extension) abstract ArrayStruct(stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct) from stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct to stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct {
    public var _a(get, set) : haxe.ds.Vector<std.UInt>;
    function get__a():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._a) i]);
    function set__a(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._a = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_a:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct(([for (i in _a) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
