package stdgo._internal.math.bits;
import stdgo._internal.unsafe.Unsafe;
function rotateLeft(_x:stdgo.GoUInt, _k:stdgo.GoInt):stdgo.GoUInt {
        if (true) {
            return (stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((_x : stdgo.GoUInt32), _k) : stdgo.GoUInt);
        };
        return (stdgo._internal.math.bits.Bits_rotateLeft64.rotateLeft64((_x : stdgo.GoUInt64), _k) : stdgo.GoUInt);
    }
