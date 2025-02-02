package stdgo._internal.crypto.ecdh;
function _isZero(_a:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _acc:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        for (__0 => _b in _a) {
            _acc = (_acc | (_b) : stdgo.GoUInt8);
        };
        return _acc == ((0 : stdgo.GoUInt8));
    }
