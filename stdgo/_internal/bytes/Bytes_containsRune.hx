package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function containsRune(_b:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):Bool {
        return (stdgo._internal.bytes.Bytes_indexRune.indexRune(_b, _r) >= (0 : stdgo.GoInt) : Bool);
    }
