package _internal.errors_test;
function testJoin(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _err1 = (stdgo._internal.errors.Errors_new_.new_(("err1" : stdgo.GoString)) : stdgo.Error);
        var _err2 = (stdgo._internal.errors.Errors_new_.new_(("err2" : stdgo.GoString)) : stdgo.Error);
        for (__0 => _test in (new stdgo.Slice<_internal.errors_test.Errors_test_T__struct_0.T__struct_0>(3, 3, ...[({ _errs : (new stdgo.Slice<stdgo.Error>(1, 1, ...[_err1]) : stdgo.Slice<stdgo.Error>), _want : (new stdgo.Slice<stdgo.Error>(1, 1, ...[_err1]) : stdgo.Slice<stdgo.Error>) } : _internal.errors_test.Errors_test_T__struct_0.T__struct_0), ({ _errs : (new stdgo.Slice<stdgo.Error>(2, 2, ...[_err1, _err2]) : stdgo.Slice<stdgo.Error>), _want : (new stdgo.Slice<stdgo.Error>(2, 2, ...[_err1, _err2]) : stdgo.Slice<stdgo.Error>) } : _internal.errors_test.Errors_test_T__struct_0.T__struct_0), ({ _errs : (new stdgo.Slice<stdgo.Error>(3, 3, ...[_err1, (null : stdgo.Error), _err2]) : stdgo.Slice<stdgo.Error>), _want : (new stdgo.Slice<stdgo.Error>(2, 2, ...[_err1, _err2]) : stdgo.Slice<stdgo.Error>) } : _internal.errors_test.Errors_test_T__struct_0.T__struct_0)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _errs : (null : stdgo.Slice<stdgo.Error>), _want : (null : stdgo.Slice<stdgo.Error>) } : _internal.errors_test.Errors_test_T__struct_0.T__struct_0)])) : stdgo.Slice<_internal.errors_test.Errors_test_T__struct_0.T__struct_0>)) {
            var _got = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.errors.Errors_join.join(...(_test._errs : Array<stdgo.Error>))) : _internal.errors_test.Errors_test_T__interface_4.T__interface_4)) : _internal.errors_test.Errors_test_T__interface_4.T__interface_4).unwrap();
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want))) {
                _t.errorf(("Join(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._errs), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
            if ((_got.length) != (_got.capacity)) {
                _t.errorf(("Join(%v) returns errors with len=%v, cap=%v; want len==cap" : stdgo.GoString), stdgo.Go.toInterface(_test._errs), stdgo.Go.toInterface((_got.length)), stdgo.Go.toInterface(_got.capacity));
            };
        };
    }
