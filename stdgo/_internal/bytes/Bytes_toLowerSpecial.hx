package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function toLowerSpecial(_c:stdgo._internal.unicode.Unicode_SpecialCase.SpecialCase, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        return stdgo._internal.bytes.Bytes_map_.map_(_c.toLower, _s);
    }
