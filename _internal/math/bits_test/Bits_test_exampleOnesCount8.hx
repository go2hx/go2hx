package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleOnesCount8():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("OnesCount8(%08b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_onesCount8.onesCount8((14 : stdgo.GoUInt8))));
    }
