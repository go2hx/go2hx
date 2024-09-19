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
function testPreemptSplitBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo._internal.testing.Testing_short.short()) {
                _t.skip(stdgo.Go.toInterface(("skipping in -short mode" : stdgo.GoString)));
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((2 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            var _stop = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            stdgo.Go.routine(() -> _internal.runtime_test.Runtime_test__big._big(_stop));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (3 : stdgo.GoInt) : Bool), _i++, {
                    stdgo._internal.time.Time_sleep.sleep((10000i64 : stdgo._internal.time.Time_Duration.Duration));
                    stdgo._internal.runtime.Runtime_gc.gc();
                });
            };
            if (_stop != null) _stop.__close__();
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
