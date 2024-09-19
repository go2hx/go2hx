package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testScanInts(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.fmt_test.Fmt_test__testScanInts._testScanInts(_t, _internal.fmt_test.Fmt_test__scanInts._scanInts);
        _internal.fmt_test.Fmt_test__testScanInts._testScanInts(_t, function(_r:stdgo.Ref<_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt>, _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):stdgo.Error {
            var _err = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fscan.fscan(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
                _err = __tmp__._1;
            };
            return _err;
        });
    }
