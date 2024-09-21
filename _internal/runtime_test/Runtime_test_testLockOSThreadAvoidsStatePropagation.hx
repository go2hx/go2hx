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
function testLockOSThreadAvoidsStatePropagation(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _want = ("OK\n" : stdgo.GoString);
        var _skip = ("unshare not permitted\n" : stdgo.GoString);
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("LockOSThreadAvoidsStatePropagation" : stdgo.GoString), ("GOMAXPROCS=1" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_output == (_skip)) {
            _t.skip(stdgo.Go.toInterface(("unshare syscall not permitted on this system" : stdgo.GoString)));
        } else if (_output != (_want)) {
            _t.errorf(("want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
        };
    }
