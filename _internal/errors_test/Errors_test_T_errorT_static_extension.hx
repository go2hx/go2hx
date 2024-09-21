package _internal.errors_test;
@:keep @:allow(_internal.errors_test.Errors_test.T_errorT_asInterface) class T_errorT_static_extension {
    @:keep
    static public function error( _e:_internal.errors_test.Errors_test_T_errorT.T_errorT):stdgo.GoString {
        @:recv var _e:_internal.errors_test.Errors_test_T_errorT.T_errorT = _e?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("errorT(%s)" : stdgo.GoString), stdgo.Go.toInterface(_e._s))?.__copy__();
    }
}
