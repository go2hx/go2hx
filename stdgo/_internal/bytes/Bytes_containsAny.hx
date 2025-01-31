package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function containsAny(_b:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):Bool {
        return (stdgo._internal.bytes.Bytes_indexAny.indexAny(_b, _chars?.__copy__()) >= (0 : stdgo.GoInt) : Bool);
    }
