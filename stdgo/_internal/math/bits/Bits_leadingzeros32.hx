package stdgo._internal.math.bits;
function leadingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L34"
        return ((32 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_len32.len32(_x) : stdgo.GoInt);
    }
