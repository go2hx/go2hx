package stdgo._internal.math.bits;
import stdgo._internal.unsafe.Unsafe;
function onesCount(_x:stdgo.GoUInt):stdgo.GoInt {
        if (true) {
            return stdgo._internal.math.bits.Bits_onesCount32.onesCount32((_x : stdgo.GoUInt32));
        };
        return stdgo._internal.math.bits.Bits_onesCount64.onesCount64((_x : stdgo.GoUInt64));
    }
