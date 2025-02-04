package stdgo._internal.runtime.internal.sys;
function trailingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt {
        if (_x == ((0u32 : stdgo.GoUInt32))) {
            return (32 : stdgo.GoInt);
        };
        return (stdgo._internal.runtime.internal.sys.Sys__debruijn32tab._deBruijn32tab[(((((_x & -_x : stdgo.GoUInt32)) * (125613361u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >> (27i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoInt);
    }
