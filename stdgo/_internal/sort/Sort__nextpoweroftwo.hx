package stdgo._internal.sort;
function _nextPowerOfTwo(_length:stdgo.GoInt):stdgo.GoUInt {
        var _shift = (stdgo._internal.math.bits.Bits_len.len((_length : stdgo.GoUInt)) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/sort/sort.go#L74"
        return ((1u32 : stdgo.GoUInt) << _shift : stdgo.GoUInt);
    }
