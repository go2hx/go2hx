package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TI_asInterface) class TI_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TI.TI):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TI.TI = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("I: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoInt)))?.__copy__();
    }
}
