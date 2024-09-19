package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testCustomContextAfterFuncUnregisterAfterFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ctx0 = (stdgo.Go.setRef((new _internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext() : _internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext)) : stdgo.Ref<_internal.context_test.Context_test_T_afterFuncContext.T_afterFuncContext>);
        var _stop = (_internal.context_test.Context_test_context.context.afterFunc(stdgo.Go.asInterface(_ctx0), function():Void {}) : () -> Bool);
        {
            var __0 = (_ctx0._afterFuncs.length : stdgo.GoInt), __1 = (1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("after AfterFunc(ctx0, f): ctx0 has %v afterFuncs, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        _stop();
        {
            var __0 = (_ctx0._afterFuncs.length : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("after stopping AfterFunc(ctx0, f): ctx0 has %v afterFuncs, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
