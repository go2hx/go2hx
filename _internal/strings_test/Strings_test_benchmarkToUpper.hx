package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkToUpper(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__0 => _tc in _internal.strings_test.Strings_test__upperTests._upperTests) {
            _b.run(_tc._in?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var _actual = (stdgo._internal.strings.Strings_toUpper.toUpper(_tc._in?.__copy__())?.__copy__() : stdgo.GoString);
                        if (_actual != (_tc._out)) {
                            _b.errorf(("ToUpper(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
                        };
                    });
                };
            });
        };
    }
