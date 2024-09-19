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
function testCmpIfaceConcreteAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("skipping on non-gc compiler" : stdgo.GoString)));
        };
        var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1 : stdgo.GoInt), function():Void {
            var __blank__ = _internal.runtime_test.Runtime_test__e._e == (stdgo.Go.toInterface(stdgo.Go.asInterface(_internal.runtime_test.Runtime_test__ts._ts)));
            var __blank__ = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__i1._i1) == (stdgo.Go.toInterface(stdgo.Go.asInterface(_internal.runtime_test.Runtime_test__ts._ts)));
            var __blank__ = _internal.runtime_test.Runtime_test__e._e == (stdgo.Go.toInterface((1 : stdgo.GoInt)));
        }) : stdgo.GoFloat64);
        if ((_n > (0 : stdgo.GoFloat64) : Bool)) {
            _t.fatalf(("iface cmp allocs=%v; want 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
