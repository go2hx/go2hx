package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testAfterFuncNotCalledAfterStop(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
        var _donec = (new stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>(0, () -> ({  } : _internal.context_test.Context_test_T__struct_1.T__struct_1)) : stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>);
        var _stop = (stdgo._internal.context.Context_afterFunc.afterFunc(_ctx, function():Void {
            if (_donec != null) _donec.__close__();
        }) : () -> Bool);
        if (!_stop()) {
            _t.fatalf(("stop() = false, want true" : stdgo.GoString));
        };
        _cancel();
        {
            var __select__ = true;
            while (__select__) {
                if (_donec != null && _donec.__isGet__()) {
                    __select__ = false;
                    {
                        _donec.__get__();
                        {
                            _t.fatalf(("AfterFunc called for already-canceled context" : stdgo.GoString));
                        };
                    };
                } else if (stdgo._internal.time.Time_after.after((1000000i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((1000000i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time_after.after((1000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                        {};
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        if (_stop()) {
            _t.fatalf(("stop() = true, want false" : stdgo.GoString));
        };
    }
