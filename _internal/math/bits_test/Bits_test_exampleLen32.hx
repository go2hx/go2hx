package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleLen32():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("Len32(%032b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits_len32.len32((8u32 : stdgo.GoUInt32))));
    }
