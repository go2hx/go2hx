package stdgo._internal.net.netip;
function _leUint16(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 {
        var __blank__ = _b[(1 : stdgo.GoInt)];
        return ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt16) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt16);
    }
