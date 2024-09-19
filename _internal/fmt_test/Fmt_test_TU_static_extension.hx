package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TU_asInterface) class TU_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TU.TU):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TU.TU = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("U: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoUInt)))?.__copy__();
    }
}
