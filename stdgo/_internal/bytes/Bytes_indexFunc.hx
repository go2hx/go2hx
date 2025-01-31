package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function indexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):stdgo.GoInt {
        return stdgo._internal.bytes.Bytes__indexFunc._indexFunc(_s, _f, true);
    }
