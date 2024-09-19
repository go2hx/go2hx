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
@:structInit @:using(_internal.runtime_test.Runtime_test_HashSet_static_extension.HashSet_static_extension) class HashSet {
    public var _m : stdgo.GoMap<stdgo.GoUIntptr, _internal.runtime_test.Runtime_test_T_struct0.T_struct0> = (null : stdgo.GoMap<stdgo.GoUIntptr, _internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
    public var _n : stdgo.GoInt = 0;
    public function new(?_m:stdgo.GoMap<stdgo.GoUIntptr, _internal.runtime_test.Runtime_test_T_struct0.T_struct0>, ?_n:stdgo.GoInt) {
        if (_m != null) this._m = _m;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new HashSet(_m, _n);
    }
}
