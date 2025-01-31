package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function hasPrefix(_s:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>):Bool {
        return (((_s.length) >= (_prefix.length) : Bool) && stdgo._internal.bytes.Bytes_equal.equal((_s.__slice__((0 : stdgo.GoInt), (_prefix.length)) : stdgo.Slice<stdgo.GoUInt8>), _prefix) : Bool);
    }
