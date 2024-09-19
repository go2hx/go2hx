package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleTrailingZeros16():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("TrailingZeros16(%016b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_trailingZeros16.trailingZeros16((14 : stdgo.GoUInt16))));
    }
