package stdgo._internal.hash.adler32;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function checksum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        return (stdgo._internal.hash.adler32.Adler32__update._update((1u32 : stdgo._internal.hash.adler32.Adler32_T_digest.T_digest), _data) : stdgo.GoUInt32);
    }
