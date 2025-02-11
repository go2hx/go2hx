package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_t_argnn_static_extension.T_argNN_static_extension) class T_argNN {
    public var _z : stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
    public var _x : stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
    public var _y : stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
    public function new(?_z:stdgo._internal.math.big.Big_t_nat.T_nat, ?_x:stdgo._internal.math.big.Big_t_nat.T_nat, ?_y:stdgo._internal.math.big.Big_t_nat.T_nat) {
        if (_z != null) this._z = _z;
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_argNN(_z, _x, _y);
    }
}
