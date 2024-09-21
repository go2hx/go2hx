package stdgo._internal.math.bits;
function leadingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt {
        return ((32 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_len32.len32(_x) : stdgo.GoInt);
    }
