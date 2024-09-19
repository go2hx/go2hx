package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleClone():Void {
        var _b = (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _clone = stdgo._internal.bytes.Bytes_clone.clone(_b);
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_clone));
        _clone[(0 : stdgo.GoInt)] = (100 : stdgo.GoUInt8);
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_b));
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_clone));
    }
