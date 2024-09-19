package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testFormatterPrintln(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f = ((1 : _internal.fmt_test.Fmt_test_F.F) : _internal.fmt_test.Fmt_test_F.F);
        var _expect = ("<v=F(1)>\n" : stdgo.GoString);
        var _s = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(stdgo.Go.asInterface(_f)), stdgo.Go.toInterface(("\n" : stdgo.GoString)))?.__copy__() : stdgo.GoString);
        if (_s != (_expect)) {
            _t.errorf(("Sprint wrong with Formatter: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_s));
        };
        _s = stdgo._internal.fmt.Fmt_sprintln.sprintln(stdgo.Go.toInterface(stdgo.Go.asInterface(_f)))?.__copy__();
        if (_s != (_expect)) {
            _t.errorf(("Sprintln wrong with Formatter: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_s));
        };
        _s = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)))?.__copy__();
        if (_s != (_expect)) {
            _t.errorf(("Sprintf wrong with Formatter: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_s));
        };
    }
