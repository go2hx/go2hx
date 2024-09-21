package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testEchoFileRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("echo" : stdgo.GoString));
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
            var _wrote = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _a0 = _wrote;
                            __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
                        };
                        stdgo._internal.fmt.Fmt_fprint.fprint(_stdin, stdgo.Go.toInterface(("echo\n" : stdgo.GoString)));
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
                if (_err != null) {
                    _t.fatalf(("Wait: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            _wrote.__get__();
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
