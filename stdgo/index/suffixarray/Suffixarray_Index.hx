package stdgo.index.suffixarray;
@:structInit @:using(stdgo.index.suffixarray.Suffixarray.Index_static_extension) abstract Index(stdgo._internal.index.suffixarray.Suffixarray_Index.Index) from stdgo._internal.index.suffixarray.Suffixarray_Index.Index to stdgo._internal.index.suffixarray.Suffixarray_Index.Index {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _sa(get, set) : T_ints;
    function get__sa():T_ints return this._sa;
    function set__sa(v:T_ints):T_ints {
        this._sa = v;
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_sa:T_ints) this = new stdgo._internal.index.suffixarray.Suffixarray_Index.Index(([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _sa);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
