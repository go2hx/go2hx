package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleRotateLeft8():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt_printf.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_rotateLeft8.rotateLeft8((15 : stdgo.GoUInt8), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_printf.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_rotateLeft8.rotateLeft8((15 : stdgo.GoUInt8), (-2 : stdgo.GoInt))));
    }
