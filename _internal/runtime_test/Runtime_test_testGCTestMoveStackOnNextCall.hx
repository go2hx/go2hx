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
function testGCTestMoveStackOnNextCall(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _onStack:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _retry = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_retry < (5 : stdgo.GoInt) : Bool), _retry++, {
                stdgo._internal.runtime.Runtime_gctestMoveStackOnNextCall.gctestMoveStackOnNextCall();
                if (_internal.runtime_test.Runtime_test__moveStackCheck._moveStackCheck(_t, stdgo.Go.pointer(_onStack), ((stdgo.Go.toInterface(stdgo.Go.pointer(_onStack)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr))) {
                    return;
                };
            });
        };
        _t.fatal(stdgo.Go.toInterface(("stack did not move" : stdgo.GoString)));
    }
