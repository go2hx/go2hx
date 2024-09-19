package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TU64_asInterface) class TU64_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TU64.TU64):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TU64.TU64 = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("U64: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoUInt64)))?.__copy__();
    }
}
