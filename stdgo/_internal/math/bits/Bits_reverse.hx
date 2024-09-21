package stdgo._internal.math.bits;
function reverse(_x:stdgo.GoUInt):stdgo.GoUInt {
        if (true) {
            return (stdgo._internal.math.bits.Bits_reverse32.reverse32((_x : stdgo.GoUInt32)) : stdgo.GoUInt);
        };
        return (stdgo._internal.math.bits.Bits_reverse64.reverse64((_x : stdgo.GoUInt64)) : stdgo.GoUInt);
    }
