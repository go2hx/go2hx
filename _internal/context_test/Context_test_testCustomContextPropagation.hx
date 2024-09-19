package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testCustomContextPropagation(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _cause = (stdgo._internal.errors.Errors_new_.new_(("TestCustomContextPropagation" : stdgo.GoString)) : stdgo.Error);
            var _donec = (new stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>(0, () -> ({  } : _internal.context_test.Context_test_T__struct_1.T__struct_1)) : stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>);
            var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx1:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel1:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
            var _ctx2 = (stdgo.Go.setRef(({ context : _ctx1, _donec : _donec } : _internal.context_test.Context_test_T_customDoneContext.T_customDoneContext)) : stdgo.Ref<_internal.context_test.Context_test_T_customDoneContext.T_customDoneContext>);
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo.Go.asInterface(_ctx2)), _ctx3:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel3:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _cancel3());
            _cancel1(_cause);
            if (_donec != null) _donec.__close__();
            _ctx3.done().__get__();
            {
                var __0 = (_ctx3.err() : stdgo.Error), __1 = (stdgo._internal.context.Context_canceled.canceled : stdgo.Error);
var _want = __1, _got = __0;
                if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(_want))) {
                    _t.errorf(("child not canceled; got = %v, want = %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            {
                var __0 = (stdgo._internal.context.Context_cause.cause(_ctx3) : stdgo.Error), __1 = (_cause : stdgo.Error);
var _want = __1, _got = __0;
                if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(_want))) {
                    _t.errorf(("child has wrong cause; got = %v, want = %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
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
