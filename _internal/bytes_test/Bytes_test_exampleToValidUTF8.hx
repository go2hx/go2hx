package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleToValidUTF8():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_toValidUTF8.toValidUTF8((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("�" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_toValidUTF8.toValidUTF8((stdgo.Go.str("a", 255, "b", 192, 175, "c", 255) : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_toValidUTF8.toValidUTF8((stdgo.Go.str(237, 160, 128) : stdgo.Slice<stdgo.GoUInt8>), (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
    }
