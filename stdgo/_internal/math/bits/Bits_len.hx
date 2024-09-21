package stdgo._internal.math.bits;
function len(_x:stdgo.GoUInt):stdgo.GoInt {
        if (true) {
            return stdgo._internal.math.bits.Bits_len32.len32((_x : stdgo.GoUInt32));
        };
        return stdgo._internal.math.bits.Bits_len64.len64((_x : stdgo.GoUInt64));
    }
