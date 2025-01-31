package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function replaceAll(_s:stdgo.Slice<stdgo.GoUInt8>, _old:stdgo.Slice<stdgo.GoUInt8>, _new:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        return stdgo._internal.bytes.Bytes_replace.replace(_s, _old, _new, (-1 : stdgo.GoInt));
    }
