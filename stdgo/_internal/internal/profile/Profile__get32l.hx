package stdgo._internal.internal.profile;
function _get32l(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; } {
        if (((_b.length) < (4 : stdgo.GoInt) : Bool)) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : (null : stdgo.Slice<stdgo.GoUInt8>) };
        };
        return { _0 : ((((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt64) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : (_b.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) };
    }
