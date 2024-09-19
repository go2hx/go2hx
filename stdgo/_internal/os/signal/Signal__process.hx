package stdgo._internal.os.signal;
function _process(_sig:stdgo._internal.os.Os_Signal.Signal):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _n = (stdgo._internal.os.signal.Signal__signum._signum(_sig) : stdgo.GoInt);
            if ((_n < (0 : stdgo.GoInt) : Bool)) {
                return;
            };
            stdgo._internal.os.signal.Signal__handlers._handlers.lock();
            __deferstack__.unshift(() -> stdgo._internal.os.signal.Signal__handlers._handlers.unlock());
            for (_c => _h in stdgo._internal.os.signal.Signal__handlers._handlers._m) {
                if (_h._want(_n)) {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_c != null && _c.__isSend__()) {
                                __select__ = false;
                                {
                                    _c.__send__(_sig);
                                    {};
                                };
                            } else {
                                __select__ = false;
                                {};
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                };
            };
            for (__0 => _d in stdgo._internal.os.signal.Signal__handlers._handlers._stopping) {
                if (_d._h._want(_n)) {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_d._c != null && _d._c.__isSend__()) {
                                __select__ = false;
                                {
                                    _d._c.__send__(_sig);
                                    {};
                                };
                            } else {
                                __select__ = false;
                                {};
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
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
