package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testBlankln(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _got = (stdgo._internal.fmt.Fmt_sprintln.sprintln(stdgo.Go.toInterface(("<" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((">:" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface(("!" : stdgo.GoString)))?.__copy__() : stdgo.GoString);
        var _expect = ("< 1 >: 1 2 3 !\n" : stdgo.GoString);
        if (_got != (_expect)) {
            _t.errorf(("got %q expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_expect));
        };
    }
