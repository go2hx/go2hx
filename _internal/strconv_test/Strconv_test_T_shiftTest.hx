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
@:structInit class T_shiftTest {
    public var _i : stdgo.GoUInt64 = 0;
    public var _shift : stdgo.GoInt = 0;
    public var _out : stdgo.GoString = "";
    public function new(?_i:stdgo.GoUInt64, ?_shift:stdgo.GoInt, ?_out:stdgo.GoString) {
        if (_i != null) this._i = _i;
        if (_shift != null) this._shift = _shift;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_shiftTest(_i, _shift, _out);
    }
}
