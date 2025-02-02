package stdgo._internal.net.netip;
function _lePutUint16(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt16):Void {
        var __blank__ = _b[(1 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
        _b[(1 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
    }
