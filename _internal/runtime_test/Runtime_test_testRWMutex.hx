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
function testRWMutex(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            var _n = (1000 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                _n = (5 : stdgo.GoInt);
            };
            _internal.runtime_test.Runtime_test_hammerRWMutex.hammerRWMutex((1 : stdgo.GoInt), (1 : stdgo.GoInt), _n);
            _internal.runtime_test.Runtime_test_hammerRWMutex.hammerRWMutex((1 : stdgo.GoInt), (3 : stdgo.GoInt), _n);
            _internal.runtime_test.Runtime_test_hammerRWMutex.hammerRWMutex((1 : stdgo.GoInt), (10 : stdgo.GoInt), _n);
            _internal.runtime_test.Runtime_test_hammerRWMutex.hammerRWMutex((4 : stdgo.GoInt), (1 : stdgo.GoInt), _n);
            _internal.runtime_test.Runtime_test_hammerRWMutex.hammerRWMutex((4 : stdgo.GoInt), (3 : stdgo.GoInt), _n);
            _internal.runtime_test.Runtime_test_hammerRWMutex.hammerRWMutex((4 : stdgo.GoInt), (10 : stdgo.GoInt), _n);
            _internal.runtime_test.Runtime_test_hammerRWMutex.hammerRWMutex((10 : stdgo.GoInt), (1 : stdgo.GoInt), _n);
            _internal.runtime_test.Runtime_test_hammerRWMutex.hammerRWMutex((10 : stdgo.GoInt), (3 : stdgo.GoInt), _n);
            _internal.runtime_test.Runtime_test_hammerRWMutex.hammerRWMutex((10 : stdgo.GoInt), (10 : stdgo.GoInt), _n);
            _internal.runtime_test.Runtime_test_hammerRWMutex.hammerRWMutex((10 : stdgo.GoInt), (5 : stdgo.GoInt), _n);
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
