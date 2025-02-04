package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_t_modwtest_static_extension.T_modWTest_static_extension) class T_modWTest {
    public var _in : stdgo.GoString = "";
    public var _dividend : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_dividend:stdgo.GoString, ?_out:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_dividend != null) this._dividend = _dividend;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_modWTest(_in, _dividend, _out);
    }
}
