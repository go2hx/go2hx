package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleLeadingZeros16():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("LeadingZeros16(%016b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_leadingZeros16.leadingZeros16((1 : stdgo.GoUInt16))));
    }
