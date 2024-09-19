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
function testDeferKeepAlive(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_internal.runtime_test.Runtime_test__flagQuick._flagQuick.value) {
                _t.skip(stdgo.Go.toInterface(("-quick" : stdgo.GoString)));
            };
            _t.parallel();
            {};
            var _x = stdgo.Go.pointer((null : _internal.runtime_test.Runtime_test_T_testDeferKeepAlive___localname___T_5398.T_testDeferKeepAlive___localname___T_5398));
            var _finRun = (false : Bool);
            stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_x), stdgo.Go.toInterface(function(_x:stdgo.Pointer<_internal.runtime_test.Runtime_test_T_testDeferKeepAlive___localname___T_5398.T_testDeferKeepAlive___localname___T_5398>):Void {
                _finRun = true;
            }));
            {
                var _a0 = _x;
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_a0)));
            };
            stdgo._internal.runtime.Runtime_gc.gc();
            stdgo._internal.time.Time_sleep.sleep((1000000000i64 : stdgo._internal.time.Time_Duration.Duration));
            if (_finRun) {
                _t.errorf(("finalizer ran prematurely" : stdgo.GoString));
            };
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
