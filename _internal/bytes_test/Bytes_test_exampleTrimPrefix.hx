package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleTrimPrefix():Void {
        var _b:stdgo.Slice<stdgo.GoUInt8> = (("Goodbye,, world!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.bytes.Bytes_trimPrefix.trimPrefix(_b, (("Goodbye," : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _b = stdgo._internal.bytes.Bytes_trimPrefix.trimPrefix(_b, (("See ya," : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.fmt.Fmt_printf.printf(("Hello%s" : stdgo.GoString), stdgo.Go.toInterface(_b));
    }
