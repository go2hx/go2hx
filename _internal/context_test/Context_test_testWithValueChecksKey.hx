package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testWithValueChecksKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _panicVal = (_internal.context_test.Context_test__recoveredValue._recoveredValue(function():Void {
            var __blank__ = stdgo._internal.context.Context_withValue.withValue(stdgo._internal.context.Context_background.background(), stdgo.Go.toInterface((("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(("bar" : stdgo.GoString)));
        }) : stdgo.AnyInterface);
        if (_panicVal == null) {
            _t.error(stdgo.Go.toInterface(("expected panic" : stdgo.GoString)));
        };
        _panicVal = _internal.context_test.Context_test__recoveredValue._recoveredValue(function():Void {
            var __blank__ = stdgo._internal.context.Context_withValue.withValue(stdgo._internal.context.Context_background.background(), (null : stdgo.AnyInterface), stdgo.Go.toInterface(("bar" : stdgo.GoString)));
        });
        {
            var __0 = (stdgo._internal.fmt.Fmt_sprint.sprint(_panicVal)?.__copy__() : stdgo.GoString), __1 = ("nil key" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("panic = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
