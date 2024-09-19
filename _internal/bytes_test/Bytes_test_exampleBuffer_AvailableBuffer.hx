package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleBuffer_AvailableBuffer():Void {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                var _b = _buf.availableBuffer();
                _b = stdgo._internal.strconv.Strconv_appendInt.appendInt(_b, (_i : stdgo.GoInt64), (10 : stdgo.GoInt));
                _b = (_b.__append__((32 : stdgo.GoUInt8)));
                _buf.write(_b);
            });
        };
        stdgo._internal.os.Os_stdout.stdout.write(_buf.bytes());
    }
