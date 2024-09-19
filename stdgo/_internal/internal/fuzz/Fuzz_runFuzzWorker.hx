package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function runFuzzWorker(_ctx:stdgo._internal.context.Context_Context.Context, _fn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry -> stdgo.Error):stdgo.Error {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__getWorkerComm._getWorkerComm(), _comm:stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var _srv = (stdgo.Go.setRef(({ _workerComm : _comm?.__copy__(), _fuzzFn : function(_e:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry):{ var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; } {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _timer = stdgo._internal.time.Time_afterFunc.afterFunc((10000000000i64 : stdgo._internal.time.Time_Duration.Duration), function():Void {
                        throw stdgo.Go.toInterface(("deadlocked!" : stdgo.GoString));
                    });
                    __deferstack__.unshift(() -> _timer.stop());
                    var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
                    var _err = (_fn(_e?.__copy__()) : stdgo.Error);
                    {
                        final __ret__:{ var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; } = { _0 : stdgo._internal.time.Time_since.since(_start?.__copy__()), _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        final __ret__:{ var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; } = { _0 : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration), _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return __ret__;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    final __ret__:{ var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; } = { _0 : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration), _1 : (null : stdgo.Error) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            }, _m : stdgo._internal.internal.fuzz.Fuzz__newMutator._newMutator() } : stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer>);
            {
                final __ret__:stdgo.Error = _srv._serve(_ctx);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }