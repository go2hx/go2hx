package stdgo._internal.internal.pkgbits;
function _assert(_b:Bool):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/support.go#L10"
        if (!_b) {
            //"file:///home/runner/.go/go1.21.3/src/internal/pkgbits/support.go#L11"
            throw stdgo.Go.toInterface(("assertion failed" : stdgo.GoString));
        };
    }
