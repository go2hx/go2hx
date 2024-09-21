package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TI32_asInterface) class TI32_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TI32.TI32):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TI32.TI32 = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("I32: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoInt32)))?.__copy__();
    }
}
