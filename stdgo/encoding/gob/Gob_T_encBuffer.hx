package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_encBuffer_static_extension) abstract T_encBuffer(stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer) from stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer to stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _scratch(get, set) : haxe.ds.Vector<std.UInt>;
    function get__scratch():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._scratch) i]);
    function set__scratch(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._scratch = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_scratch:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer(([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _scratch) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
