package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testZeroSet___localname___S_169619 {
    public var _a : stdgo.GoUInt64 = 0;
    public var t : _internal.reflect_test.Reflect_test_T_testZeroSet___localname___T_169602.T_testZeroSet___localname___T_169602 = new _internal.reflect_test.Reflect_test_T_testZeroSet___localname___T_169602.T_testZeroSet___localname___T_169602(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
    public var _b : stdgo.GoUInt64 = 0;
    public function new(?_a:stdgo.GoUInt64, ?t:_internal.reflect_test.Reflect_test_T_testZeroSet___localname___T_169602.T_testZeroSet___localname___T_169602, ?_b:stdgo.GoUInt64) {
        if (_a != null) this._a = _a;
        if (t != null) this.t = t;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testZeroSet___localname___S_169619(_a, t, _b);
    }
}
