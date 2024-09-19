package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testFormatterFlags(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__3 => _tt in _internal.fmt_test.Fmt_test__formatterFlagTests._formatterFlagTests) {
            var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_tt._in?.__copy__(), _tt._val)?.__copy__() : stdgo.GoString);
            if (_s != (_tt._out)) {
                _t.errorf(("Sprintf(%q, %T) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), _tt._val, stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
