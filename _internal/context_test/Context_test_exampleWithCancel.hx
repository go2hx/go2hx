package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function exampleWithCancel():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _gen = function(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Chan<stdgo.GoInt> {
                var _dst = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                var _n = (1 : stdgo.GoInt);
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        while (true) {
                            {
                                var __select__ = true;
                                while (__select__) {
                                    if (_ctx.done() != null && _ctx.done().__isGet__()) {
                                        __select__ = false;
                                        {
                                            _ctx.done().__get__();
                                            {
                                                return;
                                            };
                                        };
                                    } else if (_dst != null && _dst.__isSend__()) {
                                        __select__ = false;
                                        {
                                            _dst.__send__(_n);
                                            {
                                                _n++;
                                            };
                                        };
                                    };
                                    #if !js Sys.sleep(0.01) #else null #end;
                                    stdgo._internal.internal.Async.tick();
                                };
                            };
                        };
                    };
                    a();
                });
                return _dst;
            };
            var __tmp__ = _internal.context_test.Context_test_context.context.withCancel(_internal.context_test.Context_test_context.context.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _cancel());
            for (_n => _ in _gen(_ctx)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_n));
                if (_n == ((5 : stdgo.GoInt))) {
                    break;
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
