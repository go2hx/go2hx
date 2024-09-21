package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testCustomContextAfterFuncCancel(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ctx0 = (stdgo.Go.setRef((new _internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext() : _internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext)) : stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext>);
            var __tmp__ = _internal.context_test.Context_test_context.context.withCancel(stdgo.Go.asInterface(_ctx0)), _ctx1:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _cancel());
            _ctx0._cancel(_internal.context_test.Context_test_context.context.canceled);
            _ctx1.done().__get__();
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
