package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testScanln(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _r in _internal.fmt_test.Fmt_test__readers._readers) {
            _t.run(_r._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                _internal.fmt_test.Fmt_test__testScan._testScan(_t, _r._f, stdgo._internal.fmt.Fmt_fscanln.fscanln);
            });
        };
    }
