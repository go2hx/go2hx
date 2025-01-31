package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function trimPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_s, _prefix)) {
            return (_s.__slice__((_prefix.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
