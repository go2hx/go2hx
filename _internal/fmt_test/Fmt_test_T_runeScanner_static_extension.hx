package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_runeScanner_asInterface) class T_runeScanner_static_extension {
    @:keep
    static public function scan( _rs:stdgo.Ref<_internal.fmt_test.Fmt_test_T_runeScanner.T_runeScanner>, _state:stdgo._internal.fmt.Fmt_ScanState.ScanState, _verb:stdgo.GoInt32):stdgo.Error {
        @:recv var _rs:stdgo.Ref<_internal.fmt_test.Fmt_test_T_runeScanner.T_runeScanner> = _rs;
        var __tmp__ = _state.readRune(), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        _rs._rune = _r;
        _rs._size = _size;
        return _err;
    }
}
