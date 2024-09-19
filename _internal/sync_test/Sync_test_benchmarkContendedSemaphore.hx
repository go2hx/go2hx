package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkContendedSemaphore(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _b.stopTimer();
            var _s = _new(_internal.sync_test.Sync_test__uint32._uint32);
            _s.value = (1u32 : stdgo.GoUInt32);
            var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((2 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            _b.startTimer();
            stdgo.Go.routine(() -> _internal.sync_test.Sync_test_hammerSemaphore.hammerSemaphore(_s, (_b.n / (2 : stdgo.GoInt) : stdgo.GoInt), _c));
            stdgo.Go.routine(() -> _internal.sync_test.Sync_test_hammerSemaphore.hammerSemaphore(_s, (_b.n / (2 : stdgo.GoInt) : stdgo.GoInt), _c));
            _c.__get__();
            _c.__get__();
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
