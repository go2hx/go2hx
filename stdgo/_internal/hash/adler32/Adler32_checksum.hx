package stdgo._internal.hash.adler32;
function checksum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32.go#L135"
        return (stdgo._internal.hash.adler32.Adler32__update._update((1u32 : stdgo._internal.hash.adler32.Adler32_t_digest.T_digest), _data) : stdgo.GoUInt32);
    }
