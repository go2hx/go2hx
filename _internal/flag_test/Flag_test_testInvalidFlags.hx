package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testInvalidFlags(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.flag_test.Flag_test_T__struct_1.T__struct_1>(2, 2, ...[({ _flag : ("-foo" : stdgo.GoString), _errorMsg : ("flag \"-foo\" begins with -" : stdgo.GoString) } : _internal.flag_test.Flag_test_T__struct_1.T__struct_1), ({ _flag : ("foo=bar" : stdgo.GoString), _errorMsg : ("flag \"foo=bar\" contains =" : stdgo.GoString) } : _internal.flag_test.Flag_test_T__struct_1.T__struct_1)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _flag : ("" : stdgo.GoString), _errorMsg : ("" : stdgo.GoString) } : _internal.flag_test.Flag_test_T__struct_1.T__struct_1)])) : stdgo.Slice<_internal.flag_test.Flag_test_T__struct_1.T__struct_1>);
        for (__0 => _test in _tests) {
            var _testName = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("FlagSet.Var(&v, %q, \"\")" : stdgo.GoString), stdgo.Go.toInterface(_test._flag))?.__copy__() : stdgo.GoString);
            var _fs = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(stdgo.Go.str()?.__copy__(), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
            var _buf = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_Builder.Builder() : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
            _fs.setOutput(stdgo.Go.asInterface(_buf));
            _internal.flag_test.Flag_test__mustPanic._mustPanic(_t, _testName?.__copy__(), _test._errorMsg?.__copy__(), function():Void {
                var _v:_internal.flag_test.Flag_test_T_flagVar.T_flagVar = new _internal.flag_test.Flag_test_T_flagVar.T_flagVar(0, 0);
                _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<_internal.flag_test.Flag_test_T_flagVar.T_flagVar>)), _test._flag?.__copy__(), stdgo.Go.str()?.__copy__());
            });
            {
                var _msg = ((_test._errorMsg + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_msg != ((_buf.string() : stdgo.GoString))) {
                    _t.errorf(("%s\n: unexpected output: expected %q, bug got %q" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_buf)));
                };
            };
        };
    }
