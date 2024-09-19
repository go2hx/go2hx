package stdgo._internal.mime;
function _needsEncoding(_s:stdgo.GoString):Bool {
        for (__0 => _b in _s) {
            if (((((_b < (32 : stdgo.GoInt32) : Bool) || (_b > (126 : stdgo.GoInt32) : Bool) : Bool)) && (_b != (9 : stdgo.GoInt32)) : Bool)) {
                return true;
            };
        };
        return false;
    }
