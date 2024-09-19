package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleReverse64():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface((19 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt_printf.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_reverse64.reverse64((19i64 : stdgo.GoUInt64))));
    }
