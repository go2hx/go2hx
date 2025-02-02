package stdgo._internal.mime;
function _hasNonWhitespace(_s:stdgo.GoString):Bool {
        for (__0 => _b in _s) {
            {
                final __value__ = _b;
                if (__value__ == ((32 : stdgo.GoInt32)) || __value__ == ((9 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32)) || __value__ == ((13 : stdgo.GoInt32))) {} else {
                    return true;
                };
            };
        };
        return false;
    }
