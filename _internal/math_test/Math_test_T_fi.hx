package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
@:structInit class T_fi {
    public var _f : stdgo.GoFloat64 = 0;
    public var _i : stdgo.GoInt = 0;
    public function new(?_f:stdgo.GoFloat64, ?_i:stdgo.GoInt) {
        if (_f != null) this._f = _f;
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fi(_f, _i);
    }
}
