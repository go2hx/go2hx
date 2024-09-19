package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleContains():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_contains.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_contains.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("bar" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_contains.contains((("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_contains.contains((stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>))));
    }
