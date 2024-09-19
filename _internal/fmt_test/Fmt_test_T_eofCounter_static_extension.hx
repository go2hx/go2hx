package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_eofCounter_asInterface) class T_eofCounter_static_extension {
    @:keep
    static public function read( _ec:stdgo.Ref<_internal.fmt_test.Fmt_test_T_eofCounter.T_eofCounter>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _ec:stdgo.Ref<_internal.fmt_test.Fmt_test_T_eofCounter.T_eofCounter> = _ec;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = _ec._reader.read(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n == ((0 : stdgo.GoInt))) {
            _ec._eofCount++;
        };
        return { _0 : _n, _1 : _err };
    }
}
