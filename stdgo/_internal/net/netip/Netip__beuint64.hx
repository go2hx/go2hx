package stdgo._internal.net.netip;
function _beUint64(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        _b[(7 : stdgo.GoInt)];
        //"file:///home/runner/.go/go1.21.3/src/net/netip/leaf_alts.go#L21"
        return ((((((((_b[(7 : stdgo.GoInt)] : stdgo.GoUInt64) | ((_b[(6 : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(5 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(4 : stdgo.GoInt)] : stdgo.GoUInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
