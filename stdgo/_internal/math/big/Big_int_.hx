package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_int__static_extension.Int__static_extension) class Int_ {
    public var _neg : Bool = false;
    public var _abs : stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
    public function new(?_neg:Bool, ?_abs:stdgo._internal.math.big.Big_t_nat.T_nat) {
        if (_neg != null) this._neg = _neg;
        if (_abs != null) this._abs = _abs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Int_(_neg, _abs);
    }
}
