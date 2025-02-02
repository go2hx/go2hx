package stdgo._internal.net.netip;
function _bePutUint32(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt32):Void {
        var __blank__ = _b[(3 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _b[(1 : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _b[(2 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _b[(3 : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
    }
