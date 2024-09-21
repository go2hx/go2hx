package _internal.internal.poll_test;
import stdgo._internal.internal.poll.Poll;
function testMutexStress(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var p = (8 : stdgo.GoInt);
            var n = ((1000000 : stdgo.GoInt) : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                p = (4 : stdgo.GoInt);
                n = (10000 : stdgo.GoInt);
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(p);
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            var _done = (new stdgo.Chan<Bool>((p : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            var _mu:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex = ({} : stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex);
            var _readState:stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt64)]);
            var _writeState:stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt64)]);
            {
                var _p = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_p < p : Bool), _p++, {
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> {
                                    var a = function():Void {
                                        var __deferstack__:Array<Void -> Void> = [];
                                        try {
                                            _done.__send__(!_t.failed());
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
                                    };
                                    a();
                                });
                                var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(stdgo._internal.math.rand.Rand_int63.int63()));
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_i < n : Bool), _i++, {
                                        {
                                            final __value__ = _r.intn((3 : stdgo.GoInt));
                                            if (__value__ == ((0 : stdgo.GoInt))) {
                                                if (!_mu.incref()) {
                                                    _t.error(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
                                                    {
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return;
                                                    };
                                                };
                                                if (_mu.decref()) {
                                                    _t.error(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
                                                    {
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return;
                                                    };
                                                };
                                            } else if (__value__ == ((1 : stdgo.GoInt))) {
                                                if (!_mu.rwlock(true)) {
                                                    _t.error(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
                                                    {
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return;
                                                    };
                                                };
                                                if (_readState[(0 : stdgo.GoInt)] != (_readState[((1 : stdgo.GoInt) : stdgo.GoInt)])) {
                                                    _t.error(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
                                                    {
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return;
                                                    };
                                                };
                                                _readState[(0 : stdgo.GoInt)]++;
                                                _readState[(1 : stdgo.GoInt)]++;
                                                if (_mu.rwunlock(true)) {
                                                    _t.error(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
                                                    {
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return;
                                                    };
                                                };
                                            } else if (__value__ == ((2 : stdgo.GoInt))) {
                                                if (!_mu.rwlock(false)) {
                                                    _t.error(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
                                                    {
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return;
                                                    };
                                                };
                                                if (_writeState[(0 : stdgo.GoInt)] != (_writeState[((1 : stdgo.GoInt) : stdgo.GoInt)])) {
                                                    _t.error(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
                                                    {
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return;
                                                    };
                                                };
                                                _writeState[(0 : stdgo.GoInt)]++;
                                                _writeState[(1 : stdgo.GoInt)]++;
                                                if (_mu.rwunlock(false)) {
                                                    _t.error(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
                                                    {
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return;
                                                    };
                                                };
                                            };
                                        };
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
                        };
                        a();
                    });
                });
            };
            {
                var _p = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_p < p : Bool), _p++, {
                    if (!_done.__get__()) {
                        _t.failNow();
                    };
                });
            };
            if (!_mu.increfAndClose()) {
                _t.fatal(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
            };
            if (!_mu.decref()) {
                _t.fatal(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
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
