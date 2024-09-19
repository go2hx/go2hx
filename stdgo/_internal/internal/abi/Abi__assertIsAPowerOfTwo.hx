package stdgo._internal.internal.abi;
function _assertIsAPowerOfTwo(_x:stdgo.GoUInt8):Void {
        if (_x == ((0 : stdgo.GoUInt8))) {
            throw stdgo.Go.toInterface(("Zero is not a power of two" : stdgo.GoString));
        };
        if ((_x & -_x : stdgo.GoUInt8) == (_x)) {
            return;
        };
        throw stdgo.Go.toInterface(("Not a power of two" : stdgo.GoString));
    }
