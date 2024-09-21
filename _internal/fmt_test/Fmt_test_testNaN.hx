package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testNaN(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _s in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("nan" : stdgo.GoString), ("NAN" : stdgo.GoString), ("NaN" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            _internal.fmt_test.Fmt_test__verifyNaN._verifyNaN(_s?.__copy__(), _t);
        };
    }
