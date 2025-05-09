package stdgo._internal.internal.testenv;
function commandContext(_t:stdgo._internal.testing.Testing_tb.TB, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L131"
        _t.helper();
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L132"
        stdgo._internal.internal.testenv.Testenv_musthaveexec.mustHaveExec(_t);
        var _cancelCtx:stdgo._internal.context.Context_cancelfunc.CancelFunc = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc), _gracePeriod:stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L139"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo._internal.internal.testenv.Testenv_t__interface_0.T__interface_0)) : stdgo._internal.internal.testenv.Testenv_t__interface_0.T__interface_0), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.internal.testenv.Testenv_t__interface_0.T__interface_0), _1 : false };
            }, _t = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L143"
                {
                    var __tmp__ = _t.deadline(), _td:stdgo._internal.time.Time_time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _gracePeriod = (100000000i64 : stdgo._internal.time.Time_duration.Duration);
                        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L147"
                        {
                            var _s = (stdgo._internal.os.Os_getenv.getenv(("GO_TEST_TIMEOUT_SCALE" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                            if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
                                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_s?.__copy__()), _scale:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L149"
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L150"
                                    _t.fatalf(("invalid GO_TEST_TIMEOUT_SCALE: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                };
                                _gracePeriod = (_gracePeriod * ((_scale : stdgo._internal.time.Time_duration.Duration)) : stdgo._internal.time.Time_duration.Duration);
                            };
                        };
                        var _testTimeout = (stdgo._internal.time.Time_until.until(_td?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
                        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L158"
                        {
                            var _gp = (_testTimeout / (20i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
                            if ((_gp > _gracePeriod : Bool)) {
                                _gracePeriod = _gp;
                            };
                        };
                        var _cmdTimeout = (_testTimeout - ((2i64 : stdgo._internal.time.Time_duration.Duration) * _gracePeriod : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
                        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L173"
                        {
                            var __tmp__ = _ctx.deadline(), _cd:stdgo._internal.time.Time_time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                            if ((!_ok || (stdgo._internal.time.Time_until.until(_cd?.__copy__()) > _cmdTimeout : Bool) : Bool)) {
                                {
                                    var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_ctx, _cmdTimeout);
                                    _ctx = @:tmpset0 __tmp__._0;
                                    _cancelCtx = @:tmpset0 __tmp__._1;
                                };
                            };
                        };
                    };
                };
            };
        };
        var _cmd = stdgo._internal.os.exec.Exec_commandcontext.commandContext(_ctx, _name?.__copy__(), ...(_args : Array<stdgo.GoString>));
        (@:checkr _cmd ?? throw "null pointer dereference").cancel = function():stdgo.Error {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L184"
            if (((_cancelCtx != null) && (stdgo.Go.toInterface(_ctx.err()) == stdgo.Go.toInterface(stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L190"
                _t.errorf(("test timed out while running command: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L196"
                _t.logf(("%v: terminating command: %v" : stdgo.GoString), stdgo.Go.toInterface(_ctx.err()), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L198"
            return (@:checkr _cmd ?? throw "null pointer dereference").process.signal(stdgo._internal.internal.testenv.Testenv_sigquit.sigquit);
        };
        (@:checkr _cmd ?? throw "null pointer dereference").waitDelay = _gracePeriod;
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L202"
        _t.cleanup(function():Void {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L203"
            if (_cancelCtx != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L204"
                _cancelCtx();
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L206"
            if ((({
                final value = (@:checkr _cmd ?? throw "null pointer dereference").process;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ({
                final value = (@:checkr _cmd ?? throw "null pointer dereference").processState;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L207"
                _t.errorf(("command was started, but test did not wait for it to complete: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L211"
        return _cmd;
    }
