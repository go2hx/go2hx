package _internal.errors_test;
function testIs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _err1 = (stdgo._internal.errors.Errors_new_.new_(("1" : stdgo.GoString)) : stdgo.Error);
        var _erra = (new _internal.errors_test.Errors_test_T_wrapped.T_wrapped(("wrap 2" : stdgo.GoString), _err1) : _internal.errors_test.Errors_test_T_wrapped.T_wrapped);
        var _errb = (new _internal.errors_test.Errors_test_T_wrapped.T_wrapped(("wrap 3" : stdgo.GoString), stdgo.Go.asInterface(_erra)) : _internal.errors_test.Errors_test_T_wrapped.T_wrapped);
        var _err3 = (stdgo._internal.errors.Errors_new_.new_(("3" : stdgo.GoString)) : stdgo.Error);
        var _poser = (stdgo.Go.setRef((new _internal.errors_test.Errors_test_T_poser.T_poser(("either 1 or 3" : stdgo.GoString), function(_err:stdgo.Error):Bool {
            return ((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_err1)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_err3)) : Bool);
        }) : _internal.errors_test.Errors_test_T_poser.T_poser)) : stdgo.Ref<_internal.errors_test.Errors_test_T_poser.T_poser>);
        var _testCases = (new stdgo.Slice<_internal.errors_test.Errors_test_T__struct_2.T__struct_2>(29, 29, ...[
({ _err : (null : stdgo.Error), _target : (null : stdgo.Error), _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : _err1, _target : (null : stdgo.Error), _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : _err1, _target : _err1, _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface(_erra), _target : _err1, _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface(_errb), _target : _err1, _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : _err1, _target : _err3, _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface(_erra), _target : _err3, _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface(_errb), _target : _err3, _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface(_poser), _target : _err1, _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface(_poser), _target : _err3, _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface(_poser), _target : stdgo.Go.asInterface(_erra), _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface(_poser), _target : stdgo.Go.asInterface(_errb), _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable() : _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable)), _target : stdgo.Go.asInterface((new _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable() : _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable)), _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable() : _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable)), _target : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable() : _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable)) : stdgo.Ref<_internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable>)), _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable() : _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable)) : stdgo.Ref<_internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable>)), _target : stdgo.Go.asInterface((new _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable() : _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable)), _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable() : _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable)) : stdgo.Ref<_internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable>)), _target : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable() : _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable)) : stdgo.Ref<_internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable>)), _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable() : _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable)), _target : _err1, _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable() : _internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable)) : stdgo.Ref<_internal.errors_test.Errors_test_T_errorUncomparable.T_errorUncomparable>)), _target : _err1, _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(0, 0, ...[]) : _internal.errors_test.Errors_test_T_multiErr.T_multiErr)), _target : _err1, _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, ...[_err1, _err3]) : _internal.errors_test.Errors_test_T_multiErr.T_multiErr)), _target : _err1, _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, ...[_err3, _err1]) : _internal.errors_test.Errors_test_T_multiErr.T_multiErr)), _target : _err1, _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, ...[_err1, _err3]) : _internal.errors_test.Errors_test_T_multiErr.T_multiErr)), _target : stdgo._internal.errors.Errors_new_.new_(("x" : stdgo.GoString)), _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, ...[_err3, stdgo.Go.asInterface(_errb)]) : _internal.errors_test.Errors_test_T_multiErr.T_multiErr)), _target : stdgo.Go.asInterface(_errb), _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, ...[_err3, stdgo.Go.asInterface(_errb)]) : _internal.errors_test.Errors_test_T_multiErr.T_multiErr)), _target : stdgo.Go.asInterface(_erra), _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, ...[_err3, stdgo.Go.asInterface(_errb)]) : _internal.errors_test.Errors_test_T_multiErr.T_multiErr)), _target : _err1, _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, ...[stdgo.Go.asInterface(_errb), _err3]) : _internal.errors_test.Errors_test_T_multiErr.T_multiErr)), _target : _err1, _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(1, 1, ...[stdgo.Go.asInterface(_poser)]) : _internal.errors_test.Errors_test_T_multiErr.T_multiErr)), _target : _err1, _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(1, 1, ...[stdgo.Go.asInterface(_poser)]) : _internal.errors_test.Errors_test_T_multiErr.T_multiErr)), _target : _err3, _match : true } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(1, 1, ...[(null : stdgo.Error)]) : _internal.errors_test.Errors_test_T_multiErr.T_multiErr)), _target : (null : stdgo.Error), _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({ _err : (null : stdgo.Error), _target : (null : stdgo.Error), _match : false } : _internal.errors_test.Errors_test_T__struct_2.T__struct_2)])) : stdgo.Slice<_internal.errors_test.Errors_test_T__struct_2.T__struct_2>);
        for (__0 => _tc in _testCases) {
            _t.run(stdgo.Go.str()?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                {
                    var _got = (stdgo._internal.errors.Errors_is_.is_(_tc._err, _tc._target) : Bool);
                    if (_got != (_tc._match)) {
                        _t.errorf(("Is(%v, %v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._err), stdgo.Go.toInterface(_tc._target), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._match));
                    };
                };
            });
        };
    }
