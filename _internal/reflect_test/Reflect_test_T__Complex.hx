package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T__Complex {
    public var _a : stdgo.GoInt = 0;
    public var _b : stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_T__Complex.T__Complex>> = new stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_T__Complex.T__Complex>>(3, 3, ...[for (i in 0 ... 3) (null : stdgo.Ref<_internal.reflect_test.Reflect_test_T__Complex.T__Complex>)]);
    public var _c : stdgo.Pointer<stdgo.GoString> = (null : stdgo.Pointer<stdgo.GoString>);
    public var _d : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoFloat64> = (null : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoFloat64>);
    public function new(?_a:stdgo.GoInt, ?_b:stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_T__Complex.T__Complex>>, ?_c:stdgo.Pointer<stdgo.GoString>, ?_d:stdgo.GoMap<stdgo.GoFloat64, stdgo.GoFloat64>) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
        if (_d != null) this._d = _d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__Complex(_a, _b, _c, _d);
    }
}
