package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testStdinCloseRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("stdinClose" : stdgo.GoString));
            var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io_WriteCloser.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("StdinPipe: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _err = (_cmd.start() : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("Start: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            _wg.add((2 : stdgo.GoInt));
            __deferstack__.unshift(() -> _wg.wait_());
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        _cmd.process.kill();
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
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        stdgo._internal.io.Io_copy.copy(_stdin, stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("unexpected string" : stdgo.GoString))));
                        {
                            var _err = (_stdin.close() : stdgo.Error);
                            if (((_err != null) && !stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.Os_errClosed.errClosed) : Bool)) {
                                _t.errorf(("stdin.Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
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
            {
                var _err = (_cmd.wait_() : stdgo.Error);
                if (_err == null) {
                    _t.fatalf(("Wait: succeeded unexpectedly" : stdgo.GoString));
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
    }
