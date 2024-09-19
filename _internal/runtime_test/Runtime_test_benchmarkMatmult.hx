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
function benchmarkMatmult(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        var _n = ((stdgo._internal.math.Math_cbrt.cbrt((_b.n : stdgo.GoFloat64)) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var a = (_internal.runtime_test.Runtime_test__makeMatrix._makeMatrix(_n) : _internal.runtime_test.Runtime_test_Matrix.Matrix);
        var b = (_internal.runtime_test.Runtime_test__makeMatrix._makeMatrix(_n) : _internal.runtime_test.Runtime_test_Matrix.Matrix);
        var c = (_internal.runtime_test.Runtime_test__makeMatrix._makeMatrix(_n) : _internal.runtime_test.Runtime_test_Matrix.Matrix);
        _b.startTimer();
        _internal.runtime_test.Runtime_test__matmult._matmult((null : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>),
a,
b,
c,
(0 : stdgo.GoInt),
_n,
(0 : stdgo.GoInt),
_n,
(0 : stdgo.GoInt),
_n,
(8 : stdgo.GoInt));
    }
