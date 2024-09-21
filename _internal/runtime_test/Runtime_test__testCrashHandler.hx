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
function _testCrashHandler(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _cgo:Bool):Void {
        {};
        var _output:stdgo.GoString = ("" : stdgo.GoString);
        if (_cgo) {
            _output = _internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprogcgo" : stdgo.GoString), ("Crash" : stdgo.GoString))?.__copy__();
        } else {
            _output = _internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("Crash" : stdgo.GoString))?.__copy__();
        };
        var _want = ("main: recovered done\nnew-thread: recovered done\nsecond-new-thread: recovered done\nmain-again: recovered done\n" : stdgo.GoString);
        if (_output != (_want)) {
            _t.fatalf(("output:\n%s\n\nwanted:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_output), stdgo.Go.toInterface(_want));
        };
    }
