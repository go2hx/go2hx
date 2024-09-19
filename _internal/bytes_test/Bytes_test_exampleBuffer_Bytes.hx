package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleBuffer_Bytes():Void {
        var _buf = (new stdgo._internal.bytes.Bytes_Buffer.Buffer() : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        _buf.write((new stdgo.Slice<stdgo.GoUInt8>(11, 11, ...[
(104 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(111 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(119 : stdgo.GoUInt8),
(111 : stdgo.GoUInt8),
(114 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(100 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.os.Os_stdout.stdout.write(_buf.bytes());
    }
