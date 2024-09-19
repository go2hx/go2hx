package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleBuffer_ReadByte():Void {
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        _b.grow((64 : stdgo.GoInt));
        _b.write((("abcde" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var __tmp__ = _b.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_c));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
    }
