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
@:structInit class T_testMapInterfaceKey___localname___GrabBag_27933 {
    public var _f32 : stdgo.GoFloat32 = 0;
    public var _f64 : stdgo.GoFloat64 = 0;
    public var _c64 : stdgo.GoComplex64 = new stdgo.GoComplex64(0, 0);
    public var _c128 : stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
    public var _s : stdgo.GoString = "";
    public var _i0 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _i1 : _internal.runtime_test.Runtime_test_T__interface_1.T__interface_1 = (null : _internal.runtime_test.Runtime_test_T__interface_1.T__interface_1);
    public var _a : stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(4, 4, ...[for (i in 0 ... 4) ("" : stdgo.GoString)]);
    public function new(?_f32:stdgo.GoFloat32, ?_f64:stdgo.GoFloat64, ?_c64:stdgo.GoComplex64, ?_c128:stdgo.GoComplex128, ?_s:stdgo.GoString, ?_i0:stdgo.AnyInterface, ?_i1:_internal.runtime_test.Runtime_test_T__interface_1.T__interface_1, ?_a:stdgo.GoArray<stdgo.GoString>) {
        if (_f32 != null) this._f32 = _f32;
        if (_f64 != null) this._f64 = _f64;
        if (_c64 != null) this._c64 = _c64;
        if (_c128 != null) this._c128 = _c128;
        if (_s != null) this._s = _s;
        if (_i0 != null) this._i0 = _i0;
        if (_i1 != null) this._i1 = _i1;
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMapInterfaceKey___localname___GrabBag_27933(_f32, _f64, _c64, _c128, _s, _i0, _i1, _a);
    }
}
