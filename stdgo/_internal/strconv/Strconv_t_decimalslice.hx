package stdgo._internal.strconv;
@:structInit @:using(stdgo._internal.strconv.Strconv_t_decimalslice_static_extension.T_decimalSlice_static_extension) class T_decimalSlice {
    public var _d : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _nd : stdgo.GoInt = 0;
    public var _dp : stdgo.GoInt = 0;
    public function new(?_d:stdgo.Slice<stdgo.GoUInt8>, ?_nd:stdgo.GoInt, ?_dp:stdgo.GoInt) {
        if (_d != null) this._d = _d;
        if (_nd != null) this._nd = _nd;
        if (_dp != null) this._dp = _dp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decimalSlice(_d, _nd, _dp);
    }
}
