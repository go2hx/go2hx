package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testWaitInterrupt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        {};
        _t.run(("Wait" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            _t.parallel();
            var _cmd = _internal.os.exec_test.Exec_test__startHang._startHang(_t, stdgo._internal.context.Context_background.background(), (1000000i64 : stdgo._internal.time.Time_Duration.Duration), stdgo._internal.os.Os_kill.kill, (0i64 : stdgo._internal.time.Time_Duration.Duration));
            var _err = (_cmd.wait_() : stdgo.Error);
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            if (_err != null) {
                _t.errorf(("Wait: %v; want <nil>" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _ps = _cmd.processState;
                if (!_ps.exited()) {
                    _t.errorf(("cmd did not exit: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ps)));
                } else {
                    var _code = (_ps.exitCode() : stdgo.GoInt);
                    if (_code != ((0 : stdgo.GoInt))) {
                        _t.errorf(("cmd.ProcessState.ExitCode() = %v; want 0" : stdgo.GoString), stdgo.Go.toInterface(_code));
                    };
                };
            };
        });
        _t.run(("WaitDelay" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            if (false) {
                _t.skipf(("skipping: os.Interrupt is not implemented on Windows" : stdgo.GoString));
            };
            _t.parallel();
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            var _cmd = _internal.os.exec_test.Exec_test__startHang._startHang(_t, _ctx, (600000000000i64 : stdgo._internal.time.Time_Duration.Duration), (null : stdgo._internal.os.Os_Signal.Signal), (600000000000i64 : stdgo._internal.time.Time_Duration.Duration), ("-interrupt=true" : stdgo.GoString));
            _cancel();
            stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
            {
                var _err = (_cmd.process.signal(stdgo._internal.os.Os_interrupt.interrupt) : stdgo.Error);
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
            var _err = (_cmd.wait_() : stdgo.Error);
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            if (_err != null) {
                _t.errorf(("Wait: %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _ps = _cmd.processState;
                if (!_ps.exited()) {
                    _t.errorf(("cmd did not exit: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ps)));
                } else {
                    var _code = (_ps.exitCode() : stdgo.GoInt);
                    if (_code != ((0 : stdgo.GoInt))) {
                        _t.errorf(("cmd.ProcessState.ExitCode() = %v; want 0" : stdgo.GoString), stdgo.Go.toInterface(_code));
                    };
                };
            };
        });
        _t.run(("SIGKILL-hang" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            _t.parallel();
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            var _cmd = _internal.os.exec_test.Exec_test__startHang._startHang(_t, _ctx, (600000000000i64 : stdgo._internal.time.Time_Duration.Duration), stdgo._internal.os.Os_kill.kill, (10000000i64 : stdgo._internal.time.Time_Duration.Duration), ("-subsleep=10m" : stdgo.GoString), ("-probe=1ms" : stdgo.GoString));
            _cancel();
            var _err = (_cmd.wait_() : stdgo.Error);
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            {
                var _ee = (stdgo.Go.setRef((null : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>)) : stdgo.Ref<stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>>);
                if (!stdgo._internal.errors.Errors_as.as(_err, stdgo.Go.toInterface(_ee))) {
                    _t.errorf(("Wait error = %v; want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface((_ee : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>))));
                };
            };
        });
        _t.run(("Exit-hang" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            _t.parallel();
            var _cmd = _internal.os.exec_test.Exec_test__startHang._startHang(_t, stdgo._internal.context.Context_background.background(), (1000000i64 : stdgo._internal.time.Time_Duration.Duration), (null : stdgo._internal.os.Os_Signal.Signal), (10000000i64 : stdgo._internal.time.Time_Duration.Duration), ("-subsleep=10m" : stdgo.GoString), ("-probe=1ms" : stdgo.GoString));
            var _err = (_cmd.wait_() : stdgo.Error);
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            if (!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.exec.Exec_errWaitDelay.errWaitDelay)) {
                _t.errorf(("Wait error = %v; want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo._internal.os.exec.Exec_errWaitDelay.errWaitDelay));
            };
        });
        _t.run(("SIGINT-ignored" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            if (false) {
                _t.skipf(("skipping: os.Interrupt is not implemented on Windows" : stdgo.GoString));
            };
            _t.parallel();
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            var _cmd = _internal.os.exec_test.Exec_test__startHang._startHang(_t, _ctx, (600000000000i64 : stdgo._internal.time.Time_Duration.Duration), stdgo._internal.os.Os_interrupt.interrupt, (10000000i64 : stdgo._internal.time.Time_Duration.Duration), ("-interrupt=false" : stdgo.GoString));
            _cancel();
            var _err = (_cmd.wait_() : stdgo.Error);
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            {
                var _ee = (stdgo.Go.setRef((null : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>)) : stdgo.Ref<stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>>);
                if (!stdgo._internal.errors.Errors_as.as(_err, stdgo.Go.toInterface(_ee))) {
                    _t.errorf(("Wait error = %v; want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface((_ee : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>))));
                };
            };
        });
        _t.run(("SIGINT-handled" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            if (false) {
                _t.skipf(("skipping: os.Interrupt is not implemented on Windows" : stdgo.GoString));
            };
            _t.parallel();
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            var _cmd = _internal.os.exec_test.Exec_test__startHang._startHang(_t, _ctx, (600000000000i64 : stdgo._internal.time.Time_Duration.Duration), stdgo._internal.os.Os_interrupt.interrupt, (0i64 : stdgo._internal.time.Time_Duration.Duration), ("-interrupt=true" : stdgo.GoString));
            _cancel();
            var _err = (_cmd.wait_() : stdgo.Error);
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            if (!stdgo._internal.errors.Errors_is_.is_(_err, _ctx.err())) {
                _t.errorf(("Wait error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_ctx.err()));
            };
            {
                var _ps = _cmd.processState;
                if (!_ps.exited()) {
                    _t.errorf(("cmd did not exit: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ps)));
                } else {
                    var _code = (_ps.exitCode() : stdgo.GoInt);
                    if (_code != ((0 : stdgo.GoInt))) {
                        _t.errorf(("cmd.ProcessState.ExitCode() = %v; want 0" : stdgo.GoString), stdgo.Go.toInterface(_code));
                    };
                };
            };
        });
        _t.run(("SIGQUIT" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            if (_internal.os.exec_test.Exec_test__quitSignal._quitSignal == null) {
                _t.skipf(("skipping: SIGQUIT is not supported on %v" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
            _t.parallel();
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            var _cmd = _internal.os.exec_test.Exec_test__startHang._startHang(_t, _ctx, (600000000000i64 : stdgo._internal.time.Time_Duration.Duration), _internal.os.exec_test.Exec_test__quitSignal._quitSignal, (0i64 : stdgo._internal.time.Time_Duration.Duration));
            _cancel();
            var _err = (_cmd.wait_() : stdgo.Error);
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            {
                var _ee = (stdgo.Go.setRef((null : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>)) : stdgo.Ref<stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>>);
                if (!stdgo._internal.errors.Errors_as.as(_err, stdgo.Go.toInterface(_ee))) {
                    _t.errorf(("Wait error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_ctx.err()));
                };
            };
            {
                var _ps = _cmd.processState;
                if (!_ps.exited()) {
                    _t.errorf(("cmd did not exit: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ps)));
                } else {
                    var _code = (_ps.exitCode() : stdgo.GoInt);
                    if (_code != ((2 : stdgo.GoInt))) {
                        _t.errorf(("cmd.ProcessState.ExitCode() = %v; want 2" : stdgo.GoString), stdgo.Go.toInterface(_code));
                    };
                };
            };
            if (!stdgo._internal.strings.Strings_contains.contains(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_cmd.stderr))?.__copy__(), ("\n\ngoroutine " : stdgo.GoString))) {
                _t.errorf(("cmd.Stderr does not contain a goroutine dump" : stdgo.GoString));
            };
        });
    }
