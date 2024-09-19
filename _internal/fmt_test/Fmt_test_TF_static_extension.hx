package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TF_asInterface) class TF_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TF.TF):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TF.TF = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("F: %f" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoFloat64)))?.__copy__();
    }
}
