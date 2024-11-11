package stdgo._internal.os.signal;
function _cancel(_sigs:stdgo.Slice<stdgo._internal.os.Os_Signal.Signal>, _action:stdgo.GoInt -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.os.signal.Signal__handlers._handlers.lock();
            __deferstack__.unshift(() -> stdgo._internal.os.signal.Signal__handlers._handlers.unlock());
            var _remove = (function(_n:stdgo.GoInt):Void {
                var _zerohandler:stdgo._internal.os.signal.Signal_T_handler.T_handler = ({} : stdgo._internal.os.signal.Signal_T_handler.T_handler);
                for (_c => _h in stdgo._internal.os.signal.Signal__handlers._handlers._m) {
                    if (_h._want(_n)) {
                        stdgo._internal.os.signal.Signal__handlers._handlers._ref[(_n : stdgo.GoInt)]--;
                        _h._clear(_n);
                        if (stdgo.Go.toInterface(_h._mask) == stdgo.Go.toInterface(_zerohandler._mask)) {
                            if (stdgo._internal.os.signal.Signal__handlers._handlers._m != null) stdgo._internal.os.signal.Signal__handlers._handlers._m.remove(_c);
                        };
                    };
                };
                _action(_n);
            } : stdgo.GoInt -> Void);
            if ((_sigs.length) == ((0 : stdgo.GoInt))) {
                {
                    var _n = (0 : stdgo.GoInt);
                    while ((_n < (65 : stdgo.GoInt) : Bool)) {
                        _remove(_n);
                        _n++;
                    };
                };
            } else {
                for (__0 => _s in _sigs) {
                    _remove(stdgo._internal.os.signal.Signal__signum._signum(_s));
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
