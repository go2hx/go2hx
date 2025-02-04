package stdgo._internal.compress.flate;
function _bulkHash4(_b:stdgo.Slice<stdgo.GoUInt8>, _dst:stdgo.Slice<stdgo.GoUInt32>):Void {
        if (((_b.length) < (4 : stdgo.GoInt) : Bool)) {
            return;
        };
        var _hb = ((((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        _dst[(0 : stdgo.GoInt)] = (((_hb * (506832829u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (15i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        var _end = (((_b.length) - (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < _end : Bool)) {
                _hb = (((_hb << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | (_b[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
_dst[(_i : stdgo.GoInt)] = (((_hb * (506832829u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (15i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
                _i++;
            };
        };
    }
