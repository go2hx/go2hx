package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleTrailingZeros64():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("TrailingZeros64(%064b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_trailingZeros64.trailingZeros64((14i64 : stdgo.GoUInt64))));
    }
