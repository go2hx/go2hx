package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_decBuffer_static_extension) abstract T_decBuffer(stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer) from stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer to stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_offset:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer(([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_offset : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
