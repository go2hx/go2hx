package stdgo._internal.compress.flate;
function _hash4(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        return ((((((((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32)) * (506832829u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (15i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
