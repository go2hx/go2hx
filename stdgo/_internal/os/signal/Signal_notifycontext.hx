package stdgo._internal.os.signal;
function notifyContext(_parent:stdgo._internal.context.Context_context.Context, _signals:haxe.Rest<stdgo._internal.os.Os_signal.Signal>):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } {
        var _signals = new stdgo.Slice<stdgo._internal.os.Os_signal.Signal>(_signals.length, 0, ..._signals);
        var _ctx = (null : stdgo._internal.context.Context_context.Context), _stop = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
        var __tmp__ = stdgo._internal.os.signal.Signal_context.context.withCancel(_parent), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        var _c = (stdgo.Go.setRef(({ context : _ctx, _cancel : _cancel, _signals : _signals } : stdgo._internal.os.signal.Signal_t_signalctx.T_signalCtx)) : stdgo.Ref<stdgo._internal.os.signal.Signal_t_signalctx.T_signalCtx>);
        (@:checkr _c ?? throw "null pointer dereference")._ch = (new stdgo.Chan<stdgo._internal.os.Os_signal.Signal>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo._internal.os.Os_signal.Signal)) : stdgo.Chan<stdgo._internal.os.Os_signal.Signal>);
        stdgo._internal.os.signal.Signal_notify.notify((@:checkr _c ?? throw "null pointer dereference")._ch, ...((@:checkr _c ?? throw "null pointer dereference")._signals : Array<stdgo._internal.os.Os_signal.Signal>));
        if (_ctx.err() == null) {
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if ((@:checkr _c ?? throw "null pointer dereference")._ch != null && (@:checkr _c ?? throw "null pointer dereference")._ch.__isGet__()) {
                                __select__ = false;
                                {
                                    (@:checkr _c ?? throw "null pointer dereference")._ch.__get__();
                                    {
                                        (@:checkr _c ?? throw "null pointer dereference")._cancel();
                                    };
                                };
                            } else if ((@:checkr _c ?? throw "null pointer dereference").done() != null && (@:checkr _c ?? throw "null pointer dereference").done().__isGet__()) {
                                __select__ = false;
                                {
                                    (@:checkr _c ?? throw "null pointer dereference").done().__get__();
                                    {};
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                };
                a();
            }));
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } = { _0 : stdgo.Go.asInterface(_c), _1 : @:check2r _c._stop };
            _ctx = __tmp__._0;
            _stop = __tmp__._1;
            __tmp__;
        };
    }
