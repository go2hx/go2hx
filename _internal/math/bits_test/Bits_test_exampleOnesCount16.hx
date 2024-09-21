package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleOnesCount16():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("OnesCount16(%016b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_onesCount16.onesCount16((14 : stdgo.GoUInt16))));
    }
