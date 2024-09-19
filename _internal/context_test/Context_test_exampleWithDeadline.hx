package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function exampleWithDeadline():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _d = (stdgo._internal.time.Time_now.now().add((1000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var __tmp__ = _internal.context_test.Context_test_context.context.withDeadline(_internal.context_test.Context_test_context.context.background(), _d?.__copy__()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _cancel());
            {
                var __select__ = true;
                while (__select__) {
                    if (_internal.context_test.Context_test__neverReady._neverReady != null && _internal.context_test.Context_test__neverReady._neverReady.__isGet__()) {
                        __select__ = false;
                        {
                            _internal.context_test.Context_test__neverReady._neverReady.__get__();
                            {
                                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("ready" : stdgo.GoString)));
                            };
                        };
                    } else if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_ctx.err()));
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
