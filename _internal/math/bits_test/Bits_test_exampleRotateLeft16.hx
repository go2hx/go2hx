package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleRotateLeft16():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt_printf.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_rotateLeft16.rotateLeft16((15 : stdgo.GoUInt16), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_printf.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_rotateLeft16.rotateLeft16((15 : stdgo.GoUInt16), (-2 : stdgo.GoInt))));
    }
