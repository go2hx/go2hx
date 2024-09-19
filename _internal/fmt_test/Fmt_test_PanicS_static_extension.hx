package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.PanicS_asInterface) class PanicS_static_extension {
    @:keep
    static public function string( _p:_internal.fmt_test.Fmt_test_PanicS.PanicS):stdgo.GoString {
        @:recv var _p:_internal.fmt_test.Fmt_test_PanicS.PanicS = _p?.__copy__();
        throw stdgo.Go.toInterface(_p._message);
    }
}
