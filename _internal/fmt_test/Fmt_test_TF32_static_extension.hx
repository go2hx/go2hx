package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TF32_asInterface) class TF32_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TF32.TF32):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TF32.TF32 = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("F32: %f" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoFloat32)))?.__copy__();
    }
}
