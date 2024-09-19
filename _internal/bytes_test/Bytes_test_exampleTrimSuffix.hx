package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleTrimSuffix():Void {
        var _b:stdgo.Slice<stdgo.GoUInt8> = (("Hello, goodbye, etc!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.bytes.Bytes_trimSuffix.trimSuffix(_b, (("goodbye, etc!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _b = stdgo._internal.bytes.Bytes_trimSuffix.trimSuffix(_b, (("gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _b = (_b.__append__(...(stdgo._internal.bytes.Bytes_trimSuffix.trimSuffix((("world!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("x!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : Array<stdgo.GoUInt8>)));
        stdgo._internal.os.Os_stdout.stdout.write(_b);
    }
