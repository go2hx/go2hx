package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
@:structInit class T_testArgsType8d {
    public var _a : stdgo.GoInt = 0;
    public var _b : stdgo.GoInt = 0;
    public var _c : stdgo.GoInt = 0;
    public var _d : stdgo.GoInt = 0;
    public var _e : stdgo.GoInt = 0;
    public var _f : stdgo.GoInt = 0;
    public var _g : stdgo.GoInt = 0;
    public var _h : stdgo.GoInt = 0;
    public var _i : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoInt)]);
    public var _j : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoInt, ?_b:stdgo.GoInt, ?_c:stdgo.GoInt, ?_d:stdgo.GoInt, ?_e:stdgo.GoInt, ?_f:stdgo.GoInt, ?_g:stdgo.GoInt, ?_h:stdgo.GoInt, ?_i:stdgo.GoArray<stdgo.GoInt>, ?_j:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
        if (_d != null) this._d = _d;
        if (_e != null) this._e = _e;
        if (_f != null) this._f = _f;
        if (_g != null) this._g = _g;
        if (_h != null) this._h = _h;
        if (_i != null) this._i = _i;
        if (_j != null) this._j = _j;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testArgsType8d(_a, _b, _c, _d, _e, _f, _g, _h, _i, _j);
    }
}
