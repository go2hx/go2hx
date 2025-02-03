package stdgo.encoding.binary;
@:structInit @:using(stdgo.encoding.binary.Binary.T_coder_static_extension) abstract T_coder(stdgo._internal.encoding.binary.Binary_T_coder.T_coder) from stdgo._internal.encoding.binary.Binary_T_coder.T_coder to stdgo._internal.encoding.binary.Binary_T_coder.T_coder {
    public var _order(get, set) : ByteOrder;
    function get__order():ByteOrder return this._order;
    function set__order(v:ByteOrder):ByteOrder {
        this._order = v;
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_order:ByteOrder, ?_buf:Array<std.UInt>, ?_offset:StdTypes.Int) this = new stdgo._internal.encoding.binary.Binary_T_coder.T_coder(_order, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_offset : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
