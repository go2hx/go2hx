package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleLeadingZeros32():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("LeadingZeros32(%032b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_leadingZeros32.leadingZeros32((1u32 : stdgo.GoUInt32))));
    }
