package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleLeadingZeros64():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("LeadingZeros64(%064b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_leadingZeros64.leadingZeros64((1i64 : stdgo.GoUInt64))));
    }
