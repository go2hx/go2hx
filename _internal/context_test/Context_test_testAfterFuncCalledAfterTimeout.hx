package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testAfterFuncCalledAfterTimeout(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(stdgo._internal.context.Context_background.background(), (1000000i64 : stdgo._internal.time.Time_Duration.Duration)), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _cancel());
            var _donec = (new stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>(0, () -> ({  } : _internal.context_test.Context_test_T__struct_1.T__struct_1)) : stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>);
            stdgo._internal.context.Context_afterFunc.afterFunc(_ctx, function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if (_donec != null) _donec.__close__();
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
                var __select__ = true;
                while (__select__) {
                    if (_donec != null && _donec.__isGet__()) {
                        __select__ = false;
                        {
                            _donec.__get__();
                            {};
                        };
                    } else if (stdgo._internal.time.Time_after.after((3600000000000000i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((3600000000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                        __select__ = false;
                        {
                            stdgo._internal.time.Time_after.after((3600000000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                            {
                                _t.fatalf(("AfterFunc not called after context is canceled" : stdgo.GoString));
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
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
