package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleBuffer_Grow():Void {
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        _b.grow((64 : stdgo.GoInt));
        var _bb = _b.bytes();
        _b.write((("64 bytes or fewer" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.fmt.Fmt_printf.printf(("%q" : stdgo.GoString), stdgo.Go.toInterface((_bb.__slice__(0, _b.len()) : stdgo.Slice<stdgo.GoUInt8>)));
    }
