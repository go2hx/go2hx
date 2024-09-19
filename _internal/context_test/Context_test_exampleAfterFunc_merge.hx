package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function exampleAfterFunc_merge():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _mergeCancel = (function(_ctx:stdgo._internal.context.Context_Context.Context, _cancelCtx:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo._internal.context.Context_Context.Context; var _1 : stdgo._internal.context.Context_CancelFunc.CancelFunc; } {
                var __tmp__ = _internal.context_test.Context_test_context.context.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
                var _stop = (_internal.context_test.Context_test_context.context.afterFunc(_cancelCtx, function():Void {
                    _cancel(_internal.context_test.Context_test_context.context.cause(_cancelCtx));
                }) : () -> Bool);
                return { _0 : _ctx, _1 : function():Void {
                    _stop();
                    _cancel(_internal.context_test.Context_test_context.context.canceled);
                } };
            } : (stdgo._internal.context.Context_Context.Context, stdgo._internal.context.Context_Context.Context) -> { var _0 : stdgo._internal.context.Context_Context.Context; var _1 : stdgo._internal.context.Context_CancelFunc.CancelFunc; });
            var __tmp__ = _internal.context_test.Context_test_context.context.withCancelCause(_internal.context_test.Context_test_context.context.background()), _ctx1:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel1:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            {
                var _a0 = stdgo._internal.errors.Errors_new_.new_(("ctx1 canceled" : stdgo.GoString));
                __deferstack__.unshift(() -> _cancel1(_a0));
            };
            var __tmp__ = _internal.context_test.Context_test_context.context.withCancelCause(_internal.context_test.Context_test_context.context.background()), _ctx2:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel2:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = _mergeCancel(_ctx1, _ctx2), _mergedCtx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _mergedCancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _mergedCancel());
            _cancel2(stdgo._internal.errors.Errors_new_.new_(("ctx2 canceled" : stdgo.GoString)));
            _mergedCtx.done().__get__();
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_internal.context_test.Context_test_context.context.cause(_mergedCtx)));
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
