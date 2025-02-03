package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.T_shiftTest_static_extension) abstract T_shiftTest(stdgo._internal.math.big.Big_T_shiftTest.T_shiftTest) from stdgo._internal.math.big.Big_T_shiftTest.T_shiftTest to stdgo._internal.math.big.Big_T_shiftTest.T_shiftTest {
    public var _in(get, set) : T_nat;
    function get__in():T_nat return this._in;
    function set__in(v:T_nat):T_nat {
        this._in = v;
        return v;
    }
    public var _shift(get, set) : std.UInt;
    function get__shift():std.UInt return this._shift;
    function set__shift(v:std.UInt):std.UInt {
        this._shift = (v : stdgo.GoUInt);
        return v;
    }
    public var _out(get, set) : T_nat;
    function get__out():T_nat return this._out;
    function set__out(v:T_nat):T_nat {
        this._out = v;
        return v;
    }
    public function new(?_in:T_nat, ?_shift:std.UInt, ?_out:T_nat) this = new stdgo._internal.math.big.Big_T_shiftTest.T_shiftTest(_in, (_shift : stdgo.GoUInt), _out);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
