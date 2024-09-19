package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _benchmarkCountHard(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _sep:stdgo.Slice<stdgo.GoUInt8>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.bytes.Bytes_count.count(_internal.bytes_test.Bytes_test__benchInputHard._benchInputHard, _sep);
            });
        };
    }
