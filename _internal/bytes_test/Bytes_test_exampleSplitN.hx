package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleSplitN():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_splitN.splitN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (2 : stdgo.GoInt))));
        var _z = stdgo._internal.bytes.Bytes_splitN.splitN((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt_printf.printf(("%q (nil = %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_z == null));
    }
