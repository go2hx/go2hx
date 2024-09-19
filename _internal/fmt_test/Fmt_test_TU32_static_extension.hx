package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TU32_asInterface) class TU32_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TU32.TU32):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TU32.TU32 = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("U32: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoUInt32)))?.__copy__();
    }
}
