package stdgo._internal.runtime.pprof;
function stopCPUProfile():Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L831"
            stdgo._internal.runtime.pprof.Pprof__cpu._cpu.lock();
            {
                final __f__ = stdgo._internal.runtime.pprof.Pprof__cpu._cpu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L834"
            if (!stdgo._internal.runtime.pprof.Pprof__cpu._cpu._profiling) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L835"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            stdgo._internal.runtime.pprof.Pprof__cpu._cpu._profiling = false;
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L838"
            stdgo._internal.runtime.Runtime_setcpuprofilerate.setCPUProfileRate((0 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L839"
            stdgo._internal.runtime.pprof.Pprof__cpu._cpu._done.__get__();
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
