package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleOnesCount32():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("OnesCount32(%032b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_onesCount32.onesCount32((14u32 : stdgo.GoUInt32))));
    }
