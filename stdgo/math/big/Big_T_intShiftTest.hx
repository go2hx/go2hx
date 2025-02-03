package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.T_intShiftTest_static_extension) abstract T_intShiftTest(stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest) from stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest to stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _shift(get, set) : std.UInt;
    function get__shift():std.UInt return this._shift;
    function set__shift(v:std.UInt):std.UInt {
        this._shift = (v : stdgo.GoUInt);
        return v;
    }
    public var _out(get, set) : String;
    function get__out():String return this._out;
    function set__out(v:String):String {
        this._out = (v : stdgo.GoString);
        return v;
    }
    public function new(?_in:String, ?_shift:std.UInt, ?_out:String) this = new stdgo._internal.math.big.Big_T_intShiftTest.T_intShiftTest((_in : stdgo.GoString), (_shift : stdgo.GoUInt), (_out : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
