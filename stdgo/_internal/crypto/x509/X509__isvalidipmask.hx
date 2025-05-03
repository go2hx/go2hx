package stdgo._internal.crypto.x509;
function _isValidIPMask(_mask:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _seenZero = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L462"
        for (__1 => _b in _mask) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L463"
            if (_seenZero) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L464"
                if (_b != ((0 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L465"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L468"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L471"
            {
                final __value__ = _b;
                if (__value__ == ((0 : stdgo.GoUInt8)) || __value__ == ((128 : stdgo.GoUInt8)) || __value__ == ((192 : stdgo.GoUInt8)) || __value__ == ((224 : stdgo.GoUInt8)) || __value__ == ((240 : stdgo.GoUInt8)) || __value__ == ((248 : stdgo.GoUInt8)) || __value__ == ((252 : stdgo.GoUInt8)) || __value__ == ((254 : stdgo.GoUInt8))) {
                    _seenZero = true;
                } else if (__value__ == ((255 : stdgo.GoUInt8))) {} else {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L476"
                    return false;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L480"
        return true;
    }
