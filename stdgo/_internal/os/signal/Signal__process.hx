package stdgo._internal.os.signal;
function _process(_sig:stdgo._internal.os.Os_signal.Signal):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _n = (stdgo._internal.os.signal.Signal__signum._signum(_sig) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L234"
            if ((_n < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L235"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L238"
            stdgo._internal.os.signal.Signal__handlers._handlers.lock();
            {
                final __f__ = stdgo._internal.os.signal.Signal__handlers._handlers.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L241"
            for (_c => _h in stdgo._internal.os.signal.Signal__handlers._handlers._m) {
                //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L242"
                if (_h._want(_n)) {
                    //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L244"
                    {
                        var __select__ = true;
                        var __c__0 = _c;
                        while (__select__) {
                            if (_c != null && __c__0.__isSend__(true)) {
                                __select__ = false;
                                {
                                    __c__0.__send__(_sig);
                                    {};
                                };
                            } else {
                                __select__ = false;
                                {};
                            };
                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                        __c__0.__reset__();
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L252"
            for (__0 => _d in stdgo._internal.os.signal.Signal__handlers._handlers._stopping) {
                //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L253"
                if (_d._h._want(_n)) {
                    //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L254"
                    {
                        var __select__ = true;
                        var __c__0 = _d._c;
                        while (__select__) {
                            if (_d._c != null && __c__0.__isSend__(true)) {
                                __select__ = false;
                                {
                                    __c__0.__send__(_sig);
                                    {};
                                };
                            } else {
                                __select__ = false;
                                {};
                            };
                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                        __c__0.__reset__();
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
