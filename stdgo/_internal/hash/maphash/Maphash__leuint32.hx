package stdgo._internal.hash.maphash;
function _leUint32(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        _b[(3 : stdgo.GoInt)];
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash_purego.go#L97"
        return ((((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
