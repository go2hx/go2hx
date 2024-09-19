package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TI64_asInterface) class TI64_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TI64.TI64):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TI64.TI64 = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("I64: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoInt64)))?.__copy__();
    }
}
