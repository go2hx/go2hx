package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_t_argwvw_static_extension.T_argWVW_static_extension) class T_argWVW {
    public var _z : stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
    public var _xn : stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
    public var _x : stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
    public var _y : stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
    public var _r : stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
    public function new(?_z:stdgo._internal.math.big.Big_t_nat.T_nat, ?_xn:stdgo._internal.math.big.Big_word.Word, ?_x:stdgo._internal.math.big.Big_t_nat.T_nat, ?_y:stdgo._internal.math.big.Big_word.Word, ?_r:stdgo._internal.math.big.Big_word.Word) {
        if (_z != null) this._z = _z;
        if (_xn != null) this._xn = _xn;
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_argWVW(_z, _xn, _x, _y, _r);
    }
}
