package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testScanEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _s2 = __1, _s1 = __0;
        var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(("abc" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_s1)), stdgo.Go.toInterface(stdgo.Go.pointer(_s2))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n != ((1 : stdgo.GoInt))) {
            _t.errorf(("Sscan count error: expected 1: got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("Sscan <one item> expected error; got none" : stdgo.GoString)));
        };
        if (_s1 != (("abc" : stdgo.GoString))) {
            _t.errorf(("Sscan wrong values: got %q expected \"abc\"" : stdgo.GoString), stdgo.Go.toInterface(_s1));
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer(_s1)), stdgo.Go.toInterface(stdgo.Go.pointer(_s2)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _t.errorf(("Sscan count error: expected 0: got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("Sscan <empty> expected error; got none" : stdgo.GoString)));
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("\"\"" : stdgo.GoString), ("%q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_s1)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((1 : stdgo.GoInt))) {
            _t.errorf(("Sscanf count error: expected 1: got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err != null) {
            _t.errorf(("Sscanf <empty> expected no error with quoted string; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
