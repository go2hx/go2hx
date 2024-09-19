package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testContextCancel(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                _internal.os.exec_test.Exec_test__maySkipHelperCommand._maySkipHelperCommand(("cat" : stdgo.GoString));
                stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (42061 : stdgo.GoInt));
            };
            _t.parallel();
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _cancel());
            var _c = _internal.os.exec_test.Exec_test__helperCommandContext._helperCommandContext(_t, _ctx, ("cat" : stdgo.GoString));
            var __tmp__ = _c.stdinPipe(), _stdin:stdgo._internal.io.Io_WriteCloser.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _stdin.close());
            {
                var _err = (_c.start() : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_stdin, ("echo" : stdgo.GoString)), __20:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _cancel();
            var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _delay = (1000000i64 : stdgo._internal.time.Time_Duration.Duration);
            while (true) {
                {
                    var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_stdin, ("echo" : stdgo.GoString)), __21:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        break;
                    };
                };
                if ((stdgo._internal.time.Time_since.since(_start?.__copy__()) > (60000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                    stdgo._internal.runtime.debug.Debug_setTraceback.setTraceback(("system" : stdgo.GoString));
                    throw stdgo.Go.toInterface(("canceling context did not stop program" : stdgo.GoString));
                };
                _delay = (_delay * ((2i64 : stdgo._internal.time.Time_Duration.Duration)) : stdgo._internal.time.Time_Duration.Duration);
                if ((_delay > (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                    _delay = (1000000000i64 : stdgo._internal.time.Time_Duration.Duration);
                };
                stdgo._internal.time.Time_sleep.sleep(_delay);
            };
            {
                var _err = (_c.wait_() : stdgo.Error);
                if (_err == null) {
                    _t.error(stdgo.Go.toInterface(("program unexpectedly exited successfully" : stdgo.GoString)));
                } else {
                    _t.logf(("exit status: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
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
