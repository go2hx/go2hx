package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleReverse16():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface((19 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt_printf.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_reverse16.reverse16((19 : stdgo.GoUInt16))));
    }
