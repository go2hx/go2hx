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
function _testDeadlock(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _name:stdgo.GoString):Void {
        stdgo._internal.internal.testenv.Testenv_mustInternalLink.mustInternalLink(stdgo.Go.asInterface(_t), false);
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), _name?.__copy__())?.__copy__() : stdgo.GoString);
        var _want = ("fatal error: all goroutines are asleep - deadlock!\n" : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_output?.__copy__(), _want?.__copy__())) {
            _t.fatalf(("output does not start with %q:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
        };
    }
