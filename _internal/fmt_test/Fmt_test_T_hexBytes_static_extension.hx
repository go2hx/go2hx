package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_hexBytes_asInterface) class T_hexBytes_static_extension {
    @:keep
    static public function scan( _h:stdgo.Ref<_internal.fmt_test.Fmt_test_T_hexBytes.T_hexBytes>, _ss:stdgo._internal.fmt.Fmt_ScanState.ScanState, _verb:stdgo.GoInt32):stdgo.Error {
        @:recv var _h:stdgo.Ref<_internal.fmt_test.Fmt_test_T_hexBytes.T_hexBytes> = _h;
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(_ss, ("%4x" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo.Go.copySlice((((_h : _internal.fmt_test.Fmt_test_T_hexBytes.T_hexBytes)).__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _b);
        return _err;
    }
}
