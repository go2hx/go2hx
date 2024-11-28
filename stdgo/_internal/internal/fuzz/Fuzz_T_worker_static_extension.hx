package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_worker_asInterface) class T_worker_static_extension {
    @:keep
    static public function _stop( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker> = _w;
        if (_w._termC == null) {
            throw stdgo.Go.toInterface(("worker was not started successfully" : stdgo.GoString));
        };
        {
            var __select__ = true;
            while (__select__) {
                if (_w._termC != null && _w._termC.__isGet__()) {
                    __select__ = false;
                    {
                        _w._termC.__get__();
                        {
                            if ((_w._client == null || (_w._client : Dynamic).__nil__)) {
                                return _w._waitErr;
                            };
                            _w._client.close();
                            _w._cmd = null;
                            _w._client = null;
                            return _w._waitErr;
                        };
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        var _closeC = (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                _w._client.close();
                if (_closeC != null) _closeC.__close__();
            };
            a();
        }));
        var _sig = (stdgo._internal.os.Os_interrupt.interrupt : stdgo._internal.os.Os_Signal.Signal);
        if (false) {
            _sig = stdgo._internal.os.Os_kill.kill;
        };
        var _t = stdgo._internal.time.Time_newTimer.newTimer((1000000000i64 : stdgo._internal.time.Time_Duration.Duration));
        while (true) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_w._termC != null && _w._termC.__isGet__()) {
                        __select__ = false;
                        {
                            _w._termC.__get__();
                            {
                                _t.stop();
                                _closeC.__get__();
                                _w._cmd = null;
                                _w._client = null;
                                return _w._waitErr;
                            };
                        };
                    } else if (_t.c != null && _t.c.__isGet__()) {
                        __select__ = false;
                        {
                            _t.c.__get__();
                            {
                                _w._interrupted = true;
                                {
                                    final __value__ = _sig;
                                    if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.os.Os_interrupt.interrupt))) {
                                        _w._cmd.process.signal(_sig);
                                        _sig = stdgo._internal.os.Os_kill.kill;
                                        _t.reset((1000000000i64 : stdgo._internal.time.Time_Duration.Duration));
                                    } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.os.Os_kill.kill))) {
                                        _w._cmd.process.signal(_sig);
                                        _sig = (null : stdgo._internal.os.Os_Signal.Signal);
                                        _t.reset((1000000000i64 : stdgo._internal.time.Time_Duration.Duration));
                                    } else if (__value__ == null) {
                                        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w._coordinator._opts.log, ("waiting for fuzzing process to terminate...\n" : stdgo.GoString));
                                    };
                                };
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
        };
    }
    @:keep
    static public function _start( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker> = _w;
        var __deferstack__:Array<Void -> Void> = [];
        var _err = (null : stdgo.Error);
        try {
            if (_w._isRunning()) {
                throw stdgo.Go.toInterface(("worker already started" : stdgo.GoString));
            };
            _w._waitErr = (null : stdgo.Error);
            _w._interrupted = false;
            _w._termC = (null : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>);
            var _cmd = stdgo._internal.os.exec.Exec_command.command(_w._binPath?.__copy__(), ...(_w._args : Array<stdgo.GoString>));
            _cmd.dir = _w._dir?.__copy__();
            _cmd.env = (_w._env.__slice__(0, (_w._env.length), (_w._env.length)) : stdgo.Slice<stdgo.GoString>);
            var __tmp__ = stdgo._internal.os.Os_pipe.pipe(), _fuzzInR:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _fuzzInW:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return _err;
            };
            __deferstack__.unshift(() -> _fuzzInR.close());
            var __tmp__ = stdgo._internal.os.Os_pipe.pipe(), _fuzzOutR:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _fuzzOutW:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _fuzzInW.close();
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            __deferstack__.unshift(() -> _fuzzOutW.close());
            stdgo._internal.internal.fuzz.Fuzz__setWorkerComm._setWorkerComm(_cmd, ({ _fuzzIn : _fuzzInR, _fuzzOut : _fuzzOutW, _memMu : _w._memMu } : stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm));
            {
                var _err = (_cmd.start() : stdgo.Error);
                if (_err != null) {
                    _fuzzInW.close();
                    _fuzzOutR.close();
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            _w._cmd = _cmd;
            _w._termC = (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>);
            var _comm = ({ _fuzzIn : _fuzzInW, _fuzzOut : _fuzzOutR, _memMu : _w._memMu } : stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm);
            var _m = stdgo._internal.internal.fuzz.Fuzz__newMutator._newMutator();
            _w._client = stdgo._internal.internal.fuzz.Fuzz__newWorkerClient._newWorkerClient(_comm?.__copy__(), _m);
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    _w._waitErr = _w._cmd.wait_();
                    if (_w._termC != null) _w._termC.__close__();
                };
                a();
            }));
            {
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _err;
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
            return _err;
        };
    }
    @:keep
    static public function _startAndPing( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker> = _w;
        if (_ctx.err() != null) {
            return _ctx.err();
        };
        {
            var _err = (_w._start() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err = (_w._client._ping(_ctx) : stdgo.Error);
            if (_err != null) {
                _w._stop();
                if (_ctx.err() != null) {
                    return _ctx.err();
                };
                if (stdgo._internal.internal.fuzz.Fuzz__isInterruptError._isInterruptError(_err)) {
                    return _err;
                };
                return stdgo._internal.fmt.Fmt_errorf.errorf(("fuzzing process terminated without fuzzing: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _isRunning( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker> = _w;
        return (_w._cmd != null && ((_w._cmd : Dynamic).__nil__ == null || !(_w._cmd : Dynamic).__nil__));
    }
    @:keep
    static public function _minimize( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>, _ctx:stdgo._internal.context.Context_Context.Context, _input:stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker> = _w;
        var __deferstack__:Array<Void -> Void> = [];
        var _min = ({} : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult), _err = (null : stdgo.Error);
        try {
            if (_w._coordinator._opts.minimizeTimeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                var _cancel:() -> Void = null;
                {
                    var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(_ctx, _w._coordinator._opts.minimizeTimeout);
                    _ctx = __tmp__._0;
                    _cancel = __tmp__._1;
                };
                __deferstack__.unshift(() -> _cancel());
            };
            var _args = ({ limit : _input._limit, timeout : _input._timeout, keepCoverage : _input._keepCoverage } : stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs);
            var __tmp__ = _w._client._minimize(_ctx, _input._entry?.__copy__(), _args?.__copy__()), _entry:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry = __tmp__._0, _resp:stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _w._stop();
                if (((_ctx.err() != null || _w._interrupted : Bool) || stdgo._internal.internal.fuzz.Fuzz__isInterruptError._isInterruptError(_w._waitErr) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult; var _1 : stdgo.Error; } = { _0 : _min = ({ _entry : _input._entry?.__copy__(), _crasherMsg : _input._crasherMsg?.__copy__(), _coverageData : _input._keepCoverage, _canMinimize : false, _limit : _input._limit } : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult), _1 : _err = (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult; var _1 : stdgo.Error; } = { _0 : _min = ({ _entry : _entry?.__copy__(), _crasherMsg : stdgo._internal.fmt.Fmt_sprintf.sprintf(("fuzzing process hung or terminated unexpectedly while minimizing: %v" : stdgo.GoString), stdgo.Go.toInterface(_err))?.__copy__(), _canMinimize : false, _limit : _input._limit, _count : _resp.count, _totalDuration : _resp.duration } : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult), _1 : _err = (null : stdgo.Error) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (((_input._crasherMsg != stdgo.Go.str()) && (_resp.err == stdgo.Go.str()) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult; var _1 : stdgo.Error; } = { _0 : _min = (new stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult() : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult), _1 : _err = stdgo._internal.fmt.Fmt_errorf.errorf(("attempted to minimize a crash but could not reproduce" : stdgo.GoString)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult; var _1 : stdgo.Error; } = { _0 : _min = ({ _entry : _entry?.__copy__(), _crasherMsg : _resp.err?.__copy__(), _coverageData : _resp.coverageData, _canMinimize : false, _limit : _input._limit, _count : _resp.count, _totalDuration : _resp.duration } : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult), _1 : _err = (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult; var _1 : stdgo.Error; } = { _0 : _min, _1 : _err };
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
            final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult; var _1 : stdgo.Error; } = { _0 : _min, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _coordinate( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker> = _w;
        while (true) {
            if (!_w._isRunning()) {
                {
                    var _err = (_w._startAndPing(_ctx) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            {
                var __select__ = true;
                while (__select__) {
                    if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                var _err = (_w._stop() : stdgo.Error);
                                if (((_err != null && !_w._interrupted : Bool) && !stdgo._internal.internal.fuzz.Fuzz__isInterruptError._isInterruptError(_err) : Bool)) {
                                    return _err;
                                };
                                return _ctx.err();
                            };
                        };
                    } else if (_w._termC != null && _w._termC.__isGet__()) {
                        __select__ = false;
                        {
                            _w._termC.__get__();
                            {
                                var _err = (_w._stop() : stdgo.Error);
                                if (_w._interrupted) {
                                    throw stdgo.Go.toInterface(("worker interrupted after unexpected termination" : stdgo.GoString));
                                };
                                if (((_err == null) || stdgo._internal.internal.fuzz.Fuzz__isInterruptError._isInterruptError(_err) : Bool)) {
                                    return (null : stdgo.Error);
                                };
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : true };
                                    } catch(_) {
                                        { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : false };
                                    }, _exitErr = __tmp__._0, _ok = __tmp__._1;
                                    if ((_ok && (_exitErr.exitCode() == (70 : stdgo.GoInt)) : Bool)) {
                                        return stdgo._internal.fmt.Fmt_errorf.errorf(("fuzzing process exited unexpectedly due to an internal failure: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                    };
                                };
                                return stdgo._internal.fmt.Fmt_errorf.errorf(("fuzzing process hung or terminated unexpectedly: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        };
                    } else if (_w._coordinator._inputC != null && _w._coordinator._inputC.__isGet__()) {
                        __select__ = false;
                        {
                            var _input = _w._coordinator._inputC.__get__();
                            {
                                var _args = ({ limit : _input._limit, timeout : _input._timeout, warmup : _input._warmup, coverageData : _input._coverageData } : stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs);
                                var __tmp__ = _w._client._fuzz(_ctx, _input._entry?.__copy__(), _args?.__copy__()), _entry:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry = __tmp__._0, _resp:stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse = __tmp__._1, _isInternalError:Bool = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                                var _canMinimize = (true : Bool);
                                if (_err != null) {
                                    _w._stop();
                                    if (_ctx.err() != null) {
                                        return _ctx.err();
                                    };
                                    if (_w._interrupted) {
                                        return stdgo._internal.fmt.Fmt_errorf.errorf(("communicating with fuzzing process: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                    };
                                    {
                                        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__terminationSignal._terminationSignal(_w._waitErr), _sig:stdgo._internal.os.Os_Signal.Signal = __tmp__._0, _ok:Bool = __tmp__._1;
                                        if ((_ok && !stdgo._internal.internal.fuzz.Fuzz__isCrashSignal._isCrashSignal(_sig) : Bool)) {
                                            return stdgo._internal.fmt.Fmt_errorf.errorf(("fuzzing process terminated by unexpected signal; no crash will be recorded: %v" : stdgo.GoString), stdgo.Go.toInterface(_w._waitErr));
                                        };
                                    };
                                    if (_isInternalError) {
                                        return _err;
                                    };
                                    _resp.err = stdgo._internal.fmt.Fmt_sprintf.sprintf(("fuzzing process hung or terminated unexpectedly: %v" : stdgo.GoString), stdgo.Go.toInterface(_w._waitErr))?.__copy__();
                                    _canMinimize = false;
                                };
                                var _result = ({ _limit : _input._limit, _count : _resp.count, _totalDuration : _resp.totalDuration, _entryDuration : _resp.interestingDuration, _entry : _entry?.__copy__(), _crasherMsg : _resp.err?.__copy__(), _coverageData : _resp.coverageData, _canMinimize : _canMinimize } : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult);
                                _w._coordinator._resultC.__send__(_result);
                            };
                        };
                    } else if (_w._coordinator._minimizeC != null && _w._coordinator._minimizeC.__isGet__()) {
                        __select__ = false;
                        {
                            var _input = _w._coordinator._minimizeC.__get__();
                            {
                                var __tmp__ = _w._minimize(_ctx, _input?.__copy__()), _result:stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _result = ({ _entry : _input._entry?.__copy__(), _crasherMsg : _input._crasherMsg?.__copy__(), _canMinimize : false, _limit : _input._limit } : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult);
                                    if (_result._crasherMsg == (stdgo.Go.str())) {
                                        _result._crasherMsg = _err.error()?.__copy__();
                                    };
                                };
                                if (stdgo._internal.internal.fuzz.Fuzz__shouldPrintDebugInfo._shouldPrintDebugInfo()) {
                                    _w._coordinator._debugLogf(("input minimized, id: %s, original id: %s, crasher: %t, originally crasher: %t, minimizing took: %s" : stdgo.GoString), stdgo.Go.toInterface(_result._entry.path), stdgo.Go.toInterface(_input._entry.path), stdgo.Go.toInterface(_result._crasherMsg != (stdgo.Go.str())), stdgo.Go.toInterface(_input._crasherMsg != (stdgo.Go.str())), stdgo.Go.toInterface(stdgo.Go.asInterface(_result._totalDuration)));
                                };
                                _w._coordinator._resultC.__send__(_result);
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
        };
    }
    @:keep
    static public function _cleanup( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker> = _w;
        var _mem = _w._memMu.__get__();
        if ((_mem == null || (_mem : Dynamic).__nil__)) {
            return (null : stdgo.Error);
        };
        if (_w._memMu != null) _w._memMu.__close__();
        return _mem.close();
    }
}
