package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testCustomContextAfterFuncAfterFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ctx0 = (stdgo.Go.setRef((new _internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext() : _internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext)) : stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext>);
            var _donec = (new stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>(0, () -> ({  } : _internal.context_test.Context_test_T__struct_1.T__struct_1)) : stdgo.Chan<_internal.context_test.Context_test_T__struct_1.T__struct_1>);
            var _stop = (_internal.context_test.Context_test_context.context.afterFunc(stdgo.Go.asInterface(_ctx0), function():Void {
                if (_donec != null) _donec.__close__();
            }) : () -> Bool);
            __deferstack__.unshift(() -> _stop());
            _ctx0._cancel(_internal.context_test.Context_test_context.context.canceled);
            _donec.__get__();
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
