package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleOnesCount():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("OnesCount(%b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_onesCount.onesCount((14u32 : stdgo.GoUInt))));
    }
