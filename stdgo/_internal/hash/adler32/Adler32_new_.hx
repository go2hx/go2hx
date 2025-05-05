package stdgo._internal.hash.adler32;
function new_():stdgo._internal.hash.Hash_hash32.Hash32 {
        var _d = stdgo.Go.pointer(((0 : stdgo.GoUInt32) : stdgo._internal.hash.adler32.Adler32_t_digest.T_digest));
        //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32.go#L46"
        (_d : stdgo._internal.hash.adler32.Adler32_t_digestpointer.T_digestPointer).reset();
        //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32.go#L47"
        return stdgo.Go.asInterface(_d);
    }
