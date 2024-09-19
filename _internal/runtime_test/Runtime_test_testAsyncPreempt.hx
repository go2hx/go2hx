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
function testAsyncPreempt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (true) {
            _t.skip(stdgo.Go.toInterface(("asynchronous preemption not supported on this platform" : stdgo.GoString)));
        };
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("AsyncPreempt" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _want = ("OK\n" : stdgo.GoString);
        if (_output != (_want)) {
            _t.fatalf(("want %s, got %s\n" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
        };
    }
