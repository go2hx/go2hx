package stdgo._internal.runtime.pprof;
function stopCPUProfile():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.runtime.pprof.Pprof__cpu._cpu.lock();
            __deferstack__.unshift(() -> stdgo._internal.runtime.pprof.Pprof__cpu._cpu.unlock());
            if (!stdgo._internal.runtime.pprof.Pprof__cpu._cpu._profiling) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            stdgo._internal.runtime.pprof.Pprof__cpu._cpu._profiling = false;
            stdgo._internal.runtime.Runtime_setCPUProfileRate.setCPUProfileRate((0 : stdgo.GoInt));
            stdgo._internal.runtime.pprof.Pprof__cpu._cpu._done.__get__();
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
