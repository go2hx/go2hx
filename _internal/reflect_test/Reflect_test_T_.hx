package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_ {
    public var _a : stdgo.GoInt = 0;
    public var _b : stdgo.GoFloat64 = 0;
    public var _c : stdgo.GoString = "";
    public var _d : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public function new(?_a:stdgo.GoInt, ?_b:stdgo.GoFloat64, ?_c:stdgo.GoString, ?_d:stdgo.Pointer<stdgo.GoInt>) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
        if (_d != null) this._d = _d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_(_a, _b, _c, _d);
    }
}
