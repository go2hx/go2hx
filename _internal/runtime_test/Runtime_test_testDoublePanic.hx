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
function testDoublePanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("DoublePanic" : stdgo.GoString), ("GODEBUG=clobberfree=1" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _wants = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("panic: XXX" : stdgo.GoString), ("panic: YYY" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__6 => _want in _wants) {
            if (!stdgo._internal.strings.Strings_contains.contains(_output?.__copy__(), _want?.__copy__())) {
                _t.errorf(("output:\n%s\n\nwant output containing: %s" : stdgo.GoString), stdgo.Go.toInterface(_output), stdgo.Go.toInterface(_want));
            };
        };
    }
