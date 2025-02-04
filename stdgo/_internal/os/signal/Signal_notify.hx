package stdgo._internal.os.signal;
function notify(_c:stdgo.Chan<stdgo._internal.os.Os_signal.Signal>, _sig:haxe.Rest<stdgo._internal.os.Os_signal.Signal>):Void {
        var _sig = new stdgo.Slice<stdgo._internal.os.Os_signal.Signal>(_sig.length, 0, ..._sig);
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (_c == null) {
                throw stdgo.Go.toInterface(("os/signal: Notify using nil channel" : stdgo.GoString));
            };
            stdgo._internal.os.signal.Signal__handlers._handlers.lock();
            {
                final __f__ = stdgo._internal.os.signal.Signal__handlers._handlers.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _h = (stdgo._internal.os.signal.Signal__handlers._handlers._m[_c] ?? (null : stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>));
            if ((_h == null || (_h : Dynamic).__nil__)) {
                if (stdgo._internal.os.signal.Signal__handlers._handlers._m == null) {
                    stdgo._internal.os.signal.Signal__handlers._handlers._m = ({
                        final x = new stdgo.GoMap.GoChanMap<stdgo.Chan<stdgo._internal.os.Os_signal.Signal>, stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>>();
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.Chan<stdgo._internal.os.Os_signal.Signal>, stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>>);
                };
                _h = (stdgo.Go.setRef(({} : stdgo._internal.os.signal.Signal_t_handler.T_handler)) : stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>);
                stdgo._internal.os.signal.Signal__handlers._handlers._m[_c] = _h;
            };
            var _add = (function(_n:stdgo.GoInt):Void {
                if ((_n < (0 : stdgo.GoInt) : Bool)) {
                    return;
                };
                if (!@:check2r _h._want(_n)) {
                    @:check2r _h._set(_n);
                    if (stdgo._internal.os.signal.Signal__handlers._handlers._ref[(_n : stdgo.GoInt)] == ((0i64 : stdgo.GoInt64))) {
                        stdgo._internal.os.signal.Signal__enablesignal._enableSignal(_n);
                        @:check2 stdgo._internal.os.signal.Signal__watchsignallooponce._watchSignalLoopOnce.do_(function():Void {
                            if (stdgo._internal.os.signal.Signal__watchsignalloop._watchSignalLoop != null) {
                                stdgo.Go.routine(() -> stdgo._internal.os.signal.Signal__watchsignalloop._watchSignalLoop());
                            };
                        });
                    };
                    stdgo._internal.os.signal.Signal__handlers._handlers._ref[(_n : stdgo.GoInt)]++;
                };
            } : stdgo.GoInt -> Void);
            if ((_sig.length) == ((0 : stdgo.GoInt))) {
                {
                    var _n = (0 : stdgo.GoInt);
                    while ((_n < (65 : stdgo.GoInt) : Bool)) {
                        _add(_n);
                        _n++;
                    };
                };
            } else {
                for (__0 => _s in _sig) {
                    _add(stdgo._internal.os.signal.Signal__signum._signum(_s));
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
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
