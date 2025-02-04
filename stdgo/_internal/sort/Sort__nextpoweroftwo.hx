package stdgo._internal.sort;
function _nextPowerOfTwo(_length:stdgo.GoInt):stdgo.GoUInt {
        var _shift = (stdgo._internal.math.bits.Bits_len.len((_length : stdgo.GoUInt)) : stdgo.GoUInt);
        return ((1u32 : stdgo.GoUInt) << _shift : stdgo.GoUInt);
    }
