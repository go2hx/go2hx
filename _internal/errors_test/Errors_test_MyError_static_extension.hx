package _internal.errors_test;
@:keep @:allow(_internal.errors_test.Errors_test.MyError_asInterface) class MyError_static_extension {
    @:keep
    static public function error( _e:_internal.errors_test.Errors_test_MyError.MyError):stdgo.GoString {
        @:recv var _e:_internal.errors_test.Errors_test_MyError.MyError = _e?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_e.when)), stdgo.Go.toInterface(_e.what))?.__copy__();
    }
}
