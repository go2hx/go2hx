package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_big {
    public var _a : stdgo.GoInt64 = 0;
    public var _b : stdgo.GoInt64 = 0;
    public var _c : stdgo.GoInt64 = 0;
    public var _d : stdgo.GoInt64 = 0;
    public var _e : stdgo.GoInt64 = 0;
    public function new(?_a:stdgo.GoInt64, ?_b:stdgo.GoInt64, ?_c:stdgo.GoInt64, ?_d:stdgo.GoInt64, ?_e:stdgo.GoInt64) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
        if (_d != null) this._d = _d;
        if (_e != null) this._e = _e;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_big(_a, _b, _c, _d, _e);
    }
}
