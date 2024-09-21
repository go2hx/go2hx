package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testWithCancelSimultaneouslyCanceledParent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                var __tmp__ = stdgo._internal.context.Context_withCancelCause.withCancelCause(stdgo._internal.context.Context_background.background()), _parent:stdgo._internal.context.Context_Context.Context = __tmp__._0, _pcancel:stdgo._internal.context.Context_CancelCauseFunc.CancelCauseFunc = __tmp__._1;
                var _cause = (stdgo._internal.fmt.Fmt_errorf.errorf(("Because!" : stdgo.GoString)) : stdgo.Error);
                stdgo.Go.routine(() -> _pcancel(_cause));
                var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_parent), _c:stdgo._internal.context.Context_Context.Context = __tmp__._0, __0:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
                _c.done().__get__();
                {
                    var __0 = (_c.err() : stdgo.Error), __1 = (stdgo._internal.context.Context_canceled.canceled : stdgo.Error);
var _want = __1, _got = __0;
                    if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(_want))) {
                        _t.errorf(("child not canceled; got = %v, want = %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
                {
                    var __0 = (stdgo._internal.context.Context_cause.cause(_c) : stdgo.Error), __1 = (_cause : stdgo.Error);
var _want = __1, _got = __0;
                    if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(_want))) {
                        _t.errorf(("child has wrong cause; got = %v, want = %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            });
        };
    }
