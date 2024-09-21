package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkEqualFold(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("Tests" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    for (__16 => _tt in _internal.strings_test.Strings_test_equalFoldTests.equalFoldTests) {
                        {
                            var _out = (stdgo._internal.strings.Strings_equalFold.equalFold(_tt._s?.__copy__(), _tt._t?.__copy__()) : Bool);
                            if (_out != (_tt._out)) {
                                _b.fatal(stdgo.Go.toInterface(("wrong result" : stdgo.GoString)));
                            };
                        };
                    };
                });
            };
        });
        {};
        {};
        _b.run(("ASCII" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    stdgo._internal.strings.Strings_equalFold.equalFold(("abcdefghijKz" : stdgo.GoString), ("abcDefGhijKz" : stdgo.GoString));
                });
            };
        });
        _b.run(("UnicodePrefix" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    stdgo._internal.strings.Strings_equalFold.equalFold(("αβδabcdefghijKz" : stdgo.GoString), ("ΑΒΔabcDefGhijKz" : stdgo.GoString));
                });
            };
        });
        _b.run(("UnicodeSuffix" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    stdgo._internal.strings.Strings_equalFold.equalFold(("abcdefghijKzαβδ" : stdgo.GoString), ("abcDefGhijKzΑΒΔ" : stdgo.GoString));
                });
            };
        });
    }
