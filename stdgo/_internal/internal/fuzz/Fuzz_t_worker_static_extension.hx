package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_worker_asInterface) class T_worker_static_extension {
    @:keep
    @:tdfield
    static public function _stop( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L404"
        if ((@:checkr _w ?? throw "null pointer dereference")._termC == null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L405"
            throw stdgo.Go.toInterface(("worker was not started successfully" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L407"
        {
            var __select__ = true;
            var __c__0 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = (@:checkr _w ?? throw "null pointer dereference")._termC;
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {
                            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L410"
                            if (({
                                final value = (@:checkr _w ?? throw "null pointer dereference")._client;
                                (value == null || (value : Dynamic).__nil__);
                            })) {
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L412"
                                return (@:checkr _w ?? throw "null pointer dereference")._waitErr;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L415"
                            (@:checkr _w ?? throw "null pointer dereference")._client.close();
                            (@:checkr _w ?? throw "null pointer dereference")._cmd = null;
                            (@:checkr _w ?? throw "null pointer dereference")._client = null;
                            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L418"
                            return (@:checkr _w ?? throw "null pointer dereference")._waitErr;
                        };
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
        };
        var _closeC = (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L426"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L427"
                (@:checkr _w ?? throw "null pointer dereference")._client.close();
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L428"
                if (_closeC != null) _closeC.__close__();
            };
            a();
        }));
        var _sig = (stdgo._internal.os.Os_interrupt.interrupt : stdgo._internal.os.Os_signal.Signal);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L432"
        if (false) {
            _sig = stdgo._internal.os.Os_kill.kill;
        };
        var _t = stdgo._internal.time.Time_newtimer.newTimer((1000000000i64 : stdgo._internal.time.Time_duration.Duration));
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L440"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L441"
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = (@:checkr _w ?? throw "null pointer dereference")._termC;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L444"
                                _t.stop();
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L445"
                                _closeC.__get__();
                                (@:checkr _w ?? throw "null pointer dereference")._cmd = null;
                                (@:checkr _w ?? throw "null pointer dereference")._client = null;
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L448"
                                return (@:checkr _w ?? throw "null pointer dereference")._waitErr;
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr _t ?? throw "null pointer dereference").c;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                (@:checkr _w ?? throw "null pointer dereference")._interrupted = true;
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L453"
                                {
                                    final __value__ = _sig;
                                    if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.os.Os_interrupt.interrupt))) {
                                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L456"
                                        (@:checkr (@:checkr _w ?? throw "null pointer dereference")._cmd ?? throw "null pointer dereference").process.signal(_sig);
                                        _sig = stdgo._internal.os.Os_kill.kill;
                                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L458"
                                        _t.reset((1000000000i64 : stdgo._internal.time.Time_duration.Duration));
                                    } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.os.Os_kill.kill))) {
                                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L462"
                                        (@:checkr (@:checkr _w ?? throw "null pointer dereference")._cmd ?? throw "null pointer dereference").process.signal(_sig);
                                        _sig = (null : stdgo._internal.os.Os_signal.Signal);
                                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L464"
                                        _t.reset((1000000000i64 : stdgo._internal.time.Time_duration.Duration));
                                    } else if (__value__ == null) {
                                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L468"
                                        stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr (@:checkr _w ?? throw "null pointer dereference")._coordinator ?? throw "null pointer dereference")._opts.log, ("waiting for fuzzing process to terminate...\n" : stdgo.GoString));
                                    };
                                };
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _start( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L338"
            if (_w._isRunning()) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L339"
                throw stdgo.Go.toInterface(("worker already started" : stdgo.GoString));
            };
            (@:checkr _w ?? throw "null pointer dereference")._waitErr = (null : stdgo.Error);
            (@:checkr _w ?? throw "null pointer dereference")._interrupted = false;
            (@:checkr _w ?? throw "null pointer dereference")._termC = (null : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>);
            var _cmd = stdgo._internal.os.exec.Exec_command.command((@:checkr _w ?? throw "null pointer dereference")._binPath?.__copy__(), ...((@:checkr _w ?? throw "null pointer dereference")._args : Array<stdgo.GoString>));
            (@:checkr _cmd ?? throw "null pointer dereference").dir = (@:checkr _w ?? throw "null pointer dereference")._dir?.__copy__();
            (@:checkr _cmd ?? throw "null pointer dereference").env = ((@:checkr _w ?? throw "null pointer dereference")._env.__slice__(0, ((@:checkr _w ?? throw "null pointer dereference")._env.length), ((@:checkr _w ?? throw "null pointer dereference")._env.length)) : stdgo.Slice<stdgo.GoString>);
            var __tmp__ = stdgo._internal.os.Os_pipe.pipe(), _fuzzInR:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _fuzzInW:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L358"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L359"
                return _err;
            };
            {
                final __f__ = _fuzzInR.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = stdgo._internal.os.Os_pipe.pipe(), _fuzzOutR:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _fuzzOutW:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L363"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L364"
                _fuzzInW.close();
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L365"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            {
                final __f__ = _fuzzOutW.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L368"
            stdgo._internal.internal.fuzz.Fuzz__setworkercomm._setWorkerComm(_cmd, ({ _fuzzIn : _fuzzInR, _fuzzOut : _fuzzOutW, _memMu : (@:checkr _w ?? throw "null pointer dereference")._memMu } : stdgo._internal.internal.fuzz.Fuzz_t_workercomm.T_workerComm));
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L371"
            {
                var _err = (_cmd.start() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L372"
                    _fuzzInW.close();
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L373"
                    _fuzzOutR.close();
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L374"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            (@:checkr _w ?? throw "null pointer dereference")._cmd = _cmd;
            (@:checkr _w ?? throw "null pointer dereference")._termC = (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>);
            var _comm = ({ _fuzzIn : _fuzzInW, _fuzzOut : _fuzzOutR, _memMu : (@:checkr _w ?? throw "null pointer dereference")._memMu } : stdgo._internal.internal.fuzz.Fuzz_t_workercomm.T_workerComm);
            var _m = stdgo._internal.internal.fuzz.Fuzz__newmutator._newMutator();
            (@:checkr _w ?? throw "null pointer dereference")._client = stdgo._internal.internal.fuzz.Fuzz__newworkerclient._newWorkerClient(_comm?.__copy__(), _m);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L386"
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    (@:checkr _w ?? throw "null pointer dereference")._waitErr = (@:checkr _w ?? throw "null pointer dereference")._cmd.wait_();
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L388"
                    if ((@:checkr _w ?? throw "null pointer dereference")._termC != null) (@:checkr _w ?? throw "null pointer dereference")._termC.__close__();
                };
                a();
            }));
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L391"
            {
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
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
                return _err;
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
                return _err;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _startAndPing( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L306"
        if (_ctx.err() != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L307"
            return _ctx.err();
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L309"
        {
            var _err = (_w._start() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L310"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L312"
        {
            var _err = ((@:checkr _w ?? throw "null pointer dereference")._client._ping(_ctx) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L313"
                _w._stop();
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L314"
                if (_ctx.err() != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L315"
                    return _ctx.err();
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L317"
                if (stdgo._internal.internal.fuzz.Fuzz__isinterrupterror._isInterruptError(_err)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L319"
                    return _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L322"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("fuzzing process terminated without fuzzing: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L324"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _isRunning( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L294"
        return ({
            final value = (@:checkr _w ?? throw "null pointer dereference")._cmd;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        });
    }
    @:keep
    @:tdfield
    static public function _minimize( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>, _ctx:stdgo._internal.context.Context_context.Context, _input:stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _min = ({} : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult), _err = (null : stdgo.Error);
        try {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L239"
            if ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._coordinator ?? throw "null pointer dereference")._opts.minimizeTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                var _cancel:() -> Void = null;
                {
                    var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_ctx, (@:checkr (@:checkr _w ?? throw "null pointer dereference")._coordinator ?? throw "null pointer dereference")._opts.minimizeTimeout);
                    _ctx = @:tmpset0 __tmp__._0;
                    _cancel = @:tmpset0 __tmp__._1;
                };
                {
                    final __f__ = _cancel;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            var _args = ({ limit : _input._limit, timeout : _input._timeout, keepCoverage : _input._keepCoverage } : stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs);
            var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._client._minimize(_ctx, _input._entry?.__copy__(), _args?.__copy__()), _entry:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry = __tmp__._0, _resp:stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L251"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L253"
                _w._stop();
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L254"
                if (((_ctx.err() != null || (@:checkr _w ?? throw "null pointer dereference")._interrupted : Bool) || stdgo._internal.internal.fuzz.Fuzz__isinterrupterror._isInterruptError((@:checkr _w ?? throw "null pointer dereference")._waitErr) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L260"
                    {
                        final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult; var _1 : stdgo.Error; } = { _0 : ({ _entry : _input._entry?.__copy__(), _crasherMsg : _input._crasherMsg?.__copy__(), _coverageData : _input._keepCoverage, _canMinimize : false, _limit : _input._limit } : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult), _1 : (null : stdgo.Error) };
                            _min = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _min = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L268"
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult; var _1 : stdgo.Error; } = { _0 : ({ _entry : _entry?.__copy__(), _crasherMsg : stdgo._internal.fmt.Fmt_sprintf.sprintf(("fuzzing process hung or terminated unexpectedly while minimizing: %v" : stdgo.GoString), stdgo.Go.toInterface(_err))?.__copy__(), _canMinimize : false, _limit : _input._limit, _count : _resp.count, _totalDuration : _resp.duration } : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult), _1 : (null : stdgo.Error) };
                        _min = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _min = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L278"
            if (((_input._crasherMsg != (stdgo.Go.str() : stdgo.GoString)) && (_resp.err == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L279"
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult; var _1 : stdgo.Error; } = { _0 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("attempted to minimize a crash but could not reproduce" : stdgo.GoString)) };
                        _min = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _min = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L282"
            {
                final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult; var _1 : stdgo.Error; } = { _0 : ({ _entry : _entry?.__copy__(), _crasherMsg : _resp.err?.__copy__(), _coverageData : _resp.coverageData, _canMinimize : false, _limit : _input._limit, _count : _resp.count, _totalDuration : _resp.duration } : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult), _1 : (null : stdgo.Error) };
                    _min = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _min = __ret__._0;
                _err = __ret__._1;
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
                return { _0 : _min, _1 : _err };
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
                return { _0 : _min, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _coordinate( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker> = _w;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L102"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L104"
            if (!_w._isRunning()) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L105"
                {
                    var _err = (_w._startAndPing(_ctx) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L106"
                        return _err;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L110"
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
var __c__3 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _ctx.done();
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                var _err = (_w._stop() : stdgo.Error);
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L114"
                                if (((_err != null && !(@:checkr _w ?? throw "null pointer dereference")._interrupted : Bool) && !stdgo._internal.internal.fuzz.Fuzz__isinterrupterror._isInterruptError(_err) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L115"
                                    return _err;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L117"
                                return _ctx.err();
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr _w ?? throw "null pointer dereference")._termC;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                var _err = (_w._stop() : stdgo.Error);
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L122"
                                if ((@:checkr _w ?? throw "null pointer dereference")._interrupted) {
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L123"
                                    throw stdgo.Go.toInterface(("worker interrupted after unexpected termination" : stdgo.GoString));
                                };
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L125"
                                if (((_err == null) || stdgo._internal.internal.fuzz.Fuzz__isinterrupterror._isInterruptError(_err) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L136"
                                    return (null : stdgo.Error);
                                };
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L138"
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec_exiterror.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec_exiterror.ExitError>), _1 : true };
                                    } catch(_) {
                                        { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec_exiterror.ExitError>), _1 : false };
                                    }, _exitErr = __tmp__._0, _ok = __tmp__._1;
                                    if ((_ok && (_exitErr.exitCode() == (70 : stdgo.GoInt)) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L141"
                                        return stdgo._internal.fmt.Fmt_errorf.errorf(("fuzzing process exited unexpectedly due to an internal failure: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L145"
                                return stdgo._internal.fmt.Fmt_errorf.errorf(("fuzzing process hung or terminated unexpectedly: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        };
                    } else if ({
                        if (__c__2 == null) {
                            __c__2 = (@:checkr (@:checkr _w ?? throw "null pointer dereference")._coordinator ?? throw "null pointer dereference")._inputC;
                        };
                        __c__2 != null && __c__2.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _input = __c__2.__get__();
                            {
                                var _args = ({ limit : _input._limit, timeout : _input._timeout, warmup : _input._warmup, coverageData : _input._coverageData } : stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs);
                                var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._client._fuzz(_ctx, _input._entry?.__copy__(), _args?.__copy__()), _entry:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry = __tmp__._0, _resp:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse = __tmp__._1, _isInternalError:Bool = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                                var _canMinimize = (true : Bool);
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L158"
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L160"
                                    _w._stop();
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L161"
                                    if (_ctx.err() != null) {
                                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L163"
                                        return _ctx.err();
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L165"
                                    if ((@:checkr _w ?? throw "null pointer dereference")._interrupted) {
                                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L168"
                                        return stdgo._internal.fmt.Fmt_errorf.errorf(("communicating with fuzzing process: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L170"
                                    {
                                        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__terminationsignal._terminationSignal((@:checkr _w ?? throw "null pointer dereference")._waitErr), _sig:stdgo._internal.os.Os_signal.Signal = __tmp__._0, _ok:Bool = __tmp__._1;
                                        if ((_ok && !stdgo._internal.internal.fuzz.Fuzz__iscrashsignal._isCrashSignal(_sig) : Bool)) {
                                            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L176"
                                            return stdgo._internal.fmt.Fmt_errorf.errorf(("fuzzing process terminated by unexpected signal; no crash will be recorded: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._waitErr));
                                        };
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L178"
                                    if (_isInternalError) {
                                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L181"
                                        return _err;
                                    };
                                    _resp.err = stdgo._internal.fmt.Fmt_sprintf.sprintf(("fuzzing process hung or terminated unexpectedly: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._waitErr))?.__copy__();
                                    _canMinimize = false;
                                };
                                var _result = ({ _limit : _input._limit, _count : _resp.count, _totalDuration : _resp.totalDuration, _entryDuration : _resp.interestingDuration, _entry : _entry?.__copy__(), _crasherMsg : _resp.err?.__copy__(), _coverageData : _resp.coverageData, _canMinimize : _canMinimize } : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult);
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L199"
                                (@:checkr (@:checkr _w ?? throw "null pointer dereference")._coordinator ?? throw "null pointer dereference")._resultC.__send__(_result?.__copy__());
                            };
                        };
                    } else if ({
                        if (__c__3 == null) {
                            __c__3 = (@:checkr (@:checkr _w ?? throw "null pointer dereference")._coordinator ?? throw "null pointer dereference")._minimizeC;
                        };
                        __c__3 != null && __c__3.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _input = __c__3.__get__();
                            {
                                var __tmp__ = _w._minimize(_ctx, _input?.__copy__()), _result:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L204"
                                if (_err != null) {
                                    _result = ({ _entry : _input._entry?.__copy__(), _crasherMsg : _input._crasherMsg?.__copy__(), _canMinimize : false, _limit : _input._limit } : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult);
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L215"
                                    if (_result._crasherMsg == ((stdgo.Go.str() : stdgo.GoString))) {
                                        _result._crasherMsg = _err.error()?.__copy__();
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L219"
                                if (stdgo._internal.internal.fuzz.Fuzz__shouldprintdebuginfo._shouldPrintDebugInfo()) {
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L220"
                                    (@:checkr _w ?? throw "null pointer dereference")._coordinator._debugLogf(("input minimized, id: %s, original id: %s, crasher: %t, originally crasher: %t, minimizing took: %s" : stdgo.GoString), stdgo.Go.toInterface(_result._entry.path), stdgo.Go.toInterface(_input._entry.path), stdgo.Go.toInterface(_result._crasherMsg != ((stdgo.Go.str() : stdgo.GoString))), stdgo.Go.toInterface(_input._crasherMsg != ((stdgo.Go.str() : stdgo.GoString))), stdgo.Go.toInterface(stdgo.Go.asInterface(_result._totalDuration)));
                                };
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L229"
                                (@:checkr (@:checkr _w ?? throw "null pointer dereference")._coordinator ?? throw "null pointer dereference")._resultC.__send__(_result?.__copy__());
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
__c__2.__reset__();
__c__3.__reset__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _cleanup( _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker> = _w;
        var _mem = (@:checkr _w ?? throw "null pointer dereference")._memMu.__get__();
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L83"
        if (({
            final value = _mem;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L84"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L86"
        if ((@:checkr _w ?? throw "null pointer dereference")._memMu != null) (@:checkr _w ?? throw "null pointer dereference")._memMu.__close__();
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L87"
        return _mem.close();
    }
}
