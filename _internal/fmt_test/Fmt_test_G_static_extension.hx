package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.G_asInterface) class G_static_extension {
    @:keep
    static public function goString( _g:_internal.fmt_test.Fmt_test_G.G):stdgo.GoString {
        @:recv var _g:_internal.fmt_test.Fmt_test_G.G = _g;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("GoString(%d)" : stdgo.GoString), stdgo.Go.toInterface((_g : stdgo.GoInt)))?.__copy__();
    }
}
