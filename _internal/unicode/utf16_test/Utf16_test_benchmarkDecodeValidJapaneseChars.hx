package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function benchmarkDecodeValidJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt16>(9, 9, ...[(26085 : stdgo.GoUInt16), (26412 : stdgo.GoUInt16), (35486 : stdgo.GoUInt16), (26085 : stdgo.GoUInt16), (26412 : stdgo.GoUInt16), (35486 : stdgo.GoUInt16), (26085 : stdgo.GoUInt16), (26412 : stdgo.GoUInt16), (35486 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.unicode.utf16.Utf16_decode.decode(_data);
            });
        };
    }
