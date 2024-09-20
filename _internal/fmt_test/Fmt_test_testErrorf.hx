package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testErrorf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _noVetErrorf = stdgo._internal.fmt.Fmt_errorf.errorf;
        var _wrapped = (stdgo._internal.errors.Errors_new_.new_(("inner error" : stdgo.GoString)) : stdgo.Error);
        for (__2 => _test in (new stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_0.T__struct_0>(16, 16, ...[
({ _err : stdgo._internal.fmt.Fmt_errorf.errorf(("%w" : stdgo.GoString), stdgo.Go.toInterface(_wrapped)), _wantText : ("inner error" : stdgo.GoString), _wantUnwrap : _wrapped, _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : stdgo._internal.fmt.Fmt_errorf.errorf(("added context: %w" : stdgo.GoString), stdgo.Go.toInterface(_wrapped)), _wantText : ("added context: inner error" : stdgo.GoString), _wantUnwrap : _wrapped, _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : stdgo._internal.fmt.Fmt_errorf.errorf(("%w with added context" : stdgo.GoString), stdgo.Go.toInterface(_wrapped)), _wantText : ("inner error with added context" : stdgo.GoString), _wantUnwrap : _wrapped, _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : stdgo._internal.fmt.Fmt_errorf.errorf(("%s %w %v" : stdgo.GoString), stdgo.Go.toInterface(("prefix" : stdgo.GoString)), stdgo.Go.toInterface(_wrapped), stdgo.Go.toInterface(("suffix" : stdgo.GoString))), _wantText : ("prefix inner error suffix" : stdgo.GoString), _wantUnwrap : _wrapped, _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : stdgo._internal.fmt.Fmt_errorf.errorf(("%[2]s: %[1]w" : stdgo.GoString), stdgo.Go.toInterface(_wrapped), stdgo.Go.toInterface(("positional verb" : stdgo.GoString))), _wantText : ("positional verb: inner error" : stdgo.GoString), _wantUnwrap : _wrapped, _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : stdgo._internal.fmt.Fmt_errorf.errorf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_wrapped)), _wantText : ("inner error" : stdgo.GoString), _wantUnwrap : (null : stdgo.Error), _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : stdgo._internal.fmt.Fmt_errorf.errorf(("added context: %v" : stdgo.GoString), stdgo.Go.toInterface(_wrapped)), _wantText : ("added context: inner error" : stdgo.GoString), _wantUnwrap : (null : stdgo.Error), _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : stdgo._internal.fmt.Fmt_errorf.errorf(("%v with added context" : stdgo.GoString), stdgo.Go.toInterface(_wrapped)), _wantText : ("inner error with added context" : stdgo.GoString), _wantUnwrap : (null : stdgo.Error), _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : _noVetErrorf(("%w is not an error" : stdgo.GoString), stdgo.Go.toInterface(("not-an-error" : stdgo.GoString))), _wantText : ("%!w(string=not-an-error) is not an error" : stdgo.GoString), _wantUnwrap : (null : stdgo.Error), _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : _noVetErrorf(("wrapped two errors: %w %w" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((("1" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))), stdgo.Go.toInterface(stdgo.Go.asInterface((("2" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)))), _wantText : ("wrapped two errors: 1 2" : stdgo.GoString), _wantSplit : (new stdgo.Slice<stdgo.Error>(2, 2, ...[stdgo.Go.asInterface((("1" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)), stdgo.Go.asInterface((("2" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))]) : stdgo.Slice<stdgo.Error>), _wantUnwrap : (null : stdgo.Error) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : _noVetErrorf(("wrapped three errors: %w %w %w" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((("1" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))), stdgo.Go.toInterface(stdgo.Go.asInterface((("2" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))), stdgo.Go.toInterface(stdgo.Go.asInterface((("3" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)))), _wantText : ("wrapped three errors: 1 2 3" : stdgo.GoString), _wantSplit : (new stdgo.Slice<stdgo.Error>(3, 3, ...[stdgo.Go.asInterface((("1" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)), stdgo.Go.asInterface((("2" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)), stdgo.Go.asInterface((("3" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))]) : stdgo.Slice<stdgo.Error>), _wantUnwrap : (null : stdgo.Error) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : _noVetErrorf(("wrapped nil error: %w %w %w" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((("1" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))), (null : stdgo.AnyInterface), stdgo.Go.toInterface(stdgo.Go.asInterface((("2" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)))), _wantText : ("wrapped nil error: 1 %!w(<nil>) 2" : stdgo.GoString), _wantSplit : (new stdgo.Slice<stdgo.Error>(2, 2, ...[stdgo.Go.asInterface((("1" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)), stdgo.Go.asInterface((("2" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))]) : stdgo.Slice<stdgo.Error>), _wantUnwrap : (null : stdgo.Error) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : _noVetErrorf(("wrapped one non-error: %w %w %w" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((("1" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))), stdgo.Go.toInterface(("not-an-error" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface((("3" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)))), _wantText : ("wrapped one non-error: 1 %!w(string=not-an-error) 3" : stdgo.GoString), _wantSplit : (new stdgo.Slice<stdgo.Error>(2, 2, ...[stdgo.Go.asInterface((("1" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)), stdgo.Go.asInterface((("3" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))]) : stdgo.Slice<stdgo.Error>), _wantUnwrap : (null : stdgo.Error) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : stdgo._internal.fmt.Fmt_errorf.errorf(("wrapped errors out of order: %[3]w %[2]w %[1]w" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((("1" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))), stdgo.Go.toInterface(stdgo.Go.asInterface((("2" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))), stdgo.Go.toInterface(stdgo.Go.asInterface((("3" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)))), _wantText : ("wrapped errors out of order: 3 2 1" : stdgo.GoString), _wantSplit : (new stdgo.Slice<stdgo.Error>(3, 3, ...[stdgo.Go.asInterface((("1" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)), stdgo.Go.asInterface((("2" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)), stdgo.Go.asInterface((("3" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))]) : stdgo.Slice<stdgo.Error>), _wantUnwrap : (null : stdgo.Error) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : stdgo._internal.fmt.Fmt_errorf.errorf(("wrapped several times: %[1]w %[1]w %[2]w %[1]w" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((("1" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))), stdgo.Go.toInterface(stdgo.Go.asInterface((("2" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)))), _wantText : ("wrapped several times: 1 1 2 1" : stdgo.GoString), _wantSplit : (new stdgo.Slice<stdgo.Error>(2, 2, ...[stdgo.Go.asInterface((("1" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString)), stdgo.Go.asInterface((("2" : stdgo.GoString) : _internal.fmt_test.Fmt_test_T_errString.T_errString))]) : stdgo.Slice<stdgo.Error>), _wantUnwrap : (null : stdgo.Error) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0),
({ _err : stdgo._internal.fmt.Fmt_errorf.errorf(("%w" : stdgo.GoString), (null : stdgo.AnyInterface)), _wantText : ("%!w(<nil>)" : stdgo.GoString), _wantUnwrap : (null : stdgo.Error), _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({ _err : (null : stdgo.Error), _wantText : ("" : stdgo.GoString), _wantUnwrap : (null : stdgo.Error), _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : _internal.fmt_test.Fmt_test_T__struct_0.T__struct_0)])) : stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_0.T__struct_0>)) {
            {
                var __0 = (stdgo._internal.errors.Errors_unwrap.unwrap(_test._err) : stdgo.Error), __1 = (_test._wantUnwrap : stdgo.Error);
var _want = __1, _got = __0;
                if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(_want))) {
                    _t.errorf(("Formatted error: %v\nerrors.Unwrap() = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            {
                var __0 = _internal.fmt_test.Fmt_test__splitErr._splitErr(_test._err), __1 = _test._wantSplit;
var _want = __1, _got = __0;
                if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
                    _t.errorf(("Formatted error: %v\nUnwrap() []error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            {
                var __0 = (_test._err.error()?.__copy__() : stdgo.GoString), __1 = (_test._wantText?.__copy__() : stdgo.GoString);
var _want = __1, _got = __0;
                if (_got != (_want)) {
                    _t.errorf(("err.Error() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
