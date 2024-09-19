package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TU16_asInterface) class TU16_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TU16.TU16):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TU16.TU16 = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("U16: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoUInt16)))?.__copy__();
    }
}
