package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function benchmarkRuneCountTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s = (("日本語日本語日本語日" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.unicode.utf8.Utf8_runeCount.runeCount(_s);
            });
        };
    }
