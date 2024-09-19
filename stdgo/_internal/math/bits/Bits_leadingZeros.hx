package stdgo._internal.math.bits;
import stdgo._internal.unsafe.Unsafe;
function leadingZeros(_x:stdgo.GoUInt):stdgo.GoInt {
        return ((32 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_len.len(_x) : stdgo.GoInt);
    }
