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
function testNonEscapingConvT2I(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.runtime_test.Runtime_test_I1.I1, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_I1.I1", [], stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_I1.I1", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<_internal.runtime_test.Runtime_test_I1.I1, Bool>);
        _m[stdgo.Go.asInterface((42 : _internal.runtime_test.Runtime_test_TM.TM))] = true;
        if (!(_m[stdgo.Go.asInterface((42 : _internal.runtime_test.Runtime_test_TM.TM))] ?? false)) {
            _t.fatalf(("42 is not present in the map" : stdgo.GoString));
        };
        if ((_m[stdgo.Go.asInterface((0 : _internal.runtime_test.Runtime_test_TM.TM))] ?? false)) {
            _t.fatalf(("0 is present in the map" : stdgo.GoString));
        };
        var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            if ((_m[stdgo.Go.asInterface((0 : _internal.runtime_test.Runtime_test_TM.TM))] ?? false)) {
                _t.fatalf(("0 is present in the map" : stdgo.GoString));
            };
        }) : stdgo.GoFloat64);
        if (_n != (0 : stdgo.GoFloat64)) {
            _t.fatalf(("want 0 allocs, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
