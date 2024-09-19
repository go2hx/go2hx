package _internal.errors_test;
@:keep @:allow(_internal.errors_test.Errors_test.T_errorUncomparable_asInterface) class T_errorUncomparable_static_extension {
    @:keep
    static public function is_( _:_internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable, _target:stdgo.Error):Bool {
        @:recv var _:_internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable = _?.__copy__();
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_target) : _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable)) : _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable), _1 : true };
        } catch(_) {
            { _0 : ({} : _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable), _1 : false };
        }, __0 = __tmp__._0, _ok = __tmp__._1;
        return _ok;
    }
    @:keep
    static public function error( _:_internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable):stdgo.GoString {
        @:recv var _:_internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable = _?.__copy__();
        return ("uncomparable error" : stdgo.GoString);
    }
}
