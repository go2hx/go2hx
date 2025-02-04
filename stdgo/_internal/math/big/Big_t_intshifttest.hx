package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_t_intshifttest_static_extension.T_intShiftTest_static_extension) class T_intShiftTest {
    public var _in : stdgo.GoString = "";
    public var _shift : stdgo.GoUInt = 0;
    public var _out : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_shift:stdgo.GoUInt, ?_out:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_shift != null) this._shift = _shift;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_intShiftTest(_in, _shift, _out);
    }
}
