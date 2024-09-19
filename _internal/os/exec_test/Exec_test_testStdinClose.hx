package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testStdinClose(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _check = (function(_what:stdgo.GoString, _err:stdgo.Error):Void {
                if (_err != null) {
                    _t.fatalf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_what), stdgo.Go.toInterface(_err));
                };
            } : (stdgo.GoString, stdgo.Error) -> Void);
            var _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("stdinClose" : stdgo.GoString));
            var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io_WriteCloser.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _check(("StdinPipe" : stdgo.GoString), _err);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_stdin) : _internal.os.exec_test.Exec_test_T__interface_0.T__interface_0)) : _internal.os.exec_test.Exec_test_T__interface_0.T__interface_0), _1 : true };
                } catch(_) {
                    { _0 : (null : _internal.os.exec_test.Exec_test_T__interface_0.T__interface_0), _1 : false };
                }, __14 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.error(stdgo.Go.toInterface(("can\'t access methods of underlying *os.File" : stdgo.GoString)));
                };
            };
            _check(("Start" : stdgo.GoString), _cmd.start());
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            _wg.add((1 : stdgo.GoInt));
            __deferstack__.unshift(() -> _wg.wait_());
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        var __tmp__ = stdgo._internal.io.Io_copy.copy(_stdin, stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("Some test string." : stdgo.GoString)))), __33:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        _check(("Copy" : stdgo.GoString), _err);
                        {
                            var _err = (_stdin.close() : stdgo.Error);
                            if (((_err != null) && !stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.Os_errClosed.errClosed) : Bool)) {
                                _t.errorf(("Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
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
                };
                a();
            });
            _check(("Wait" : stdgo.GoString), _cmd.wait_());
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
