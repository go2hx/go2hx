package stdgo._internal.internal.pkgbits;
function _assert(_b:Bool):Void {
        if (!_b) {
            throw stdgo.Go.toInterface(("assertion failed" : stdgo.GoString));
        };
    }
