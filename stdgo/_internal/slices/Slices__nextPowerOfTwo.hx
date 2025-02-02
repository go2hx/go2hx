package stdgo._internal.slices;
function _nextPowerOfTwo(_length:stdgo.GoInt):stdgo.GoUInt {
        return ((1u32 : stdgo.GoUInt) << stdgo._internal.math.bits.Bits_len.len((_length : stdgo.GoUInt)) : stdgo.GoUInt);
    }
