package stdgo._internal.bytes;
function _indexBytePortable(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt {
        for (_i => _b in _s) {
            if (_b == (_c)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
