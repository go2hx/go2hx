package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testScanMultiple(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(("123abc" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_s))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n != ((2 : stdgo.GoInt))) {
            _t.errorf(("Sscan count error: expected 2: got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err != null) {
            _t.errorf(("Sscan expected no error; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (((_a != (123 : stdgo.GoInt)) || (_s != ("abc" : stdgo.GoString)) : Bool)) {
            _t.errorf(("Sscan wrong values: got (%d %q) expected (123 \"abc\")" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_s));
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(("asdf" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_s)), stdgo.Go.toInterface(stdgo.Go.pointer(_a)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((1 : stdgo.GoInt))) {
            _t.errorf(("Sscan count error: expected 1: got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err == null) {
            _t.errorf(("Sscan expected error; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_s != (("asdf" : stdgo.GoString))) {
            _t.errorf(("Sscan wrong values: got %q expected \"asdf\"" : stdgo.GoString), stdgo.Go.toInterface(_s));
        };
    }
