package stdgo._internal.regexp;
@:structInit class T_queue {
    public var _sparse : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _dense : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry> = (null : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>);
    public function new(?_sparse:stdgo.Slice<stdgo.GoUInt32>, ?_dense:stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>) {
        if (_sparse != null) this._sparse = _sparse;
        if (_dense != null) this._dense = _dense;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_queue(_sparse, _dense);
    }
}
