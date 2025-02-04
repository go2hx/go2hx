package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_queueonepass_static_extension.T_queueOnePass_static_extension) class T_queueOnePass {
    public var _sparse : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _dense : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _size : stdgo.GoUInt32 = 0;
    public var _nextIndex : stdgo.GoUInt32 = 0;
    public function new(?_sparse:stdgo.Slice<stdgo.GoUInt32>, ?_dense:stdgo.Slice<stdgo.GoUInt32>, ?_size:stdgo.GoUInt32, ?_nextIndex:stdgo.GoUInt32) {
        if (_sparse != null) this._sparse = _sparse;
        if (_dense != null) this._dense = _dense;
        if (_size != null) this._size = _size;
        if (_nextIndex != null) this._nextIndex = _nextIndex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_queueOnePass(_sparse, _dense, _size, _nextIndex);
    }
}
