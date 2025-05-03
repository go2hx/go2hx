package stdgo._internal.crypto.internal.edwards25519;
function _isReduced(_s:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L178"
        if ((_s.length) != ((32 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L179"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L182"
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L183"
                if ((_s[(_i : stdgo.GoInt)] > stdgo._internal.crypto.internal.edwards25519.Edwards25519__scalarminusonebytes._scalarMinusOneBytes[(_i : stdgo.GoInt)] : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L185"
                    return false;
                } else if ((_s[(_i : stdgo.GoInt)] < stdgo._internal.crypto.internal.edwards25519.Edwards25519__scalarminusonebytes._scalarMinusOneBytes[(_i : stdgo.GoInt)] : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L187"
                    return true;
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L190"
        return true;
    }
