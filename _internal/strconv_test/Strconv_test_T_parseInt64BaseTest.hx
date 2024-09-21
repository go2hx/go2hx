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
@:structInit class T_parseInt64BaseTest {
    public var _in : stdgo.GoString = "";
    public var _base : stdgo.GoInt = 0;
    public var _out : stdgo.GoInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_in:stdgo.GoString, ?_base:stdgo.GoInt, ?_out:stdgo.GoInt64, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_base != null) this._base = _base;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseInt64BaseTest(_in, _base, _out, _err);
    }
}
