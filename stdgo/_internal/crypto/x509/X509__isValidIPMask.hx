package stdgo._internal.crypto.x509;
function _isValidIPMask(_mask:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _seenZero = (false : Bool);
        for (__1 => _b in _mask) {
            if (_seenZero) {
                if (_b != ((0 : stdgo.GoUInt8))) {
                    return false;
                };
                continue;
            };
            {
                final __value__ = _b;
                if (__value__ == ((0 : stdgo.GoUInt8)) || __value__ == ((128 : stdgo.GoUInt8)) || __value__ == ((192 : stdgo.GoUInt8)) || __value__ == ((224 : stdgo.GoUInt8)) || __value__ == ((240 : stdgo.GoUInt8)) || __value__ == ((248 : stdgo.GoUInt8)) || __value__ == ((252 : stdgo.GoUInt8)) || __value__ == ((254 : stdgo.GoUInt8))) {
                    _seenZero = true;
                } else if (__value__ == ((255 : stdgo.GoUInt8))) {} else {
                    return false;
                };
            };
        };
        return true;
    }
