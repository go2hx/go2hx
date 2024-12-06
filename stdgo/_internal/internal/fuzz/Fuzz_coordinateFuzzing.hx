package stdgo._internal.internal.fuzz;
function coordinateFuzzing(_ctx:stdgo._internal.context.Context_Context.Context, _opts:stdgo._internal.internal.fuzz.Fuzz_CoordinateFuzzingOpts.CoordinateFuzzingOpts):stdgo.Error {
        var __deferstack__:Array<Void -> Void> = [];
        var _err = (null : stdgo.Error);
        try {
            {
                var _err = (_ctx.err() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            if (_opts.log == null) {
                _opts.log = stdgo._internal.io.Io_discard.discard;
            };
            if (_opts.parallel == ((0 : stdgo.GoInt))) {
                _opts.parallel = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt));
            };
            if (((_opts.limit > (0i64 : stdgo.GoInt64) : Bool) && ((_opts.parallel : stdgo.GoInt64) > _opts.limit : Bool) : Bool)) {
                _opts.parallel = (_opts.limit : stdgo.GoInt);
            };
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__newCoordinator._newCoordinator(_opts?.__copy__()), _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            if ((_opts.timeout > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                var _cancel:() -> Void = null;
                {
                    var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(_ctx, _opts.timeout);
                    _ctx = __tmp__._0;
                    _cancel = __tmp__._1;
                };
                __deferstack__.unshift(() -> _cancel());
            };
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_ctx), _fuzzCtx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancelWorkers:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _cancelWorkers());
            var _doneC = _ctx.done();
            var _fuzzErr:stdgo.Error = (null : stdgo.Error);
            var _stopping = (false : Bool);
            var _stop = (function(_err:stdgo.Error):Void {
                if (stdgo._internal.internal.fuzz.Fuzz__shouldPrintDebugInfo._shouldPrintDebugInfo()) {
                    var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((1 : stdgo.GoInt)), __8:stdgo.GoUIntptr = __tmp__._0, _file:stdgo.GoString = __tmp__._1, _line:stdgo.GoInt = __tmp__._2, _ok:Bool = __tmp__._3;
                    if (_ok) {
                        _c._debugLogf(("stop called at %s:%d. stopping: %t" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_stopping));
                    } else {
                        _c._debugLogf(("stop called at unknown. stopping: %t" : stdgo.GoString), stdgo.Go.toInterface(_stopping));
                    };
                };
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_fuzzCtx.err())) || stdgo._internal.internal.fuzz.Fuzz__isInterruptError._isInterruptError(_err) : Bool)) {
                    _err = (null : stdgo.Error);
                };
                if (((_err != null) && (((_fuzzErr == null) || (stdgo.Go.toInterface(_fuzzErr) == stdgo.Go.toInterface(_ctx.err())) : Bool)) : Bool)) {
                    _fuzzErr = _err;
                };
                if (_stopping) {
                    return;
                };
                _stopping = true;
                _cancelWorkers();
                _doneC = (null : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>);
            } : stdgo.Error -> Void);
            var _crashWritten = (false : Bool);
            __deferstack__.unshift(() -> ({
                var a = function():Void {
                    if (((_c._crashMinimizing == null || (_c._crashMinimizing : Dynamic).__nil__) || _crashWritten : Bool)) {
                        return;
                    };
                    var _werr = (stdgo._internal.internal.fuzz.Fuzz__writeToCorpus._writeToCorpus((stdgo.Go.setRef(_c._crashMinimizing._entry) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry>), _opts.corpusDir?.__copy__()) : stdgo.Error);
                    if (_werr != null) {
                        _err = stdgo._internal.fmt.Fmt_errorf.errorf(("%w\n%v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_werr));
                        return;
                    };
                    if (_err == null) {
                        _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ _path : _c._crashMinimizing._entry.path?.__copy__(), _err : stdgo._internal.errors.Errors_new_.new_(_c._crashMinimizing._crasherMsg?.__copy__()) } : stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError>));
                    };
                };
                a();
            }));
            var _dir = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
            var _binPath = (stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            var _args = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-test.fuzzworker" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...((stdgo._internal.os.Os_args.args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>) : Array<stdgo.GoString>)));
            var _env = stdgo._internal.os.Os_environ_.environ_();
            var _errC = (new stdgo.Chan<stdgo.Error>(0, () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
            var _workers = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>>((_opts.parallel : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>>);
            for (_i => _ in _workers) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__newWorker._newWorker(_c, _dir?.__copy__(), _binPath?.__copy__(), _args, _env);
                    _workers[(_i : stdgo.GoInt)] = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            for (_i => _ in _workers) {
                var _w = _workers[(_i : stdgo.GoInt)];
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        var _err = (_w._coordinate(_fuzzCtx) : stdgo.Error);
                        if (((_fuzzCtx.err() != null) || stdgo._internal.internal.fuzz.Fuzz__isInterruptError._isInterruptError(_err) : Bool)) {
                            _err = (null : stdgo.Error);
                        };
                        var _cleanErr = (_w._cleanup() : stdgo.Error);
                        if (_err == null) {
                            _err = _cleanErr;
                        };
                        _errC.__send__(_err);
                    };
                    a();
                }));
            };
            var _activeWorkers = (_workers.length : stdgo.GoInt);
            var _statTicker = stdgo._internal.time.Time_newTicker.newTicker((3000000000i64 : stdgo._internal.time.Time_Duration.Duration));
            __deferstack__.unshift(() -> _statTicker.stop());
            __deferstack__.unshift(() -> _c._logStats());
            _c._logStats();
            while (true) {
                if (((_c._opts.limit > (0i64 : stdgo.GoInt64) : Bool) && (_c._count >= _c._opts.limit : Bool) : Bool)) {
                    _stop((null : stdgo.Error));
                };
                var _inputC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput> = (null : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput>);
                var __tmp__ = _c._peekInput(), _input:stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput = __tmp__._0, _ok:Bool = __tmp__._1;
                if (((_ok && (_c._crashMinimizing == null || (_c._crashMinimizing : Dynamic).__nil__) : Bool) && !_stopping : Bool)) {
                    _inputC = _c._inputC;
                };
                var _minimizeC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput> = (null : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput>);
                var __tmp__ = _c._peekMinimizeInput(), _minimizeInput:stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && !_stopping : Bool)) {
                    _minimizeC = _c._minimizeC;
                };
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_doneC != null && _doneC.__isGet__()) {
                            __select__ = false;
                            {
                                _doneC.__get__();
                                {
                                    _stop(_ctx.err());
                                };
                            };
                        } else if (_errC != null && _errC.__isGet__()) {
                            __select__ = false;
                            {
                                var _err = _errC.__get__();
                                {
                                    _stop(_err);
                                    _activeWorkers--;
                                    if (_activeWorkers == ((0 : stdgo.GoInt))) {
                                        {
                                            final __ret__:stdgo.Error = _err = _fuzzErr;
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                            };
                        } else if (_c._resultC != null && _c._resultC.__isGet__()) {
                            __select__ = false;
                            {
                                var _result = _c._resultC.__get__();
                                {
                                    if (_stopping) {
                                        break;
                                    };
                                    _c._updateStats(_result?.__copy__());
                                    if (_result._crasherMsg != (stdgo.Go.str())) {
                                        if ((_c._warmupRun() && _result._entry.isSeed : Bool)) {
                                            var _target = (stdgo._internal.path.filepath.Filepath_base.base(_c._opts.corpusDir?.__copy__())?.__copy__() : stdgo.GoString);
                                            stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._opts.log, ("failure while testing seed corpus entry: %s/%s\n" : stdgo.GoString), stdgo.Go.toInterface(_target), stdgo.Go.toInterface(stdgo._internal.internal.fuzz.Fuzz__testName._testName(_result._entry.parent?.__copy__())));
                                            _stop(stdgo._internal.errors.Errors_new_.new_(_result._crasherMsg?.__copy__()));
                                            break;
                                        };
                                        if ((_c._canMinimize() && _result._canMinimize : Bool)) {
                                            if ((_c._crashMinimizing != null && ((_c._crashMinimizing : Dynamic).__nil__ == null || !(_c._crashMinimizing : Dynamic).__nil__))) {
                                                if (stdgo._internal.internal.fuzz.Fuzz__shouldPrintDebugInfo._shouldPrintDebugInfo()) {
                                                    _c._debugLogf(("found unminimized crasher, skipping in favor of minimizable crasher" : stdgo.GoString));
                                                };
                                                break;
                                            };
                                            _c._crashMinimizing = stdgo._internal.internal.fuzz.Fuzz__result__pointer__._result__pointer__;
                                            stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._opts.log, ("fuzz: minimizing %d-byte failing input file\n" : stdgo.GoString), stdgo.Go.toInterface((_result._entry.data.length)));
                                            _c._queueForMinimization(_result?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>));
                                        } else if (!_crashWritten) {
                                            var _err = (stdgo._internal.internal.fuzz.Fuzz__writeToCorpus._writeToCorpus((stdgo.Go.setRef(_result._entry) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry>), _opts.corpusDir?.__copy__()) : stdgo.Error);
                                            if (_err == null) {
                                                _crashWritten = true;
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ _path : _result._entry.path?.__copy__(), _err : stdgo._internal.errors.Errors_new_.new_(_result._crasherMsg?.__copy__()) } : stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError>));
                                            };
                                            if (stdgo._internal.internal.fuzz.Fuzz__shouldPrintDebugInfo._shouldPrintDebugInfo()) {
                                                _c._debugLogf(("found crasher, id: %s, parent: %s, gen: %d, size: %d, exec time: %s" : stdgo.GoString), stdgo.Go.toInterface(_result._entry.path), stdgo.Go.toInterface(_result._entry.parent), stdgo.Go.toInterface(_result._entry.generation), stdgo.Go.toInterface((_result._entry.data.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_result._entryDuration)));
                                            };
                                            _stop(_err);
                                        };
                                    } else if (_result._coverageData != null) {
                                        if (_c._warmupRun()) {
                                            if (stdgo._internal.internal.fuzz.Fuzz__shouldPrintDebugInfo._shouldPrintDebugInfo()) {
                                                _c._debugLogf(("processed an initial input, id: %s, new bits: %d, size: %d, exec time: %s" : stdgo.GoString), stdgo.Go.toInterface(_result._entry.parent), stdgo.Go.toInterface(stdgo._internal.internal.fuzz.Fuzz__countBits._countBits(stdgo._internal.internal.fuzz.Fuzz__diffCoverage._diffCoverage(_c._coverageMask, _result._coverageData))), stdgo.Go.toInterface((_result._entry.data.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_result._entryDuration)));
                                            };
                                            _c._updateCoverage(_result._coverageData);
                                            _c._warmupInputLeft--;
                                            if (_c._warmupInputLeft == ((0 : stdgo.GoInt))) {
                                                stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._opts.log, ("fuzz: elapsed: %s, gathering baseline coverage: %d/%d completed, now fuzzing with %d workers\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._elapsed())), stdgo.Go.toInterface(_c._warmupInputCount), stdgo.Go.toInterface(_c._warmupInputCount), stdgo.Go.toInterface(_c._opts.parallel));
                                                if (stdgo._internal.internal.fuzz.Fuzz__shouldPrintDebugInfo._shouldPrintDebugInfo()) {
                                                    _c._debugLogf(("finished processing input corpus, entries: %d, initial coverage bits: %d" : stdgo.GoString), stdgo.Go.toInterface((_c._corpus._entries.length)), stdgo.Go.toInterface(stdgo._internal.internal.fuzz.Fuzz__countBits._countBits(_c._coverageMask)));
                                                };
                                            };
                                        } else {
                                            var _keepCoverage = stdgo._internal.internal.fuzz.Fuzz__diffCoverage._diffCoverage(_c._coverageMask, _result._coverageData);
                                            if (_keepCoverage != null) {
                                                if (((_c._canMinimize() && _result._canMinimize : Bool) && (_c._crashMinimizing == null || (_c._crashMinimizing : Dynamic).__nil__) : Bool)) {
                                                    _c._queueForMinimization(_result?.__copy__(), _keepCoverage);
                                                } else {
                                                    var _inputSize = (_result._entry.data.length : stdgo.GoInt);
                                                    var __tmp__ = _c._addCorpusEntries(true, _result._entry?.__copy__()), _entryNew:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                    if (_err != null) {
                                                        _stop(_err);
                                                        break;
                                                    };
                                                    if (!_entryNew) {
                                                        if (stdgo._internal.internal.fuzz.Fuzz__shouldPrintDebugInfo._shouldPrintDebugInfo()) {
                                                            _c._debugLogf(("ignoring duplicate input which increased coverage, id: %s" : stdgo.GoString), stdgo.Go.toInterface(_result._entry.path));
                                                        };
                                                        break;
                                                    };
                                                    _c._updateCoverage(_keepCoverage);
                                                    _c._inputQueue._enqueue(stdgo.Go.toInterface(stdgo.Go.asInterface(_result._entry)));
                                                    _c._interestingCount++;
                                                    if (stdgo._internal.internal.fuzz.Fuzz__shouldPrintDebugInfo._shouldPrintDebugInfo()) {
                                                        _c._debugLogf(("new interesting input, id: %s, parent: %s, gen: %d, new bits: %d, total bits: %d, size: %d, exec time: %s" : stdgo.GoString), stdgo.Go.toInterface(_result._entry.path), stdgo.Go.toInterface(_result._entry.parent), stdgo.Go.toInterface(_result._entry.generation), stdgo.Go.toInterface(stdgo._internal.internal.fuzz.Fuzz__countBits._countBits(_keepCoverage)), stdgo.Go.toInterface(stdgo._internal.internal.fuzz.Fuzz__countBits._countBits(_c._coverageMask)), stdgo.Go.toInterface(_inputSize), stdgo.Go.toInterface(stdgo.Go.asInterface(_result._entryDuration)));
                                                    };
                                                };
                                            } else {
                                                if (stdgo._internal.internal.fuzz.Fuzz__shouldPrintDebugInfo._shouldPrintDebugInfo()) {
                                                    _c._debugLogf(("worker reported interesting input that doesn\'t expand coverage, id: %s, parent: %s, canMinimize: %t" : stdgo.GoString), stdgo.Go.toInterface(_result._entry.path), stdgo.Go.toInterface(_result._entry.parent), stdgo.Go.toInterface(_result._canMinimize));
                                                };
                                            };
                                        };
                                    } else if (_c._warmupRun()) {
                                        _c._warmupInputLeft--;
                                        if (_c._warmupInputLeft == ((0 : stdgo.GoInt))) {
                                            stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._opts.log, ("fuzz: elapsed: %s, testing seed corpus: %d/%d completed, now fuzzing with %d workers\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._elapsed())), stdgo.Go.toInterface(_c._warmupInputCount), stdgo.Go.toInterface(_c._warmupInputCount), stdgo.Go.toInterface(_c._opts.parallel));
                                            if (stdgo._internal.internal.fuzz.Fuzz__shouldPrintDebugInfo._shouldPrintDebugInfo()) {
                                                _c._debugLogf(("finished testing-only phase, entries: %d" : stdgo.GoString), stdgo.Go.toInterface((_c._corpus._entries.length)));
                                            };
                                        };
                                    };
                                };
                            };
                        } else if (_inputC != null && _inputC.__isSend__()) {
                            __select__ = false;
                            {
                                _inputC.__send__(_input);
                                {
                                    _c._sentInput(_input?.__copy__());
                                };
                            };
                        } else if (_minimizeC != null && _minimizeC.__isSend__()) {
                            __select__ = false;
                            {
                                _minimizeC.__send__(_minimizeInput);
                                {
                                    _c._sentMinimizeInput(_minimizeInput?.__copy__());
                                };
                            };
                        } else if (_statTicker.c != null && _statTicker.c.__isGet__()) {
                            __select__ = false;
                            {
                                _statTicker.c.__get__();
                                {
                                    _c._logStats();
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
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
