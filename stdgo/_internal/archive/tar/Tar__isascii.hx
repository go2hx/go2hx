package stdgo._internal.archive.tar;
function _isASCII(_s:stdgo.GoString):Bool {
        for (__1 => _c in _s) {
            if (((_c >= (128 : stdgo.GoInt32) : Bool) || (_c == (0 : stdgo.GoInt32)) : Bool)) {
                return false;
            };
        };
        return true;
    }
