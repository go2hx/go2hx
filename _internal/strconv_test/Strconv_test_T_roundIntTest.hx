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
@:structInit class T_roundIntTest {
    public var _i : stdgo.GoUInt64 = 0;
    public var _shift : stdgo.GoInt = 0;
    public var _int : stdgo.GoUInt64 = 0;
    public function new(?_i:stdgo.GoUInt64, ?_shift:stdgo.GoInt, ?_int:stdgo.GoUInt64) {
        if (_i != null) this._i = _i;
        if (_shift != null) this._shift = _shift;
        if (_int != null) this._int = _int;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_roundIntTest(_i, _shift, _int);
    }
}
