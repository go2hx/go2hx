package stdgo._internal.os.signal;
function _cancel(_sigs:stdgo.Slice<stdgo._internal.os.Os_signal.Signal>, _action:stdgo.GoInt -> Void):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L52"
            stdgo._internal.os.signal.Signal__handlers._handlers.lock();
            {
                final __f__ = stdgo._internal.os.signal.Signal__handlers._handlers.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _remove = (function(_n:stdgo.GoInt):Void {
                var _zerohandler:stdgo._internal.os.signal.Signal_t_handler.T_handler = ({} : stdgo._internal.os.signal.Signal_t_handler.T_handler);
                //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L58"
                for (_c => _h in stdgo._internal.os.signal.Signal__handlers._handlers._m) {
                    //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L59"
                    if (_h._want(_n)) {
                        //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L60"
                        stdgo._internal.os.signal.Signal__handlers._handlers._ref[(_n : stdgo.GoInt)]--;
                        //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L61"
                        _h._clear(_n);
                        //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L62"
                        if (stdgo.Go.toInterface((@:checkr _h ?? throw "null pointer dereference")._mask) == stdgo.Go.toInterface(_zerohandler._mask)) {
                            //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L63"
                            if (stdgo._internal.os.signal.Signal__handlers._handlers._m != null) stdgo._internal.os.signal.Signal__handlers._handlers._m.__remove__(_c);
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L68"
                _action(_n);
            } : stdgo.GoInt -> Void);
            //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L71"
            if ((_sigs.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L72"
                {
                    var _n = (0 : stdgo.GoInt);
                    while ((_n < (65 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L73"
                        _remove(_n);
                        _n++;
                    };
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L76"
                for (__0 => _s in _sigs) {
                    //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L77"
                    _remove(stdgo._internal.os.signal.Signal__signum._signum(_s));
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
