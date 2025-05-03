package stdgo._internal.bytes;
function _containsRune(_s:stdgo.GoString, _r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L935"
        for (__0 => _c in _s) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L936"
            if (_c == (_r)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L937"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L940"
        return false;
    }
