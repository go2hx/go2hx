package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.IntString_asInterface) class IntString_static_extension {
    @:keep
    static public function scan( _s:stdgo.Ref<_internal.fmt_test.Fmt_test_IntString.IntString>, _state:stdgo._internal.fmt.Fmt_ScanState.ScanState, _verb:stdgo.GoInt32):stdgo.Error {
        @:recv var _s:stdgo.Ref<_internal.fmt_test.Fmt_test_IntString.IntString> = _s;
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscan.fscan(_state, stdgo.Go.toInterface(stdgo.Go.pointer(_s._i))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _state.token(true, null), _tok:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _s._s = (_tok : stdgo.GoString)?.__copy__();
        return (null : stdgo.Error);
    }
}
