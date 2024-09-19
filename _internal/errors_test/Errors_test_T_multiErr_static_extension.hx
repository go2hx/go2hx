package _internal.errors_test;
@:keep @:allow(_internal.errors_test.Errors_test.T_multiErr_asInterface) class T_multiErr_static_extension {
    @:keep
    static public function unwrap( _m:_internal.errors_test.Errors_test_T_multiErr.T_multiErr):stdgo.Slice<stdgo.Error> {
        @:recv var _m:_internal.errors_test.Errors_test_T_multiErr.T_multiErr = _m;
        return (_m : stdgo.Slice<stdgo.Error>);
    }
    @:keep
    static public function error( _m:_internal.errors_test.Errors_test_T_multiErr.T_multiErr):stdgo.GoString {
        @:recv var _m:_internal.errors_test.Errors_test_T_multiErr.T_multiErr = _m;
        return ("multiError" : stdgo.GoString);
    }
}
