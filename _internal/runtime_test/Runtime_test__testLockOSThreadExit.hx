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
function _testLockOSThreadExit(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _prog:stdgo.GoString):Void {
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, _prog?.__copy__(), ("LockOSThreadMain" : stdgo.GoString), ("GOMAXPROCS=1" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _want = ("OK\n" : stdgo.GoString);
        if (_output != (_want)) {
            _t.errorf(("want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
        };
        _output = _internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, _prog?.__copy__(), ("LockOSThreadAlt" : stdgo.GoString))?.__copy__();
        if (_output != (_want)) {
            _t.errorf(("want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
        };
    }
