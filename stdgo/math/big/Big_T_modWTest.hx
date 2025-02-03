package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.T_modWTest_static_extension) abstract T_modWTest(stdgo._internal.math.big.Big_T_modWTest.T_modWTest) from stdgo._internal.math.big.Big_T_modWTest.T_modWTest to stdgo._internal.math.big.Big_T_modWTest.T_modWTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _dividend(get, set) : String;
    function get__dividend():String return this._dividend;
    function set__dividend(v:String):String {
        this._dividend = (v : stdgo.GoString);
        return v;
    }
    public var _out(get, set) : String;
    function get__out():String return this._out;
    function set__out(v:String):String {
        this._out = (v : stdgo.GoString);
        return v;
    }
    public function new(?_in:String, ?_dividend:String, ?_out:String) this = new stdgo._internal.math.big.Big_T_modWTest.T_modWTest((_in : stdgo.GoString), (_dividend : stdgo.GoString), (_out : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
