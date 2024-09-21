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
function testPanicNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.run(("default" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            _internal.runtime_test.Runtime_test__checkPanicNil._checkPanicNil(_t, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_PanicNilError.PanicNilError)) : stdgo.Ref<stdgo._internal.runtime.Runtime_PanicNilError.PanicNilError>))));
        });
        _t.run(("GODEBUG=panicnil=0" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            _t.setenv(("GODEBUG" : stdgo.GoString), ("panicnil=0" : stdgo.GoString));
            _internal.runtime_test.Runtime_test__checkPanicNil._checkPanicNil(_t, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_PanicNilError.PanicNilError)) : stdgo.Ref<stdgo._internal.runtime.Runtime_PanicNilError.PanicNilError>))));
        });
        _t.run(("GODEBUG=panicnil=1" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            _t.setenv(("GODEBUG" : stdgo.GoString), ("panicnil=1" : stdgo.GoString));
            _internal.runtime_test.Runtime_test__checkPanicNil._checkPanicNil(_t, (null : stdgo.AnyInterface));
        });
    }
