package stdgo._internal.runtime.pprof;
function startCPUProfile(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            stdgo._internal.runtime.pprof.Pprof__cpu._cpu.lock();
            {
                final __f__ = stdgo._internal.runtime.pprof.Pprof__cpu._cpu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (stdgo._internal.runtime.pprof.Pprof__cpu._cpu._done == null) {
                stdgo._internal.runtime.pprof.Pprof__cpu._cpu._done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            };
            if (stdgo._internal.runtime.pprof.Pprof__cpu._cpu._profiling) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("cpu profiling already in use" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return __ret__;
                };
            };
            stdgo._internal.runtime.pprof.Pprof__cpu._cpu._profiling = true;
            stdgo._internal.runtime.Runtime_setCPUProfileRate.setCPUProfileRate((100 : stdgo.GoInt));
            stdgo.Go.routine(() -> stdgo._internal.runtime.pprof.Pprof__profileWriter._profileWriter(_w));
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
