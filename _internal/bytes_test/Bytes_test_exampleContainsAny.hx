package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleContainsAny():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_containsAny.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("fÄo!" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_containsAny.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ("去是伟大的." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_containsAny.containsAny((("I like seafood." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_containsAny.containsAny((stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__())));
    }
