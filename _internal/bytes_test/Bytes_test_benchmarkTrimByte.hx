package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkTrimByte(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = (("  the quick brown fox   " : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.bytes.Bytes_trim.trim(_x, (" " : stdgo.GoString));
            });
        };
    }
