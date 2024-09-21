package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TB_asInterface) class TB_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TB.TB):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TB.TB = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("B: %t" : stdgo.GoString), stdgo.Go.toInterface((_v : Bool)))?.__copy__();
    }
}
