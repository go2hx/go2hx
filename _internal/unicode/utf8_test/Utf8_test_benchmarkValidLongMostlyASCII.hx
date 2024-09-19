package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function benchmarkValidLongMostlyASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _longMostlyASCII = (_internal.unicode.utf8_test.Utf8_test__longStringMostlyASCII._longStringMostlyASCII : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.unicode.utf8.Utf8_valid.valid(_longMostlyASCII);
            });
        };
    }
