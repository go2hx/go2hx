package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function benchmarkEncodeASCIIRune(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune(_buf, (97 : stdgo.GoInt32));
            });
        };
    }
