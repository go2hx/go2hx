package stdgo._internal.math.bits;
function onesCount(_x:stdgo.GoUInt):stdgo.GoInt {
        if (true) {
            return stdgo._internal.math.bits.Bits_onescount32.onesCount32((_x : stdgo.GoUInt32));
        };
        return stdgo._internal.math.bits.Bits_onescount64.onesCount64((_x : stdgo.GoUInt64));
    }
