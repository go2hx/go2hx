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
function _fop(_f:(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64):(stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64 {
        return function(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
            var _bx = (stdgo._internal.math.Math_float64bits.float64bits(_x) : stdgo.GoUInt64);
            var _by = (stdgo._internal.math.Math_float64bits.float64bits(_y) : stdgo.GoUInt64);
            return stdgo._internal.math.Math_float64frombits.float64frombits(_f(_bx, _by));
        };
    }
