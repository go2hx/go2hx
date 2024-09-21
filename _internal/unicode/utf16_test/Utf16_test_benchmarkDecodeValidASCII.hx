package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function benchmarkDecodeValidASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt16>(11, 11, ...[
(104 : stdgo.GoUInt16),
(101 : stdgo.GoUInt16),
(108 : stdgo.GoUInt16),
(108 : stdgo.GoUInt16),
(111 : stdgo.GoUInt16),
(32 : stdgo.GoUInt16),
(119 : stdgo.GoUInt16),
(111 : stdgo.GoUInt16),
(114 : stdgo.GoUInt16),
(108 : stdgo.GoUInt16),
(100 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.unicode.utf16.Utf16_decode.decode(_data);
            });
        };
    }
