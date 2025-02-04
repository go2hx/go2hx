package stdgo._internal.math.bits;
function trailingZeros(_x:stdgo.GoUInt):stdgo.GoInt {
        if (true) {
            return stdgo._internal.math.bits.Bits_trailingzeros32.trailingZeros32((_x : stdgo.GoUInt32));
        };
        return stdgo._internal.math.bits.Bits_trailingzeros64.trailingZeros64((_x : stdgo.GoUInt64));
    }
