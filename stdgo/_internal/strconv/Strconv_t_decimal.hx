package stdgo._internal.strconv;
@:structInit @:using(stdgo._internal.strconv.Strconv_t_decimal_static_extension.T_decimal_static_extension) class T_decimal {
    public var _d : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(800, 800).__setNumber32__();
    public var _nd : stdgo.GoInt = 0;
    public var _dp : stdgo.GoInt = 0;
    public var _neg : Bool = false;
    public var _trunc : Bool = false;
    public function new(?_d:stdgo.GoArray<stdgo.GoUInt8>, ?_nd:stdgo.GoInt, ?_dp:stdgo.GoInt, ?_neg:Bool, ?_trunc:Bool) {
        if (_d != null) this._d = _d;
        if (_nd != null) this._nd = _nd;
        if (_dp != null) this._dp = _dp;
        if (_neg != null) this._neg = _neg;
        if (_trunc != null) this._trunc = _trunc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decimal(_d, _nd, _dp, _neg, _trunc);
    }
}
