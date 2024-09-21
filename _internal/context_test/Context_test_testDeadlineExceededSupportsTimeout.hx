package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testDeadlineExceededSupportsTimeout(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.context.Context_deadlineExceeded.deadlineExceeded) : _internal.context_test.Context_test_T__interface_0.T__interface_0)) : _internal.context_test.Context_test_T__interface_0.T__interface_0), _1 : true };
        } catch(_) {
            { _0 : (null : _internal.context_test.Context_test_T__interface_0.T__interface_0), _1 : false };
        }, _i = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.fatal(stdgo.Go.toInterface(("DeadlineExceeded does not support Timeout interface" : stdgo.GoString)));
        };
        if (!_i.timeout()) {
            _t.fatal(stdgo.Go.toInterface(("wrong value for timeout" : stdgo.GoString)));
        };
    }
