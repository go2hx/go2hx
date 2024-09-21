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
function testFramePointerAdjust(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            final __value__ = ("wasm" : stdgo.GoString);
            if (__value__ == (("amd64" : stdgo.GoString)) || __value__ == (("arm64" : stdgo.GoString))) {} else {
                _t.skipf(("frame pointer is not supported on %s" : stdgo.GoString), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
            };
        };
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("FramePointerAdjust" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_output != (stdgo.Go.str())) {
            _t.errorf(("output:\n%s\n\nwant no output" : stdgo.GoString), stdgo.Go.toInterface(_output));
        };
    }
