package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testRedefinedFlags(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.flag_test.Flag_test_T__struct_2.T__struct_2>(2, 2, ...[({ _flagSetName : stdgo.Go.str()?.__copy__(), _errorMsg : ("flag redefined: foo" : stdgo.GoString) } : _internal.flag_test.Flag_test_T__struct_2.T__struct_2), ({ _flagSetName : ("fs" : stdgo.GoString), _errorMsg : ("fs flag redefined: foo" : stdgo.GoString) } : _internal.flag_test.Flag_test_T__struct_2.T__struct_2)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _flagSetName : ("" : stdgo.GoString), _errorMsg : ("" : stdgo.GoString) } : _internal.flag_test.Flag_test_T__struct_2.T__struct_2)])) : stdgo.Slice<_internal.flag_test.Flag_test_T__struct_2.T__struct_2>);
        for (__0 => _test in _tests) {
            var _testName = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("flag redefined in FlagSet(%q)" : stdgo.GoString), stdgo.Go.toInterface(_test._flagSetName))?.__copy__() : stdgo.GoString);
            var _fs = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(_test._flagSetName?.__copy__(), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
            var _buf = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_Builder.Builder() : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
            _fs.setOutput(stdgo.Go.asInterface(_buf));
            var _v:_internal.flag_test.Flag_test_T_flagVar.T_flagVar = new _internal.flag_test.Flag_test_T_flagVar.T_flagVar(0, 0);
            _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<_internal.flag_test.Flag_test_T_flagVar.T_flagVar>)), ("foo" : stdgo.GoString), stdgo.Go.str()?.__copy__());
            _internal.flag_test.Flag_test__mustPanic._mustPanic(_t, _testName?.__copy__(), _test._errorMsg?.__copy__(), function():Void {
                _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<_internal.flag_test.Flag_test_T_flagVar.T_flagVar>)), ("foo" : stdgo.GoString), stdgo.Go.str()?.__copy__());
            });
            {
                var _msg = ((_test._errorMsg + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_msg != ((_buf.string() : stdgo.GoString))) {
                    _t.errorf(("%s\n: unexpected output: expected %q, bug got %q" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_buf)));
                };
            };
        };
    }
