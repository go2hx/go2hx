package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleReverse32():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface((19 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt_printf.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_reverse32.reverse32((19u32 : stdgo.GoUInt32))));
    }
