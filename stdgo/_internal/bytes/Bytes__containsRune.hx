package stdgo._internal.bytes;
function _containsRune(_s:stdgo.GoString, _r:stdgo.GoInt32):Bool {
        for (__0 => _c in _s) {
            if (_c == (_r)) {
                return true;
            };
        };
        return false;
    }
