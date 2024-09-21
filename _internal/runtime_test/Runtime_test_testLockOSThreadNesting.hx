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
function testLockOSThreadNesting(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (true) {
            _t.skip(stdgo.Go.toInterface(("no threads on wasm yet" : stdgo.GoString)));
        };
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var __tmp__ = stdgo._internal.runtime.Runtime_lockOSCounts.lockOSCounts(), _e:stdgo.GoUInt32 = __tmp__._0, _i:stdgo.GoUInt32 = __tmp__._1;
                if (((_e != (0u32 : stdgo.GoUInt32)) || (_i != (0u32 : stdgo.GoUInt32)) : Bool)) {
                    _t.errorf(("want locked counts 0, 0; got %d, %d" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_i));
                    return;
                };
                stdgo._internal.runtime.Runtime_lockOSThread.lockOSThread();
                stdgo._internal.runtime.Runtime_lockOSThread.lockOSThread();
                stdgo._internal.runtime.Runtime_unlockOSThread.unlockOSThread();
                {
                    var __tmp__ = stdgo._internal.runtime.Runtime_lockOSCounts.lockOSCounts();
                    _e = __tmp__._0;
                    _i = __tmp__._1;
                };
                if (((_e != (1u32 : stdgo.GoUInt32)) || (_i != (0u32 : stdgo.GoUInt32)) : Bool)) {
                    _t.errorf(("want locked counts 1, 0; got %d, %d" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_i));
                    return;
                };
                stdgo._internal.runtime.Runtime_unlockOSThread.unlockOSThread();
                {
                    var __tmp__ = stdgo._internal.runtime.Runtime_lockOSCounts.lockOSCounts();
                    _e = __tmp__._0;
                    _i = __tmp__._1;
                };
                if (((_e != (0u32 : stdgo.GoUInt32)) || (_i != (0u32 : stdgo.GoUInt32)) : Bool)) {
                    _t.errorf(("want locked counts 0, 0; got %d, %d" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_i));
                    return;
                };
            };
            a();
        });
    }
