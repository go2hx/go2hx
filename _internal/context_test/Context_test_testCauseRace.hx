package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testCauseRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _cause = (stdgo._internal.errors.Errors_new_.new_(("TestCauseRace" : stdgo.GoString)) : stdgo.Error);
        var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _cancel(_cause);
            };
            a();
        });
        while (true) {
            {
                var _err = (stdgo._internal.context.Context_cause.cause(_ctx) : stdgo.Error);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_cause))) {
                        _t.errorf(("Cause returned %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_cause));
                    };
                    break;
                };
            };
            stdgo._internal.runtime.Runtime_gosched.gosched();
        };
    }
