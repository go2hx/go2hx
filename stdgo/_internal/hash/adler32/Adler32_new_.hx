package stdgo._internal.hash.adler32;
function new_():stdgo._internal.hash.Hash_hash32.Hash32 {
        var _d = stdgo.Go.pointer(((0 : stdgo.GoUInt32) : stdgo._internal.hash.adler32.Adler32_t_digest.T_digest));
        @:isptr (_d : stdgo._internal.hash.adler32.Adler32_t_digestpointer.T_digestPointer).reset();
        return stdgo.Go.asInterface(_d);
    }
