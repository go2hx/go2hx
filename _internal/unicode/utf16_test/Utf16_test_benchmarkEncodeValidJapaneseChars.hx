package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function benchmarkEncodeValidJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt32>(3, 3, ...[(26085 : stdgo.GoInt32), (26412 : stdgo.GoInt32), (35486 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.unicode.utf16.Utf16_encode.encode(_data);
            });
        };
    }
