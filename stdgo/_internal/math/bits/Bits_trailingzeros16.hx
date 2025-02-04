package stdgo._internal.math.bits;
function trailingZeros16(_x:stdgo.GoUInt16):stdgo.GoInt {
        if (_x == ((0 : stdgo.GoUInt16))) {
            return (16 : stdgo.GoInt);
        };
        return (stdgo._internal.math.bits.Bits__debruijn32tab._deBruijn32tab[(((((_x & -_x : stdgo.GoUInt16) : stdgo.GoUInt32) * (125613361u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >> (27i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoInt);
    }
