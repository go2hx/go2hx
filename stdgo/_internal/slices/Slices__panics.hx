package stdgo._internal.slices;
function _panics(_f:() -> Void):Bool {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _b = false;
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        {
                            var _x = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_x != null) {
                                _b = true;
                            };
                        };
                    };
                    a();
                }) });
            };
            _f();
            {
                final __ret__:Bool = _b = false;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _b;
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _b;
        };
    }
