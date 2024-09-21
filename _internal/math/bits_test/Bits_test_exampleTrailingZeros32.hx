package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleTrailingZeros32():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("TrailingZeros32(%032b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_trailingZeros32.trailingZeros32((14u32 : stdgo.GoUInt32))));
    }
