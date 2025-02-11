package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_float__static_extension.Float__static_extension) class Float_ {
    public var _prec : stdgo.GoUInt32 = 0;
    public var _mode : stdgo._internal.math.big.Big_roundingmode.RoundingMode = ((0 : stdgo.GoUInt8) : stdgo._internal.math.big.Big_roundingmode.RoundingMode);
    public var _acc : stdgo._internal.math.big.Big_accuracy.Accuracy = ((0 : stdgo.GoInt8) : stdgo._internal.math.big.Big_accuracy.Accuracy);
    public var _form : stdgo._internal.math.big.Big_t_form.T_form = ((0 : stdgo.GoUInt8) : stdgo._internal.math.big.Big_t_form.T_form);
    public var _neg : Bool = false;
    public var _mant : stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
    public var _exp : stdgo.GoInt32 = 0;
    public function new(?_prec:stdgo.GoUInt32, ?_mode:stdgo._internal.math.big.Big_roundingmode.RoundingMode, ?_acc:stdgo._internal.math.big.Big_accuracy.Accuracy, ?_form:stdgo._internal.math.big.Big_t_form.T_form, ?_neg:Bool, ?_mant:stdgo._internal.math.big.Big_t_nat.T_nat, ?_exp:stdgo.GoInt32) {
        if (_prec != null) this._prec = _prec;
        if (_mode != null) this._mode = _mode;
        if (_acc != null) this._acc = _acc;
        if (_form != null) this._form = _form;
        if (_neg != null) this._neg = _neg;
        if (_mant != null) this._mant = _mant;
        if (_exp != null) this._exp = _exp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Float_(_prec, _mode, _acc, _form, _neg, _mant, _exp);
    }
}
