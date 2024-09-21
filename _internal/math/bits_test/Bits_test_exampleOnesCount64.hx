package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleOnesCount64():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("OnesCount64(%064b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_onesCount64.onesCount64((14i64 : stdgo.GoUInt64))));
    }
