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
function testMemoryLimit(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("stress test that takes time to run" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime_numCPU.numCPU() < (4 : stdgo.GoInt) : Bool)) {
            _t.skip(stdgo.Go.toInterface(("want at least 4 CPUs for this test" : stdgo.GoString)));
        };
        var _got = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("GCMemoryLimit" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _want = ("OK\n" : stdgo.GoString);
        if (_got != (_want)) {
            _t.fatalf(("expected %q, but got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
