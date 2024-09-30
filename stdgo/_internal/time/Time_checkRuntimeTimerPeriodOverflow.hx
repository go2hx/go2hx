package stdgo._internal.time;
function checkRuntimeTimerPeriodOverflow():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _r = (stdgo.Go.setRef(({ _when : stdgo._internal.time.Time__runtimeNano._runtimeNano(), _period : (9223372036854775807i64 : stdgo.GoInt64), _f : stdgo._internal.time.Time__empty._empty, _arg : (null : stdgo.AnyInterface) } : stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer)) : stdgo.Ref<stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer>);
            stdgo._internal.time.Time__startTimer._startTimer(_r);
            {
                var _a0 = _r;
                __deferstack__.unshift(() -> stdgo._internal.time.Time__stopTimer._stopTimer(_a0));
            };
            stdgo._internal.time.Time_after.after((25000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
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
