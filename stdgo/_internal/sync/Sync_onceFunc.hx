package stdgo._internal.sync;
function onceFunc(_f:() -> Void):() -> Void {
        var __0:stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once), __1:Bool = false, __2:stdgo.AnyInterface = (null : stdgo.AnyInterface);
var _p = __2, _valid = __1, _once = __0;
        var _g = (function():Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                __deferstack__.unshift(() -> {
                    var a = function():Void {
                        _p = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (!_valid) {
                            throw stdgo.Go.toInterface(_p);
                        };
                    };
                    a();
                });
                _f();
                _valid = true;
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
        } : () -> Void);
        return function():Void {
            _once.do_(_g);
            if (!_valid) {
                throw stdgo.Go.toInterface(_p);
            };
        };
    }
