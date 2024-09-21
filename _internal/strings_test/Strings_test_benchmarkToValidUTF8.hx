package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _tests = (new stdgo.Slice<_internal.strings_test.Strings_test_T__struct_13.T__struct_13>(3, 3, ...[({ _name : ("Valid" : stdgo.GoString), _input : ("typical" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_13.T__struct_13), ({ _name : ("InvalidASCII" : stdgo.GoString), _input : stdgo.Go.str("foo", 255, "bar")?.__copy__() } : _internal.strings_test.Strings_test_T__struct_13.T__struct_13), ({ _name : ("InvalidNonASCII" : stdgo.GoString), _input : stdgo.Go.str("日本語", 255, "日本語")?.__copy__() } : _internal.strings_test.Strings_test_T__struct_13.T__struct_13)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _input : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_13.T__struct_13)])) : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_13.T__struct_13>);
        var _replacement = ("�" : stdgo.GoString);
        _b.resetTimer();
        for (__8 => _test in _tests) {
            _b.run(_test._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        stdgo._internal.strings.Strings_toValidUTF8.toValidUTF8(_test._input?.__copy__(), _replacement?.__copy__());
                    });
                };
            });
        };
    }
