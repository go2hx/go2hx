package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleLeadingZeros8():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("LeadingZeros8(%08b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_leadingZeros8.leadingZeros8((1 : stdgo.GoUInt8))));
    }
