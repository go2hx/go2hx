package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_t_argvw_static_extension.T_argVW_static_extension) class T_argVW {
    public var _z : stdgo._internal.math.big.Big_t_nat.T_nat = new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0);
    public var _x : stdgo._internal.math.big.Big_t_nat.T_nat = new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0);
    public var _y : stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
    public var _c : stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
    public function new(?_z:stdgo._internal.math.big.Big_t_nat.T_nat, ?_x:stdgo._internal.math.big.Big_t_nat.T_nat, ?_y:stdgo._internal.math.big.Big_word.Word, ?_c:stdgo._internal.math.big.Big_word.Word) {
        if (_z != null) this._z = _z;
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_c != null) this._c = _c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_argVW(_z, _x, _y, _c);
    }
}
