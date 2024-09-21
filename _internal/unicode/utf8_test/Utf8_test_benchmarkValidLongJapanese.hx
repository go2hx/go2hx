package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function benchmarkValidLongJapanese(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _longJapanese = (_internal.unicode.utf8_test.Utf8_test__longStringJapanese._longStringJapanese : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.unicode.utf8.Utf8_valid.valid(_longJapanese);
            });
        };
    }
