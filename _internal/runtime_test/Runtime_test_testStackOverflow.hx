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
function testStackOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("StackOverflow" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _want = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("runtime: goroutine stack exceeds 1474560-byte limit\n" : stdgo.GoString), ("fatal error: stack overflow" : stdgo.GoString), ("runtime: sp=" : stdgo.GoString), ("stack=[" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_output?.__copy__(), _want[(0 : stdgo.GoInt)]?.__copy__())) {
            _t.errorf(("output does not start with %q" : stdgo.GoString), stdgo.Go.toInterface(_want[(0 : stdgo.GoInt)]));
        };
        for (__6 => _s in (_want.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
            if (!stdgo._internal.strings.Strings_contains.contains(_output?.__copy__(), _s?.__copy__())) {
                _t.errorf(("output does not contain %q" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        if (_t.failed()) {
            _t.logf(("output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_output));
        };
    }
