package stdgo._internal.hash.adler32;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function new_():stdgo._internal.hash.Hash_Hash32.Hash32 {
        var _d = stdgo.Go.pointer(((0 : stdgo.GoUInt32) : stdgo._internal.hash.adler32.Adler32_T_digest.T_digest));
        @:isptr (_d : stdgo._internal.hash.adler32.Adler32_T_digestPointer.T_digestPointer).reset();
        return stdgo.Go.asInterface(_d);
    }
