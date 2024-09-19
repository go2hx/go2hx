package stdgo._internal.regexp;
function _isSingleBytes(_s:stdgo.GoString):Bool {
        for (__0 => _c in _s) {
            if ((_c >= (128 : stdgo.GoInt32) : Bool)) {
                return false;
            };
        };
        return true;
    }
