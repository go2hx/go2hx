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
function _ramp(_height:stdgo.GoFloat64, _length:stdgo.GoInt):_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream {
        var _cycle:stdgo.GoInt = (0 : stdgo.GoInt);
        return function():stdgo.GoFloat64 {
            var _h = ((_height * (_cycle : stdgo.GoFloat64) : stdgo.GoFloat64) / (_length : stdgo.GoFloat64) : stdgo.GoFloat64);
            if ((_cycle < _length : Bool)) {
                _cycle++;
            };
            return _h;
        };
    }
