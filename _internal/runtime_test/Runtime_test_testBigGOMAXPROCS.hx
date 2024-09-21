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
function testBigGOMAXPROCS(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("NonexistentTest" : stdgo.GoString), ("GOMAXPROCS=1024" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        for (__14 => _errstr in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("failed to create new OS thread" : stdgo.GoString), ("cannot allocate memory" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            if (stdgo._internal.strings.Strings_contains.contains(_output?.__copy__(), _errstr?.__copy__())) {
                _t.skipf(("failed to create 1024 threads" : stdgo.GoString));
            };
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_output?.__copy__(), ("unknown function: NonexistentTest" : stdgo.GoString))) {
            _t.errorf(("output:\n%s\nwanted:\nunknown function: NonexistentTest" : stdgo.GoString), stdgo.Go.toInterface(_output));
        };
    }
