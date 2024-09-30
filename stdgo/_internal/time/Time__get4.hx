package stdgo._internal.time;
function _get4(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        if (((_b.length) < (4 : stdgo.GoInt) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        return ((((_b[(0 : stdgo.GoInt)] : stdgo.GoInt) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoInt) << (24i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
    }
