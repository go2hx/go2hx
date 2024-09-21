package stdgo._internal.math.bits;
function trailingZeros(_x:stdgo.GoUInt):stdgo.GoInt {
        if (true) {
            return stdgo._internal.math.bits.Bits_trailingZeros32.trailingZeros32((_x : stdgo.GoUInt32));
        };
        return stdgo._internal.math.bits.Bits_trailingZeros64.trailingZeros64((_x : stdgo.GoUInt64));
    }
