package stdgo._internal.encoding.json;
function _nonSpace(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        for (__8 => _c in _b) {
            if (!stdgo._internal.encoding.json.Json__isSpace._isSpace(_c)) {
                return true;
            };
        };
        return false;
    }