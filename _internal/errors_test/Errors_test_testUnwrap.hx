package _internal.errors_test;
function testUnwrap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _err1 = (stdgo._internal.errors.Errors_new_.new_(("1" : stdgo.GoString)) : stdgo.Error);
        var _erra = (new _internal.errors_test.Errors_test_T_wrapped.T_wrapped(("wrap 2" : stdgo.GoString), _err1) : _internal.errors_test.Errors_test_T_wrapped.T_wrapped);
        var _testCases = (new stdgo.Slice<_internal.errors_test.Errors_test_T__struct_4.T__struct_4>(5, 5, ...[({ _err : (null : stdgo.Error), _want : (null : stdgo.Error) } : _internal.errors_test.Errors_test_T__struct_4.T__struct_4), ({ _err : stdgo.Go.asInterface((new _internal.errors_test.Errors_test_T_wrapped.T_wrapped(("wrapped" : stdgo.GoString), (null : stdgo.Error)) : _internal.errors_test.Errors_test_T_wrapped.T_wrapped)), _want : (null : stdgo.Error) } : _internal.errors_test.Errors_test_T__struct_4.T__struct_4), ({ _err : _err1, _want : (null : stdgo.Error) } : _internal.errors_test.Errors_test_T__struct_4.T__struct_4), ({ _err : stdgo.Go.asInterface(_erra), _want : _err1 } : _internal.errors_test.Errors_test_T__struct_4.T__struct_4), ({ _err : stdgo.Go.asInterface((new _internal.errors_test.Errors_test_T_wrapped.T_wrapped(("wrap 3" : stdgo.GoString), stdgo.Go.asInterface(_erra)) : _internal.errors_test.Errors_test_T_wrapped.T_wrapped)), _want : stdgo.Go.asInterface(_erra) } : _internal.errors_test.Errors_test_T__struct_4.T__struct_4)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _err : (null : stdgo.Error), _want : (null : stdgo.Error) } : _internal.errors_test.Errors_test_T__struct_4.T__struct_4)])) : stdgo.Slice<_internal.errors_test.Errors_test_T__struct_4.T__struct_4>);
        for (__0 => _tc in _testCases) {
            {
                var _got = (stdgo._internal.errors.Errors_unwrap.unwrap(_tc._err) : stdgo.Error);
                if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(_tc._want))) {
                    _t.errorf(("Unwrap(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._err), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._want));
                };
            };
        };
    }
