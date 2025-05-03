package stdgo._internal.sync;
function onceFunc(_f:() -> Void):() -> Void {
        var _once:stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once), _valid:Bool = false, _p:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _g = (function():Void {
            var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
            try {
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            _p = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            //"file:///home/runner/.go/go1.21.3/src/sync/oncefunc.go#L21"
                            if (!_valid) {
                                //"file:///home/runner/.go/go1.21.3/src/sync/oncefunc.go#L24"
                                throw stdgo.Go.toInterface(_p);
                            };
                        };
                        a();
                    }) });
                };
                //"file:///home/runner/.go/go1.21.3/src/sync/oncefunc.go#L27"
                _f();
                _valid = true;
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
        } : () -> Void);
        //"file:///home/runner/.go/go1.21.3/src/sync/oncefunc.go#L30"
        return function():Void {
            //"file:///home/runner/.go/go1.21.3/src/sync/oncefunc.go#L31"
            _once.do_(_g);
            //"file:///home/runner/.go/go1.21.3/src/sync/oncefunc.go#L32"
            if (!_valid) {
                //"file:///home/runner/.go/go1.21.3/src/sync/oncefunc.go#L33"
                throw stdgo.Go.toInterface(_p);
            };
        };
    }
