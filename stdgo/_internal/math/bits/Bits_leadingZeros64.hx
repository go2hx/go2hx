package stdgo._internal.math.bits;
import stdgo._internal.unsafe.Unsafe;
function leadingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt {
        return ((64 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_len64.len64(_x) : stdgo.GoInt);
    }