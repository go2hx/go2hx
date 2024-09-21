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
function testMaxFloat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__6 => _tt in _internal.runtime_test.Runtime_test__tests._tests) {
            {
                var _z = (_internal.runtime_test.Runtime_test__max._max(_tt._min, _tt._max) : stdgo.GoFloat64);
                if (!_internal.runtime_test.Runtime_test__eq._eq(_z, _tt._max)) {
                    _t.errorf(("max(%v, %v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._min), stdgo.Go.toInterface(_tt._max), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_tt._max));
                };
            };
            {
                var _z = (_internal.runtime_test.Runtime_test__max._max(_tt._max, _tt._min) : stdgo.GoFloat64);
                if (!_internal.runtime_test.Runtime_test__eq._eq(_z, _tt._max)) {
                    _t.errorf(("max(%v, %v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._max), stdgo.Go.toInterface(_tt._min), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_tt._max));
                };
            };
        };
        for (__7 => _x in _internal.runtime_test.Runtime_test__all._all) {
            {
                var _z = (_internal.runtime_test.Runtime_test__max._max(_internal.runtime_test.Runtime_test__nan._nan, _x) : stdgo.GoFloat64);
                if (!stdgo._internal.math.Math_isNaN.isNaN(_z)) {
                    _t.errorf(("min(%v, %v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__nan._nan), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__nan._nan));
                };
            };
            {
                var _z = (_internal.runtime_test.Runtime_test__max._max(_x, _internal.runtime_test.Runtime_test__nan._nan) : stdgo.GoFloat64);
                if (!stdgo._internal.math.Math_isNaN.isNaN(_z)) {
                    _t.errorf(("min(%v, %v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__nan._nan), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__nan._nan));
                };
            };
        };
    }
