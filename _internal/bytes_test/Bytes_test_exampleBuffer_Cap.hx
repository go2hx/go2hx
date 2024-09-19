package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleBuffer_Cap():Void {
        var _buf1 = stdgo._internal.bytes.Bytes_newBuffer.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _buf2 = stdgo._internal.bytes.Bytes_newBuffer.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_buf1.cap()));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_buf2.cap()));
    }
