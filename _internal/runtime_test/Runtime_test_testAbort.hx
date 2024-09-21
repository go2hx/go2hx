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
function testAbort(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("Abort" : stdgo.GoString), ("GOTRACEBACK=system" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _want = ("runtime.abort" : stdgo.GoString);
            if (!stdgo._internal.strings.Strings_contains.contains(_output?.__copy__(), _want?.__copy__())) {
                _t.errorf(("output does not contain %q:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
            };
        };
        if (stdgo._internal.strings.Strings_contains.contains(_output?.__copy__(), ("BAD" : stdgo.GoString))) {
            _t.errorf(("output contains BAD:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_output));
        };
        var _want = ("PC=" : stdgo.GoString);
        {
            final __value__ = ("wasm" : stdgo.GoString);
            if (__value__ == (("386" : stdgo.GoString)) || __value__ == (("amd64" : stdgo.GoString))) {
                {
                    final __value__ = ("js" : stdgo.GoString);
                    if (__value__ == (("plan9" : stdgo.GoString))) {
                        _want = ("sys: breakpoint" : stdgo.GoString);
                    } else if (__value__ == (("windows" : stdgo.GoString))) {
                        _want = ("Exception 0x80000003" : stdgo.GoString);
                    } else {
                        _want = ("SIGTRAP" : stdgo.GoString);
                    };
                };
            };
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_output?.__copy__(), _want?.__copy__())) {
            _t.errorf(("output does not contain %q:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
        };
    }
