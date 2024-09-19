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
function _testcmp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:stdgo.GoFloat64, _g:stdgo.GoFloat64):Void {
        var __tmp__ = _internal.runtime_test.Runtime_test__hwcmp._hwcmp(_f, _g), _hcmp:stdgo.GoInt = __tmp__._0, _hisnan:Bool = __tmp__._1;
        var __tmp__ = stdgo._internal.runtime.Runtime_fcmp64.fcmp64(stdgo._internal.math.Math_float64bits.float64bits(_f), stdgo._internal.math.Math_float64bits.float64bits(_g)), _scmp:stdgo.GoInt32 = __tmp__._0, _sisnan:Bool = __tmp__._1;
        if ((((_hcmp : stdgo.GoInt32) != _scmp) || (_hisnan != _sisnan) : Bool)) {
            _internal.runtime_test.Runtime_test__err._err(_t, ("cmp(%g, %g) = sw %v, %v, hw %v, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_scmp), stdgo.Go.toInterface(_sisnan), stdgo.Go.toInterface(_hcmp), stdgo.Go.toInterface(_hisnan));
        };
    }
