package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_t_decimal_static_extension.T_decimal_static_extension) class T_decimal {
    public var _mant : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _exp : stdgo.GoInt = 0;
    public function new(?_mant:stdgo.Slice<stdgo.GoUInt8>, ?_exp:stdgo.GoInt) {
        if (_mant != null) this._mant = _mant;
        if (_exp != null) this._exp = _exp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decimal(_mant, _exp);
    }
}
