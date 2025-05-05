package stdgo._internal.internal.abi;
function _assertIsAPowerOfTwo(_x:stdgo.GoUInt8):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/compiletype.go#L60"
        if (_x == ((0 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/abi/compiletype.go#L61"
            throw stdgo.Go.toInterface(("Zero is not a power of two" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/compiletype.go#L63"
        if ((_x & -_x : stdgo.GoUInt8) == (_x)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/abi/compiletype.go#L64"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/compiletype.go#L66"
        throw stdgo.Go.toInterface(("Not a power of two" : stdgo.GoString));
    }
