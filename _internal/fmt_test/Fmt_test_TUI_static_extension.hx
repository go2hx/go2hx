package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TUI_asInterface) class TUI_static_extension {
    @:keep
    static public function string( _v:_internal.fmt_test.Fmt_test_TUI.TUI):stdgo.GoString {
        @:recv var _v:_internal.fmt_test.Fmt_test_TUI.TUI = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("UI: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoUIntptr)))?.__copy__();
    }
}
