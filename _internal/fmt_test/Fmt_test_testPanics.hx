package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testPanics" + " skip function");
        return;
        for (_i => _tt in _internal.fmt_test.Fmt_test__panictests._panictests) {
            var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_tt._fmt?.__copy__(), _tt._in)?.__copy__() : stdgo.GoString);
            if (_s != (_tt._out)) {
                _t.errorf(("%d: %q: got %q expected %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._fmt), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
