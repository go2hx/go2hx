package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleBuffer_Next():Void {
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        _b.grow((64 : stdgo.GoInt));
        _b.write((("abcde" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface((_b.next((2 : stdgo.GoInt)) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface((_b.next((2 : stdgo.GoInt)) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_printf.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface((_b.next((2 : stdgo.GoInt)) : stdgo.GoString)));
    }
