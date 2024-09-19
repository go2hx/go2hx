package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testInvalidDerivedFail(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _panicVal = (_internal.context_test.Context_test__recoveredValue._recoveredValue(function():Void {
            var __blank__ = stdgo._internal.context.Context_withCancel.withCancel((null : stdgo._internal.context.Context_Context.Context));
        }) : stdgo.AnyInterface);
        if (_panicVal == null) {
            _t.error(stdgo.Go.toInterface(("expected panic" : stdgo.GoString)));
        };
        _panicVal = _internal.context_test.Context_test__recoveredValue._recoveredValue(function():Void {
            var __blank__ = stdgo._internal.context.Context_withDeadline.withDeadline((null : stdgo._internal.context.Context_Context.Context), stdgo._internal.time.Time_now.now().add((1000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__());
        });
        if (_panicVal == null) {
            _t.error(stdgo.Go.toInterface(("expected panic" : stdgo.GoString)));
        };
        _panicVal = _internal.context_test.Context_test__recoveredValue._recoveredValue(function():Void {
            var __blank__ = stdgo._internal.context.Context_withValue.withValue((null : stdgo._internal.context.Context_Context.Context), stdgo.Go.toInterface(("foo" : stdgo.GoString)), stdgo.Go.toInterface(("bar" : stdgo.GoString)));
        });
        if (_panicVal == null) {
            _t.error(stdgo.Go.toInterface(("expected panic" : stdgo.GoString)));
        };
    }
