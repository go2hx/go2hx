package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleReverse8():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface((19 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt_printf.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_reverse8.reverse8((19 : stdgo.GoUInt8))));
    }
