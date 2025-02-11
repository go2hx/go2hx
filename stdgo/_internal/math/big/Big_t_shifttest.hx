package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_t_shifttest_static_extension.T_shiftTest_static_extension) class T_shiftTest {
    public var _in : stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
    public var _shift : stdgo.GoUInt = 0;
    public var _out : stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
    public function new(?_in:stdgo._internal.math.big.Big_t_nat.T_nat, ?_shift:stdgo.GoUInt, ?_out:stdgo._internal.math.big.Big_t_nat.T_nat) {
        if (_in != null) this._in = _in;
        if (_shift != null) this._shift = _shift;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_shiftTest(_in, _shift, _out);
    }
}
