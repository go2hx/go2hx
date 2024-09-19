package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testWithoutCancel(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0 = ("key" : stdgo.GoString), __1 = ("value" : stdgo.GoString);
var _value = __1, _key = __0;
        var _ctx = (stdgo._internal.context.Context_withValue.withValue(stdgo._internal.context.Context_background.background(), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_value)) : stdgo._internal.context.Context_Context.Context);
        _ctx = stdgo._internal.context.Context_withoutCancel.withoutCancel(_ctx);
        {
            var __tmp__ = _ctx.deadline(), _d:stdgo._internal.time.Time_Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((!_d.isZero() || (_ok != false) : Bool)) {
                _t.errorf(("ctx.Deadline() = %v, %v want zero, false" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(_ok));
            };
        };
        {
            var _done = _ctx.done();
            if (_done != null) {
                _t.errorf(("ctx.Deadline() = %v want nil" : stdgo.GoString), stdgo.Go.toInterface(_done));
            };
        };
        {
            var _err = (_ctx.err() : stdgo.Error);
            if (_err != null) {
                _t.errorf(("ctx.Err() = %v want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _v = (_ctx.value(stdgo.Go.toInterface(_key)) : stdgo.AnyInterface);
            if (_v != (stdgo.Go.toInterface(_value))) {
                _t.errorf(("ctx.Value(%q) = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_key), _v, stdgo.Go.toInterface(_value));
            };
        };
    }
