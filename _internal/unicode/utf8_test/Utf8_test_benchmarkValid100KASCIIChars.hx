package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function benchmarkValid100KASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s = (_internal.unicode.utf8_test.Utf8_test__ascii100000._ascii100000 : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.unicode.utf8.Utf8_valid.valid(_s);
            });
        };
    }
