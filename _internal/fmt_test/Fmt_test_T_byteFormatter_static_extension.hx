package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_byteFormatter_asInterface) class T_byteFormatter_static_extension {
    @:keep
    static public function format( _:_internal.fmt_test.Fmt_test_T_byteFormatter.T_byteFormatter, _f:stdgo._internal.fmt.Fmt_State.State, __3:stdgo.GoInt32):Void {
        @:recv var _:_internal.fmt_test.Fmt_test_T_byteFormatter.T_byteFormatter = _;
        stdgo._internal.fmt.Fmt_fprint.fprint(_f, stdgo.Go.toInterface(("X" : stdgo.GoString)));
    }
}
