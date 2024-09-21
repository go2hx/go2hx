package _internal.errors_test;
@:keep @:allow(_internal.errors_test.Errors_test.T_wrapped_asInterface) class T_wrapped_static_extension {
    @:keep
    static public function unwrap( _e:_internal.errors_test.Errors_test_T_wrapped.T_wrapped):stdgo.Error {
        @:recv var _e:_internal.errors_test.Errors_test_T_wrapped.T_wrapped = _e?.__copy__();
        return _e._err;
    }
    @:keep
    static public function error( _e:_internal.errors_test.Errors_test_T_wrapped.T_wrapped):stdgo.GoString {
        @:recv var _e:_internal.errors_test.Errors_test_T_wrapped.T_wrapped = _e?.__copy__();
        return _e._msg?.__copy__();
    }
}
