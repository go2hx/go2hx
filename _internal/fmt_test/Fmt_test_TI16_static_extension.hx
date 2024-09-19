package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TI16_asInterface) class TI16_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TI16.TI16):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TI16.TI16 = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("I16: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoInt16)))?.__copy__();
    }
}
