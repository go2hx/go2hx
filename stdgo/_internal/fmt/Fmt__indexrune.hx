package stdgo._internal.fmt;
function _indexRune(_s:stdgo.GoString, _r:stdgo.GoInt32):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L469"
        for (_i => _c in _s) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L470"
            if (_c == (_r)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L471"
                return _i;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L474"
        return (-1 : stdgo.GoInt);
    }
