package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testReorder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.fmt_test.Fmt_test__reorderTests._reorderTests) {
            var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_tt._fmt?.__copy__(), ...(_tt._val : Array<_internal.fmt_test.Fmt_test_SE.SE>))?.__copy__() : stdgo.GoString);
            if (_s != (_tt._out)) {
                _t.errorf(("Sprintf(%q, %v) = <%s> want <%s>" : stdgo.GoString), stdgo.Go.toInterface(_tt._fmt), stdgo.Go.toInterface(_tt._val), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
            } else {};
        };
    }
