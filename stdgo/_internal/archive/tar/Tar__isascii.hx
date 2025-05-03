package stdgo._internal.archive.tar;
function _isASCII(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L22"
        for (__1 => _c in _s) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L23"
            if (((_c >= (128 : stdgo.GoInt32) : Bool) || (_c == (0 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L24"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L27"
        return true;
    }
