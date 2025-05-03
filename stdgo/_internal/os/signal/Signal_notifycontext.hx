package stdgo._internal.os.signal;
function notifyContext(_parent:stdgo._internal.context.Context_context.Context, _signals:haxe.Rest<stdgo._internal.os.Os_signal.Signal>):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } {
        var _signals = new stdgo.Slice<stdgo._internal.os.Os_signal.Signal>(_signals.length, 0, ..._signals);
        var _ctx = (null : stdgo._internal.context.Context_context.Context), _stop = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_parent), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        var _c = (stdgo.Go.setRef(({ context : _ctx, _cancel : _cancel, _signals : _signals } : stdgo._internal.os.signal.Signal_t_signalctx.T_signalCtx)) : stdgo.Ref<stdgo._internal.os.signal.Signal_t_signalctx.T_signalCtx>);
        (@:checkr _c ?? throw "null pointer dereference")._ch = (new stdgo.Chan<stdgo._internal.os.Os_signal.Signal>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo._internal.os.Os_signal.Signal)) : stdgo.Chan<stdgo._internal.os.Os_signal.Signal>);
        //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L285"
        stdgo._internal.os.signal.Signal_notify.notify((@:checkr _c ?? throw "null pointer dereference")._ch, ...((@:checkr _c ?? throw "null pointer dereference")._signals : Array<stdgo._internal.os.Os_signal.Signal>));
        //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L286"
        if (_ctx.err() == null) {
            //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L287"
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L288"
                    {
                        var __select__ = true;
                        var __c__0 = null;
var __c__1 = null;
                        while (__select__) {
                            if ({
                                if (__c__0 == null) {
                                    __c__0 = (@:checkr _c ?? throw "null pointer dereference")._ch;
                                };
                                __c__0 != null && __c__0.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__0.__get__();
                                    {
                                        //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L290"
                                        (@:checkr _c ?? throw "null pointer dereference")._cancel();
                                    };
                                };
                            } else if ({
                                if (__c__1 == null) {
                                    __c__1 = (@:checkr _c ?? throw "null pointer dereference").done();
                                };
                                __c__1 != null && __c__1.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__1.__get__();
                                    {};
                                };
                            };
                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                        __c__0.__reset__();
__c__1.__reset__();
                    };
                };
                a();
            }));
        };
        //"file:///home/runner/.go/go1.21.3/src/os/signal/signal.go#L295"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } = { _0 : stdgo.Go.asInterface(_c), _1 : _c._stop };
            _ctx = __tmp__._0;
            _stop = __tmp__._1;
            __tmp__;
        };
    }
