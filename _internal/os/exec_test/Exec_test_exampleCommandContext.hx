package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function exampleCommandContext():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(stdgo._internal.context.Context_background.background(), (100000000i64 : stdgo._internal.time.Time_Duration.Duration)), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _cancel());
            {
                var _err = (stdgo._internal.os.exec.Exec_commandContext.commandContext(_ctx, ("sleep" : stdgo.GoString), ("5" : stdgo.GoString)).run() : stdgo.Error);
                if (_err != null) {};
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
