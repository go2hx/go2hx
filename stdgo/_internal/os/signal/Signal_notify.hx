package stdgo._internal.os.signal;
function notify(_c:stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>, _sig:haxe.Rest<stdgo._internal.os.Os_Signal.Signal>):Void {
        var _sig = new stdgo.Slice<stdgo._internal.os.Os_Signal.Signal>(_sig.length, 0, ..._sig);
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_c == null) {
                throw stdgo.Go.toInterface(("os/signal: Notify using nil channel" : stdgo.GoString));
            };
            stdgo._internal.os.signal.Signal__handlers._handlers.lock();
            __deferstack__.unshift(() -> stdgo._internal.os.signal.Signal__handlers._handlers.unlock());
            var _h = (stdgo._internal.os.signal.Signal__handlers._handlers._m[_c] ?? (null : stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>));
            if (_h == null || (_h : Dynamic).__nil__) {
                if (stdgo._internal.os.signal.Signal__handlers._handlers._m == null) {
                    stdgo._internal.os.signal.Signal__handlers._handlers._m = ({
                        final x = new stdgo.GoMap.GoChanMap<stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>, stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>>();
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>, stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>>);
                };
                _h = (stdgo.Go.setRef(({} : stdgo._internal.os.signal.Signal_T_handler.T_handler)) : stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>);
                stdgo._internal.os.signal.Signal__handlers._handlers._m[_c] = _h;
            };
            var _add = (function(_n:stdgo.GoInt):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if ((_n < (0 : stdgo.GoInt) : Bool)) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                    if (!_h._want(_n)) {
                        _h._set(_n);
                        if (stdgo._internal.os.signal.Signal__handlers._handlers._ref[(_n : stdgo.GoInt)] == ((0i64 : stdgo.GoInt64))) {
                            stdgo._internal.os.signal.Signal__enableSignal._enableSignal(_n);
                            stdgo._internal.os.signal.Signal__watchSignalLoopOnce._watchSignalLoopOnce.do_(function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    if (stdgo._internal.os.signal.Signal__watchSignalLoop._watchSignalLoop != null) {
                                        stdgo.Go.routine(() -> stdgo._internal.os.signal.Signal__watchSignalLoop._watchSignalLoop());
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
                            });
                        };
                        stdgo._internal.os.signal.Signal__handlers._handlers._ref[(_n : stdgo.GoInt)]++;
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
