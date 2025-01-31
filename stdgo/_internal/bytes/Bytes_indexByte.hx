package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function indexByte(_b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt {
        return stdgo._internal.internal.bytealg.Bytealg_indexByte.indexByte(_b, _c);
    }
