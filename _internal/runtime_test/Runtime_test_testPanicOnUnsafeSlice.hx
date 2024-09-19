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
function testPanicOnUnsafeSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("panicOnNilAndEleSizeIsZero" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _want = ("panic: runtime error: unsafe.Slice: ptr is nil and len is not zero" : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_contains.contains(_output?.__copy__(), _want?.__copy__())) {
            _t.errorf(("output does not contain %q:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
        };
    }
