package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testMutex(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _n = (stdgo._internal.runtime.Runtime_setMutexProfileFraction.setMutexProfileFraction((1 : stdgo.GoInt)) : stdgo.GoInt);
                if (_n != ((0 : stdgo.GoInt))) {
                    _t.logf(("got mutexrate %d expected 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
                };
            };
            {
                var _a0 = (0 : stdgo.GoInt);
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_setMutexProfileFraction.setMutexProfileFraction(_a0));
            };
            var _m = _new(stdgo._internal.sync.Sync_mutex.mutex);
            _m.lock();
            if (_m.tryLock()) {
                _t.fatalf(("TryLock succeeded with mutex locked" : stdgo.GoString));
            };
            _m.unlock();
            if (!_m.tryLock()) {
                _t.fatalf(("TryLock failed with mutex unlocked" : stdgo.GoString));
            };
            _m.unlock();
            var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    stdgo.Go.routine(() -> _internal.sync_test.Sync_test_hammerMutex.hammerMutex(_m, (1000 : stdgo.GoInt), _c));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    _c.__get__();
                });
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
