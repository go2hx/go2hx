package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkBufferAppendNoCopy(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _bb:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        _bb.grow((16777216 : stdgo.GoInt));
        _b.setBytes((_bb.available() : stdgo.GoInt64));
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _bb.reset();
                var _b = _bb.availableBuffer();
                _b = (_b.__slice__(0, _b.capacity) : stdgo.Slice<stdgo.GoUInt8>);
                _bb.write(_b);
            });
        };
    }
