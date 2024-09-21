package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.PanicGo_asInterface) class PanicGo_static_extension {
    @:keep
    static public function goString( _p:_internal.fmt_test.Fmt_test_PanicGo.PanicGo):stdgo.GoString {
        @:recv var _p:_internal.fmt_test.Fmt_test_PanicGo.PanicGo = _p?.__copy__();
        throw stdgo.Go.toInterface(_p._message);
    }
}
