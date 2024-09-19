package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleLen16():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("Len16(%016b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_len16.len16((8 : stdgo.GoUInt16))));
    }
