package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TU8_asInterface) class TU8_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TU8.TU8):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TU8.TU8 = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("U8: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoUInt8)))?.__copy__();
    }
}
