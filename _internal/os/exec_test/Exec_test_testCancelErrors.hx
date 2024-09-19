package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testCancelErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            _t.run(("success after error" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _t.parallel();
                    var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
                    __deferstack__.unshift(() -> _cancel());
                    var _cmd = _internal.os.exec_test.Exec_test__helperCommandContext._helperCommandContext(_t, _ctx, ("pipetest" : stdgo.GoString));
                    var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io_WriteCloser.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    var _errArbitrary = (stdgo._internal.errors.Errors_new_.new_(("arbitrary error" : stdgo.GoString)) : stdgo.Error);
                    _cmd.cancel = function():stdgo.Error {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _stdin.close();
                            _t.logf(("Cancel returning %v" : stdgo.GoString), stdgo.Go.toInterface(_errArbitrary));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return _errArbitrary;
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
                    };
                    {
                        var _err = (_cmd.start() : stdgo.Error);
                        if (_err != null) {
                            _t.fatal(stdgo.Go.toInterface(_err));
                        };
                    };
                    _cancel();
                    _err = _cmd.wait_();
                    _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
                    if ((!stdgo._internal.errors.Errors_is_.is_(_err, _errArbitrary) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_errArbitrary)) : Bool)) {
                        _t.errorf(("Wait error = %v; want an error wrapping %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_errArbitrary));
                    };
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
            });
            _t.run(("success after ErrProcessDone" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _t.parallel();
                    var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
                    __deferstack__.unshift(() -> _cancel());
                    var _cmd = _internal.os.exec_test.Exec_test__helperCommandContext._helperCommandContext(_t, _ctx, ("pipetest" : stdgo.GoString));
                    var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io_WriteCloser.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    var __tmp__ = _cmd.stdoutPipe(), _stdout:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    var _interruptCalled = (new stdgo.Chan<_internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader>(0, () -> ({} : _internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader)) : stdgo.Chan<_internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader>);
                    var _done = (new stdgo.Chan<_internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader>(0, () -> ({} : _internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader)) : stdgo.Chan<_internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader>);
                    _cmd.cancel = function():stdgo.Error {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            if (_interruptCalled != null) _interruptCalled.__close__();
                            _done.__get__();
                            _t.logf(("Cancel returning an error wrapping ErrProcessDone" : stdgo.GoString));
                            {
                                final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("%w: stdout closed" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os_errProcessDone.errProcessDone));
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
                    };
                    {
                        var _err = (_cmd.start() : stdgo.Error);
                        if (_err != null) {
                            _t.fatal(stdgo.Go.toInterface(_err));
                        };
                    };
                    _cancel();
                    _interruptCalled.__get__();
                    _stdin.close();
                    stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, _stdout);
                    if (_done != null) _done.__close__();
                    _err = _cmd.wait_();
                    _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
                    if (_err != null) {
                        _t.errorf(("Wait error = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
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
            });
            _t.run(("killed after error" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _t.parallel();
                    var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
                    __deferstack__.unshift(() -> _cancel());
                    var _cmd = _internal.os.exec_test.Exec_test__helperCommandContext._helperCommandContext(_t, _ctx, ("pipetest" : stdgo.GoString));
                    var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io_WriteCloser.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    __deferstack__.unshift(() -> _stdin.close());
                    var _errArbitrary = (stdgo._internal.errors.Errors_new_.new_(("arbitrary error" : stdgo.GoString)) : stdgo.Error);
                    var _interruptCalled:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_);
                    _cmd.cancel = function():stdgo.Error {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _t.logf(("Cancel called" : stdgo.GoString));
                            _interruptCalled.store(true);
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return _errArbitrary;
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
                    };
                    _cmd.waitDelay = (1000000i64 : stdgo._internal.time.Time_Duration.Duration);
                    {
                        var _err = (_cmd.start() : stdgo.Error);
                        if (_err != null) {
                            _t.fatal(stdgo.Go.toInterface(_err));
                        };
                    };
                    _cancel();
                    _err = _cmd.wait_();
                    _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
                    if (!_interruptCalled.load()) {
                        _t.errorf(("Cancel was not called when the context was canceled" : stdgo.GoString));
                    };
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : false };
                        }, _ee = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            _t.errorf(("Wait error = %v; want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface((_ee : stdgo._internal.os.exec.Exec_ExitError.ExitError))));
                        };
                    };
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
            });
            _t.run(("killed after spurious ErrProcessDone" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _t.parallel();
                    var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
                    __deferstack__.unshift(() -> _cancel());
                    var _cmd = _internal.os.exec_test.Exec_test__helperCommandContext._helperCommandContext(_t, _ctx, ("pipetest" : stdgo.GoString));
                    var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io_WriteCloser.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    __deferstack__.unshift(() -> _stdin.close());
                    var _interruptCalled:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_);
                    _cmd.cancel = function():stdgo.Error {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _t.logf(("Cancel returning an error wrapping ErrProcessDone" : stdgo.GoString));
                            _interruptCalled.store(true);
                            {
                                final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("%w: stdout closed" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os_errProcessDone.errProcessDone));
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
                    };
                    _cmd.waitDelay = (1000000i64 : stdgo._internal.time.Time_Duration.Duration);
                    {
                        var _err = (_cmd.start() : stdgo.Error);
                        if (_err != null) {
                            _t.fatal(stdgo.Go.toInterface(_err));
                        };
                    };
                    _cancel();
                    _err = _cmd.wait_();
                    _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
                    if (!_interruptCalled.load()) {
                        _t.errorf(("Cancel was not called when the context was canceled" : stdgo.GoString));
                    };
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : false };
                        }, _ee = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            _t.errorf(("Wait error of type %T; want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_ee)));
                        };
                    };
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
            });
            _t.run(("nonzero exit after error" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _t.parallel();
                    var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
                    __deferstack__.unshift(() -> _cancel());
                    var _cmd = _internal.os.exec_test.Exec_test__helperCommandContext._helperCommandContext(_t, _ctx, ("stderrfail" : stdgo.GoString));
                    var __tmp__ = _cmd.stderrPipe(), _stderr:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    var _errArbitrary = (stdgo._internal.errors.Errors_new_.new_(("arbitrary error" : stdgo.GoString)) : stdgo.Error);
                    var _interrupted = (new stdgo.Chan<_internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader>(0, () -> ({} : _internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader)) : stdgo.Chan<_internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader>);
                    _cmd.cancel = function():stdgo.Error {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            if (_interrupted != null) _interrupted.__close__();
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return _errArbitrary;
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
                    };
                    {
                        var _err = (_cmd.start() : stdgo.Error);
                        if (_err != null) {
                            _t.fatal(stdgo.Go.toInterface(_err));
                        };
                    };
                    _cancel();
                    _interrupted.__get__();
                    stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, _stderr);
                    _err = _cmd.wait_();
                    _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : false };
                        }, _ee = __tmp__._0, _ok = __tmp__._1;
                        if ((!_ok || (_ee.processState.exitCode() != (1 : stdgo.GoInt)) : Bool)) {
                            _t.errorf(("Wait error = %v; want exit status 1" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    };
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
            });
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
