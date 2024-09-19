package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TS_asInterface) class TS_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TS.TS):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TS.TS = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("S: %q" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoString)))?.__copy__();
    }
}
