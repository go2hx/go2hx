package stdgo._internal.math.bits;
import stdgo._internal.unsafe.Unsafe;
function reverseBytes(_x:stdgo.GoUInt):stdgo.GoUInt {
        if (true) {
            return (stdgo._internal.math.bits.Bits_reverseBytes32.reverseBytes32((_x : stdgo.GoUInt32)) : stdgo.GoUInt);
        };
        return (stdgo._internal.math.bits.Bits_reverseBytes64.reverseBytes64((_x : stdgo.GoUInt64)) : stdgo.GoUInt);
    }
