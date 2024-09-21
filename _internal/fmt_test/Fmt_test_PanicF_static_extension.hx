package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.PanicF_asInterface) class PanicF_static_extension {
    @:keep
    static public function format( _p:_internal.fmt_test.Fmt_test_PanicF.PanicF, _f:stdgo._internal.fmt.Fmt_State.State, _c:stdgo.GoInt32):Void {
        @:recv var _p:_internal.fmt_test.Fmt_test_PanicF.PanicF = _p?.__copy__();
        throw stdgo.Go.toInterface(_p._message);
    }
}
