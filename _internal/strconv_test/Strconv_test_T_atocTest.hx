package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
@:structInit class T_atocTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_in:stdgo.GoString, ?_out:stdgo.GoComplex128, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_atocTest(_in, _out, _err);
    }
}
