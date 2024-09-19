package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleRotateLeft32():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt_printf.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((15u32 : stdgo.GoUInt32), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_printf.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((15u32 : stdgo.GoUInt32), (-2 : stdgo.GoInt))));
    }
