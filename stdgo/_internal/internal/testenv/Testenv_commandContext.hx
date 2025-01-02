package stdgo._internal.internal.testenv;
function commandContext(_t:stdgo._internal.testing.Testing_TB.TB, _ctx:stdgo._internal.context.Context_Context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd> {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        _t.helper();
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(_t);
        var __0:stdgo._internal.context.Context_CancelFunc.CancelFunc = (null : stdgo._internal.context.Context_CancelFunc.CancelFunc), __1:stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
var _gracePeriod = __1, _cancelCtx = __0;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo._internal.internal.testenv.Testenv_T__interface_0.T__interface_0)) : stdgo._internal.internal.testenv.Testenv_T__interface_0.T__interface_0), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.internal.testenv.Testenv_T__interface_0.T__interface_0), _1 : false };
            }, _t = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = _t.deadline(), _td:stdgo._internal.time.Time_Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _gracePeriod = (100000000i64 : stdgo._internal.time.Time_Duration.Duration);
                        {
                            var _s = (stdgo._internal.os.Os_getenv.getenv(("GO_TEST_TIMEOUT_SCALE" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                            if (_s != (stdgo.Go.str())) {
                                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_s?.__copy__()), _scale:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.fatalf(("invalid GO_TEST_TIMEOUT_SCALE: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                };
                                _gracePeriod = (_gracePeriod * ((_scale : stdgo._internal.time.Time_Duration.Duration)) : stdgo._internal.time.Time_Duration.Duration);
                            };
                        };
                        var _testTimeout = (stdgo._internal.time.Time_until.until(_td?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
                        {
                            var _gp = (_testTimeout / (20i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
                            if ((_gp > _gracePeriod : Bool)) {
                                _gracePeriod = _gp;
                            };
                        };
                        var _cmdTimeout = (_testTimeout - ((2i64 : stdgo._internal.time.Time_Duration.Duration) * _gracePeriod : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
                        {
                            var __tmp__ = _ctx.deadline(), _cd:stdgo._internal.time.Time_Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                            if ((!_ok || (stdgo._internal.time.Time_until.until(_cd?.__copy__()) > _cmdTimeout : Bool) : Bool)) {
                                {
                                    var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(_ctx, _cmdTimeout);
                                    _ctx = __tmp__._0;
                                    _cancelCtx = __tmp__._1;
                                };
                            };
                        };
                    };
                };
            };
        };
        var _cmd = stdgo._internal.os.exec.Exec_commandContext.commandContext(_ctx, _name?.__copy__(), ...(_args : Array<stdgo.GoString>));
        (@:checkr _cmd ?? throw "null pointer dereference").cancel = function():stdgo.Error {
            if (((_cancelCtx != null) && (stdgo.Go.toInterface(_ctx.err()) == stdgo.Go.toInterface(stdgo._internal.context.Context_deadlineExceeded.deadlineExceeded)) : Bool)) {
                _t.errorf(("test timed out while running command: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
            } else {
                _t.logf(("%v: terminating command: %v" : stdgo.GoString), stdgo.Go.toInterface(_ctx.err()), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
            };
            return @:check2r (@:checkr _cmd ?? throw "null pointer dereference").process.signal(stdgo._internal.internal.testenv.Testenv_sigquit.sigquit);
        };
        (@:checkr _cmd ?? throw "null pointer dereference").waitDelay = _gracePeriod;
        _t.cleanup(function():Void {
            if (_cancelCtx != null) {
                _cancelCtx();
            };
            if ((((@:checkr _cmd ?? throw "null pointer dereference").process != null && (((@:checkr _cmd ?? throw "null pointer dereference").process : Dynamic).__nil__ == null || !((@:checkr _cmd ?? throw "null pointer dereference").process : Dynamic).__nil__)) && ((@:checkr _cmd ?? throw "null pointer dereference").processState == null || ((@:checkr _cmd ?? throw "null pointer dereference").processState : Dynamic).__nil__) : Bool)) {
                _t.errorf(("command was started, but test did not wait for it to complete: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
            };
        });
        return _cmd;
    }
