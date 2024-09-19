package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TI8_asInterface) class TI8_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TI8.TI8):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TI8.TI8 = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("I8: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoInt8)))?.__copy__();
    }
}
