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
function _oscillate(_amp:stdgo.GoFloat64, _phase:stdgo.GoFloat64, _period:stdgo.GoInt):_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream {
        var _cycle:stdgo.GoInt = (0 : stdgo.GoInt);
        return function():stdgo.GoFloat64 {
            var _p = (((((_cycle : stdgo.GoFloat64) / (_period : stdgo.GoFloat64) : stdgo.GoFloat64) * (2 : stdgo.GoFloat64) : stdgo.GoFloat64) * (3.141592653589793 : stdgo.GoFloat64) : stdgo.GoFloat64) + _phase : stdgo.GoFloat64);
            _cycle++;
            if (_cycle == (_period)) {
                _cycle = (0 : stdgo.GoInt);
            };
            return (stdgo._internal.math.Math_sin.sin(_p) * _amp : stdgo.GoFloat64);
        };
    }
