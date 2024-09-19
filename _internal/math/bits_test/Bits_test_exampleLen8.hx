package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleLen8():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("Len8(%08b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_len8.len8((8 : stdgo.GoUInt8))));
    }
