package stdgo._internal.bytes;
function _indexBytePortable(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L100"
        for (_i => _b in _s) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L101"
            if (_b == (_c)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L102"
                return _i;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L105"
        return (-1 : stdgo.GoInt);
    }
