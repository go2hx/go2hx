package stdgo._internal.runtime.pprof;
function startCPUProfile(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {};
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L783"
            stdgo._internal.runtime.pprof.Pprof__cpu._cpu.lock();
            {
                final __f__ = stdgo._internal.runtime.pprof.Pprof__cpu._cpu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L785"
            if (stdgo._internal.runtime.pprof.Pprof__cpu._cpu._done == null) {
                stdgo._internal.runtime.pprof.Pprof__cpu._cpu._done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L789"
            if (stdgo._internal.runtime.pprof.Pprof__cpu._cpu._profiling) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L790"
                {
                    final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("cpu profiling already in use" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            stdgo._internal.runtime.pprof.Pprof__cpu._cpu._profiling = true;
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L793"
            stdgo._internal.runtime.Runtime_setcpuprofilerate.setCPUProfileRate((100 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L794"
            {
                final __tmp__0 = _w;
                stdgo.Go.routine(() -> stdgo._internal.runtime.pprof.Pprof__profilewriter._profileWriter(__tmp__0));
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L795"
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
