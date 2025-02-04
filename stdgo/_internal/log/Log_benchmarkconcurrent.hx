package stdgo._internal.log;
function benchmarkConcurrent(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((new stdgo._internal.log.Log_t_discard.T_discard() : stdgo._internal.log.Log_t_discard.T_discard)), ("prefix: " : stdgo.GoString), (79 : stdgo.GoInt));
        var _group:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
        {
            var _i = (stdgo._internal.runtime.Runtime_numcpu.numCPU() : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2 _group.add((1 : stdgo.GoInt));
stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                        try {
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                                    @:check2r _l.output((0 : stdgo.GoInt), ("hello, world!" : stdgo.GoString));
                                    _i++;
                                };
                            };
                            {
                                final __f__ = @:check2 _group.done;
                                __deferstack__.unshift({ ran : false, f : () -> __f__() });
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
                    };
                    a();
                }));
                _i--;
            };
        };
        @:check2 _group.wait_();
    }
