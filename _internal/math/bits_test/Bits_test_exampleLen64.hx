package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleLen64():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("Len64(%064b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_len64.len64((8i64 : stdgo.GoUInt64))));
    }
