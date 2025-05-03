package stdgo._internal.hash.maphash;
function _rthash(_buf:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.GoUInt64):stdgo.GoUInt64 {
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash_purego.go#L15"
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash_purego.go#L16"
            return _seed;
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash_purego.go#L18"
        return stdgo._internal.hash.maphash.Maphash__wyhash._wyhash(_buf, _seed, (_buf.length : stdgo.GoUInt64));
    }
