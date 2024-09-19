package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleTrailingZeros8():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("TrailingZeros8(%08b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_trailingZeros8.trailingZeros8((14 : stdgo.GoUInt8))));
    }
