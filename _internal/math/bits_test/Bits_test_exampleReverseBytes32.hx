package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleReverseBytes32():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt_printf.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_reverseBytes32.reverseBytes32((15u32 : stdgo.GoUInt32))));
    }
