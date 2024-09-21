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
function testNoHelperGoroutines(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("NoHelperGoroutines" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _matches = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("goroutine [0-9]+ \\[" : stdgo.GoString)).findAllStringSubmatch(_output?.__copy__(), (-1 : stdgo.GoInt));
        if (((_matches.length != (1 : stdgo.GoInt)) || (_matches[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] != ("goroutine 1 [" : stdgo.GoString)) : Bool)) {
            _t.fatalf(("want to see only goroutine 1, see:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_output));
        };
    }
