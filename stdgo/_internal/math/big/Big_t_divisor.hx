package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_t_divisor_static_extension.T_divisor_static_extension) class T_divisor {
    public var _bbb : stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
    public var _nbits : stdgo.GoInt = 0;
    public var _ndigits : stdgo.GoInt = 0;
    public function new(?_bbb:stdgo._internal.math.big.Big_t_nat.T_nat, ?_nbits:stdgo.GoInt, ?_ndigits:stdgo.GoInt) {
        if (_bbb != null) this._bbb = _bbb;
        if (_nbits != null) this._nbits = _nbits;
        if (_ndigits != null) this._ndigits = _ndigits;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_divisor(_bbb, _nbits, _ndigits);
    }
}
