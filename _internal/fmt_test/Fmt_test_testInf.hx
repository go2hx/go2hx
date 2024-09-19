package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testInf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__3 => _s in (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("inf" : stdgo.GoString), ("+inf" : stdgo.GoString), ("-inf" : stdgo.GoString), ("INF" : stdgo.GoString), ("-INF" : stdgo.GoString), ("+INF" : stdgo.GoString), ("Inf" : stdgo.GoString), ("-Inf" : stdgo.GoString), ("+Inf" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            _internal.fmt_test.Fmt_test__verifyInf._verifyInf(_s?.__copy__(), _t);
        };
    }
