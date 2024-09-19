package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testCanceledTimeout(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(stdgo._internal.context.Context_background.background(), (1000000000i64 : stdgo._internal.time.Time_Duration.Duration)), _c:stdgo._internal.context.Context_Context.Context = __tmp__._0, __0:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
        var _o = (new _internal.context_test.Context_test_T_otherContext.T_otherContext(_c) : _internal.context_test.Context_test_T_otherContext.T_otherContext);
        var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(stdgo.Go.asInterface(_o), (3600000000000000i64 : stdgo._internal.time.Time_Duration.Duration)), _c:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
        _cancel();
        {
            var __select__ = true;
            while (__select__) {
                if (_c.done() != null && _c.done().__isGet__()) {
                    __select__ = false;
                    {
                        _c.done().__get__();
                        {};
                    };
                } else {
                    __select__ = false;
                    {
                        _t.errorf(("<-c.Done() blocked, but shouldn\'t have" : stdgo.GoString));
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        {
            var _e = (_c.err() : stdgo.Error);
            if (stdgo.Go.toInterface(_e) != (stdgo.Go.toInterface(stdgo._internal.context.Context_canceled.canceled))) {
                _t.errorf(("c.Err() == %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(stdgo._internal.context.Context_canceled.canceled));
            };
        };
    }
