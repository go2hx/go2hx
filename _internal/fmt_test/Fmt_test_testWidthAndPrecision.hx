package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testWidthAndPrecision(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _tt in _internal.fmt_test.Fmt_test__startests._startests) {
            var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_tt._fmt?.__copy__(), ...(_tt._in : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
            if (_s != (_tt._out)) {
                _t.errorf(("#%d: %q: got %q expected %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._fmt), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
