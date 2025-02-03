package stdgo.index.suffixarray;
@:structInit @:using(stdgo.index.suffixarray.Suffixarray.T_ints_static_extension) abstract T_ints(stdgo._internal.index.suffixarray.Suffixarray_T_ints.T_ints) from stdgo._internal.index.suffixarray.Suffixarray_T_ints.T_ints to stdgo._internal.index.suffixarray.Suffixarray_T_ints.T_ints {
    public var _int32(get, set) : Array<StdTypes.Int>;
    function get__int32():Array<StdTypes.Int> return [for (i in this._int32) i];
    function set__int32(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._int32 = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var _int64(get, set) : Array<haxe.Int64>;
    function get__int64():Array<haxe.Int64> return [for (i in this._int64) i];
    function set__int64(v:Array<haxe.Int64>):Array<haxe.Int64> {
        this._int64 = ([for (i in v) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>);
        return v;
    }
    public function new(?_int32:Array<StdTypes.Int>, ?_int64:Array<haxe.Int64>) this = new stdgo._internal.index.suffixarray.Suffixarray_T_ints.T_ints(([for (i in _int32) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>), ([for (i in _int64) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
