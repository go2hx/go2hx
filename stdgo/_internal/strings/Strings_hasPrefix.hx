package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Bool {
        return (((_s.length) >= (_prefix.length) : Bool) && ((_s.__slice__((0 : stdgo.GoInt), (_prefix.length)) : stdgo.GoString) == _prefix) : Bool);
    }
