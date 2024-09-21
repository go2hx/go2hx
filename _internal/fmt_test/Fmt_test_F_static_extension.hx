package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.F_asInterface) class F_static_extension {
    @:keep
    static public function format( _f:_internal.fmt_test.Fmt_test_F.F, _s:stdgo._internal.fmt.Fmt_State.State, _c:stdgo.GoInt32):Void {
        @:recv var _f:_internal.fmt_test.Fmt_test_F.F = _f;
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_s, ("<%c=F(%d)>" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface((_f : stdgo.GoInt)));
    }
}
