package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testDeadlineExceededIsNetError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_internal.context_test.Context_test_context.context.deadlineExceeded) : stdgo._internal.net.Net_Error.Error)) : stdgo._internal.net.Net_Error.Error), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.net.Net_Error.Error), _1 : false };
        }, _err = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.fatal(stdgo.Go.toInterface(("DeadlineExceeded does not implement net.Error" : stdgo.GoString)));
        };
        if ((!_err.timeout() || !_err.temporary() : Bool)) {
            _t.fatalf(("Timeout() = %v, Temporary() = %v, want true, true" : stdgo.GoString), stdgo.Go.toInterface(_err.timeout()), stdgo.Go.toInterface(_err.temporary()));
        };
    }
