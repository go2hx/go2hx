package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testBadVerbRecursion(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _failed = (false : Bool);
        var _r = (stdgo.Go.setRef((new _internal.fmt_test.Fmt_test_Recur.Recur((3 : stdgo.GoInt), stdgo.Go.pointer(_failed)) : _internal.fmt_test.Fmt_test_Recur.Recur)) : stdgo.Ref<_internal.fmt_test.Fmt_test_Recur.Recur>);
        var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(("recur@%p value: %d\n" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo.Ref<_internal.fmt_test.Fmt_test_Recur.Recur>>)), stdgo.Go.toInterface(_r._i));
        if (_failed) {
            _t.error(stdgo.Go.toInterface(("fail with pointer" : stdgo.GoString)));
        };
        _failed = false;
        _r = (stdgo.Go.setRef((new _internal.fmt_test.Fmt_test_Recur.Recur((4 : stdgo.GoInt), stdgo.Go.pointer(_failed)) : _internal.fmt_test.Fmt_test_Recur.Recur)) : stdgo.Ref<_internal.fmt_test.Fmt_test_Recur.Recur>);
        var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(("recur@%p, value: %d\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_r._i));
        if (_failed) {
            _t.error(stdgo.Go.toInterface(("fail with value" : stdgo.GoString)));
        };
    }
