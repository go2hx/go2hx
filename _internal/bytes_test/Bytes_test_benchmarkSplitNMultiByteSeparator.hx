package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _sep = (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.bytes.Bytes_splitN.splitN(_internal.bytes_test.Bytes_test__benchInputHard._benchInputHard, _sep, (10 : stdgo.GoInt));
            });
        };
    }