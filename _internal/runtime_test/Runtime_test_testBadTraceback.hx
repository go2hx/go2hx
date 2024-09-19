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
function testBadTraceback(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("BadTraceback" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        for (__6 => _want in (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("unexpected return pc" : stdgo.GoString), ("called from 0xbad" : stdgo.GoString), ("00000bad" : stdgo.GoString), ("<main.badLR" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            if (!stdgo._internal.strings.Strings_contains.contains(_output?.__copy__(), _want?.__copy__())) {
                _t.errorf(("output does not contain %q:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
            };
        };
    }
