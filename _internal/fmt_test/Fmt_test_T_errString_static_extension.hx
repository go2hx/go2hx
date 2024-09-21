package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_errString_asInterface) class T_errString_static_extension {
    @:keep
    static public function error( _e:_internal.fmt_test.Fmt_test_T_errString.T_errString):stdgo.GoString {
        @:recv var _e:_internal.fmt_test.Fmt_test_T_errString.T_errString = _e;
        return (_e : stdgo.GoString)?.__copy__();
    }
}
