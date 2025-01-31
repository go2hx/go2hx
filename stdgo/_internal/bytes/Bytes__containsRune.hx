package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function _containsRune(_s:stdgo.GoString, _r:stdgo.GoInt32):Bool {
        for (__0 => _c in _s) {
            if (_c == (_r)) {
                return true;
            };
        };
        return false;
    }
