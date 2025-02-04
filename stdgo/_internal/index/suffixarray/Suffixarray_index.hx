package stdgo._internal.index.suffixarray;
@:structInit @:using(stdgo._internal.index.suffixarray.Suffixarray_index_static_extension.Index_static_extension) class Index {
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _sa : stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints = ({} : stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints);
    public function new(?_data:stdgo.Slice<stdgo.GoUInt8>, ?_sa:stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints) {
        if (_data != null) this._data = _data;
        if (_sa != null) this._sa = _sa;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Index(_data, _sa);
    }
}
