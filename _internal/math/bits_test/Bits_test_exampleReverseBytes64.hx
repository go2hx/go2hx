package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleReverseBytes64():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt_printf.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_reverseBytes64.reverseBytes64((15i64 : stdgo.GoUInt64))));
    }
