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
function testMapOperatorAssignmentNan(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoInt>);
        var _nan = (stdgo._internal.math.Math_naN.naN() : stdgo.GoFloat64);
        _m[_nan] = ((_m[_nan] ?? (0 : stdgo.GoInt)) + ((1 : stdgo.GoInt)) : stdgo.GoInt);
        _m[_nan] = ((_m[_nan] ?? (0 : stdgo.GoInt)) + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        _m[_nan] = ((_m[_nan] ?? (0 : stdgo.GoInt)) + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        _internal.runtime_test.Runtime_test__testMapNan._testMapNan(_t, _m);
    }
