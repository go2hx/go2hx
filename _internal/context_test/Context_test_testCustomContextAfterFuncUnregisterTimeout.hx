package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testCustomContextAfterFuncUnregisterTimeout(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ctx0 = (stdgo.Go.setRef((new _internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext() : _internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext)) : stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext>);
        var __tmp__ = _internal.context_test.Context_test_context.context.withTimeout(stdgo.Go.asInterface(_ctx0), (3600000000000000i64 : stdgo._internal.time.Time_Duration.Duration)), __0:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
        {
            var __0 = (_ctx0._afterFuncs.length : stdgo.GoInt), __1 = (1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("after WithTimeout(ctx0, d): ctx0 has %v afterFuncs, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        _cancel();
        {
            var __0 = (_ctx0._afterFuncs.length : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("after canceling WithTimeout(ctx0, d): ctx0 has %v afterFuncs, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
