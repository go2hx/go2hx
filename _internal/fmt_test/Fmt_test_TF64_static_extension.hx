package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TF64_asInterface) class TF64_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TF64.TF64):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TF64.TF64 = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("F64: %f" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoFloat64)))?.__copy__();
    }
}
