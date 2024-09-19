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
function testLargeStringConcat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("stringconcat" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _want = (((((("panic: " : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), (1024 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("1" : stdgo.GoString), (1024 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("2" : stdgo.GoString), (1024 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("3" : stdgo.GoString), (1024 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_output?.__copy__(), _want?.__copy__())) {
            _t.fatalf(("output does not start with %q:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
        };
    }
