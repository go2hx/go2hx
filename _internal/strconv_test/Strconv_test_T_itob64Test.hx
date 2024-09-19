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
@:structInit class T_itob64Test {
    public var _in : stdgo.GoInt64 = 0;
    public var _base : stdgo.GoInt = 0;
    public var _out : stdgo.GoString = "";
    public function new(?_in:stdgo.GoInt64, ?_base:stdgo.GoInt, ?_out:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_base != null) this._base = _base;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_itob64Test(_in, _base, _out);
    }
}
