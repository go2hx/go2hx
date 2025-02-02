package stdgo._internal.hash.maphash;
function _r3(_p:stdgo.Slice<stdgo.GoUInt8>, _k:stdgo.GoUInt64):stdgo.GoUInt64 {
        return (((((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (((_p[((_k >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64) | (_p[((_k - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)] : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
