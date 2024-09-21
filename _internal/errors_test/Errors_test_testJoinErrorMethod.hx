package _internal.errors_test;
function testJoinErrorMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _err1 = (stdgo._internal.errors.Errors_new_.new_(("err1" : stdgo.GoString)) : stdgo.Error);
        var _err2 = (stdgo._internal.errors.Errors_new_.new_(("err2" : stdgo.GoString)) : stdgo.Error);
        for (__0 => _test in (new stdgo.Slice<_internal.errors_test.Errors_test_T__struct_1.T__struct_1>(3, 3, ...[({ _errs : (new stdgo.Slice<stdgo.Error>(1, 1, ...[_err1]) : stdgo.Slice<stdgo.Error>), _want : ("err1" : stdgo.GoString) } : _internal.errors_test.Errors_test_T__struct_1.T__struct_1), ({ _errs : (new stdgo.Slice<stdgo.Error>(2, 2, ...[_err1, _err2]) : stdgo.Slice<stdgo.Error>), _want : ("err1\nerr2" : stdgo.GoString) } : _internal.errors_test.Errors_test_T__struct_1.T__struct_1), ({ _errs : (new stdgo.Slice<stdgo.Error>(3, 3, ...[_err1, (null : stdgo.Error), _err2]) : stdgo.Slice<stdgo.Error>), _want : ("err1\nerr2" : stdgo.GoString) } : _internal.errors_test.Errors_test_T__struct_1.T__struct_1)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _errs : (null : stdgo.Slice<stdgo.Error>), _want : ("" : stdgo.GoString) } : _internal.errors_test.Errors_test_T__struct_1.T__struct_1)])) : stdgo.Slice<_internal.errors_test.Errors_test_T__struct_1.T__struct_1>)) {
            var _got = (stdgo._internal.errors.Errors_join.join(...(_test._errs : Array<stdgo.Error>)).error()?.__copy__() : stdgo.GoString);
            if (_got != (_test._want)) {
                _t.errorf(("Join(%v).Error() = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._errs), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }
