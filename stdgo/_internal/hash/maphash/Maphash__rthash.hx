package stdgo._internal.hash.maphash;
function _rthash(_buf:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.GoUInt64):stdgo.GoUInt64 {
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            return _seed;
        };
        return stdgo._internal.hash.maphash.Maphash__wyhash._wyhash(_buf, _seed, (_buf.length : stdgo.GoUInt64));
    }
