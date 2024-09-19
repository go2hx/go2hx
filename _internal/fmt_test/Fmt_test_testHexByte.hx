package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testHexByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _h:_internal.fmt_test.Fmt_test_T_hexBytes.T_hexBytes = new _internal.fmt_test.Fmt_test_T_hexBytes.T_hexBytes(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt8)]);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanln.sscanln(("0123\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_h) : stdgo.Ref<_internal.fmt_test.Fmt_test_T_hexBytes.T_hexBytes>)))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (_n != ((1 : stdgo.GoInt))) {
            _t.fatalf(("expected 1 item; scanned %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (((_h[(0 : stdgo.GoInt)] != (1 : stdgo.GoUInt8)) || (_h[(1 : stdgo.GoInt)] != (35 : stdgo.GoUInt8)) : Bool)) {
            _t.fatalf(("expected 0123 got %x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_h)));
        };
    }
