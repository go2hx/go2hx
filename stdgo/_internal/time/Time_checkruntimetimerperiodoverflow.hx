package stdgo._internal.time;
function checkRuntimeTimerPeriodOverflow():Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _r = (stdgo.Go.setRef(({ _when : stdgo._internal.time.Time__runtimenano._runtimeNano(), _period : (9223372036854775807i64 : stdgo.GoInt64), _f : stdgo._internal.time.Time__empty._empty, _arg : (null : stdgo.AnyInterface) } : stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer)) : stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>);
            stdgo._internal.time.Time__starttimer._startTimer(_r);
            {
                var _a0 = _r;
                final __f__ = stdgo._internal.time.Time__stoptimer._stopTimer;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            stdgo._internal.time.Time_after.after((25000000i64 : stdgo._internal.time.Time_duration.Duration)).__get__();
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
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                return;
            };
        };
    }
