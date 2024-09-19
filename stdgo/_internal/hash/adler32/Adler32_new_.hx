package stdgo._internal.hash.adler32;
function new_():stdgo._internal.hash.Hash_Hash32.Hash32 {
        var _d = stdgo.Go.pointer(((0 : stdgo.GoUInt32) : stdgo._internal.hash.adler32.Adler32_T_digest.T_digest));
        _d.value.reset(_d);
        return stdgo.Go.asInterface(_d);
    }
