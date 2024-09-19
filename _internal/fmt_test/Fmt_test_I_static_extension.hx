package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.I_asInterface) class I_static_extension {
    @:keep
    static public function string( _i:_internal.fmt_test.Fmt_test_I.I):stdgo.GoString {
        @:recv var _i:_internal.fmt_test.Fmt_test_I.I = _i;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("<%d>" : stdgo.GoString), stdgo.Go.toInterface((_i : stdgo.GoInt)))?.__copy__();
    }
}
