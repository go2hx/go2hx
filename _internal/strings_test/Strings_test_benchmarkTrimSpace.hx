package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _tests = (new stdgo.Slice<_internal.strings_test.Strings_test_T__struct_13.T__struct_13>(4, 4, ...[({ _name : ("NoTrim" : stdgo.GoString), _input : ("typical" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_13.T__struct_13), ({ _name : ("ASCII" : stdgo.GoString), _input : ("  foo bar  " : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_13.T__struct_13), ({ _name : ("SomeNonASCII" : stdgo.GoString), _input : ("    \u2000\t\r\n x\t\t\r\r\ny\n \u3000    " : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_13.T__struct_13), ({ _name : ("JustNonASCII" : stdgo.GoString), _input : ("\u2000\u2000\u2000☺☺☺☺\u3000\u3000\u3000" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_13.T__struct_13)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _input : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_13.T__struct_13)])) : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_13.T__struct_13>);
        for (__0 => _test in _tests) {
            _b.run(_test._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        stdgo._internal.strings.Strings_trimSpace.trimSpace(_test._input?.__copy__());
                    });
                };
            });
        };
    }
