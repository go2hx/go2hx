package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testNilDoesNotBecomeTyped(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var _a:stdgo.Ref<_internal.fmt_test.Fmt_test_T_testNilDoesNotBecomeTyped___localname___A_55372.T_testNilDoesNotBecomeTyped___localname___A_55372> = null;
        var _b:_internal.fmt_test.Fmt_test_T_testNilDoesNotBecomeTyped___localname___B_55389.T_testNilDoesNotBecomeTyped___localname___B_55389 = (new _internal.fmt_test.Fmt_test_T_testNilDoesNotBecomeTyped___localname___B_55389.T_testNilDoesNotBecomeTyped___localname___B_55389() : _internal.fmt_test.Fmt_test_T_testNilDoesNotBecomeTyped___localname___B_55389.T_testNilDoesNotBecomeTyped___localname___B_55389);
        var _got = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_internal.fmt_test.Fmt_test__hideFromVet._hideFromVet(("%s %s %s %s %s" : stdgo.GoString))?.__copy__(), (null : stdgo.AnyInterface), stdgo.Go.toInterface(_a), (null : stdgo.AnyInterface), stdgo.Go.toInterface(_b), (null : stdgo.AnyInterface))?.__copy__() : stdgo.GoString);
        {};
        if (_got != (("%!s(<nil>) %!s(*fmt_test.A=<nil>) %!s(<nil>) {} %!s(<nil>)" : stdgo.GoString))) {
            _t.errorf(("expected:\n\t%q\ngot:\n\t%q" : stdgo.GoString), stdgo.Go.toInterface(("%!s(<nil>) %!s(*fmt_test.A=<nil>) %!s(<nil>) {} %!s(<nil>)" : stdgo.GoString)), stdgo.Go.toInterface(_got));
        };
    }
