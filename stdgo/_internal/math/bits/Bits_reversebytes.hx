package stdgo._internal.math.bits;
function reverseBytes(_x:stdgo.GoUInt):stdgo.GoUInt {
        if (true) {
            return (stdgo._internal.math.bits.Bits_reversebytes32.reverseBytes32((_x : stdgo.GoUInt32)) : stdgo.GoUInt);
        };
        return (stdgo._internal.math.bits.Bits_reversebytes64.reverseBytes64((_x : stdgo.GoUInt64)) : stdgo.GoUInt);
    }
