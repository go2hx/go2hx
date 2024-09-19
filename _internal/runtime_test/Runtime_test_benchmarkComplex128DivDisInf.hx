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
function benchmarkComplex128DivDisInf(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _d = (stdgo._internal.math.cmplx.Cmplx_inf.inf() : stdgo.GoComplex128);
        var _n = ((32f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 3f64) : stdgo.GoComplex128);
        var _res = ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64) : stdgo.GoComplex128);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _n = (_n + (((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0.1f64))) : stdgo.GoComplex128);
                _res = (_res + ((_n / _d : stdgo.GoComplex128)) : stdgo.GoComplex128);
            });
        };
        _internal.runtime_test.Runtime_test__result._result = _res;
    }
