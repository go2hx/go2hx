package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function benchmarkCheckCanceled(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
        _cancel();
        _b.run(("Err" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _ctx.err();
                });
            };
        });
        _b.run(("Done" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_ctx.done() != null && _ctx.done().__isGet__()) {
                                __select__ = false;
                                {
                                    _ctx.done().__get__();
                                    {};
                                };
                            } else {
                                __select__ = false;
                                {};
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                });
            };
        });
    }
