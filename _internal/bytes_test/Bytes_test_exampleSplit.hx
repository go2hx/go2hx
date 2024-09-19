package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleSplit():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_split.split((("a,b,c" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("," : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_split.split((("a man a plan a canal panama" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("a " : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_split.split(((" xyz " : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_split.split((stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>), (("Bernardo O\'Higgins" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
    }
