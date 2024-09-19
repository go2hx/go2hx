package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testFlagParser(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _flagprinter:_internal.fmt_test.Fmt_test_T_flagPrinter.T_flagPrinter = ({} : _internal.fmt_test.Fmt_test_T_flagPrinter.T_flagPrinter);
        for (__3 => _tt in _internal.fmt_test.Fmt_test__flagtests._flagtests) {
            var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_tt._in?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_flagprinter) : stdgo.Ref<_internal.fmt_test.Fmt_test_T_flagPrinter.T_flagPrinter>))))?.__copy__() : stdgo.GoString);
            if (_s != (_tt._out)) {
                _t.errorf(("Sprintf(%q, &flagprinter) => %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
