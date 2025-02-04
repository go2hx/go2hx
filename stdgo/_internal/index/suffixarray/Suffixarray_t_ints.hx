package stdgo._internal.index.suffixarray;
@:structInit @:using(stdgo._internal.index.suffixarray.Suffixarray_t_ints_static_extension.T_ints_static_extension) class T_ints {
    public var _int32 : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _int64 : stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
    public function new(?_int32:stdgo.Slice<stdgo.GoInt32>, ?_int64:stdgo.Slice<stdgo.GoInt64>) {
        if (_int32 != null) this._int32 = _int32;
        if (_int64 != null) this._int64 = _int64;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ints(_int32, _int64);
    }
}
